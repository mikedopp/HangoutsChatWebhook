function New-GHCWidgetTextButton {
    [CmdletBinding()]
    param (
        # Button Text
        [Parameter(Mandatory = $true)]
        [string]
        $Text,
        # Button URL
        [Parameter(Mandatory = $true)]
        [string]
        $OnClickURL
    )

    begin {
    }

    process {
        $textButton = @{buttons = @(
                @{textButton = @{
                        text    = $Text
                        onClick = @{
                            openLink = @{
                                url = $OnClickURL
                            }
                        }
                    }
                }
            )
        }

        $textButton
    }

    end {
    }
}
