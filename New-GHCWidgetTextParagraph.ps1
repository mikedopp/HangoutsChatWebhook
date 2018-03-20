function New-GHCWidgetTextParagraph {
    [CmdletBinding()]
    param (
        # Header Text
        [Parameter(Mandatory = $true,
            Position = 0)]
        [string]
        $Text
    )

    begin {
    }

    process {
        $textParagraph = @{'textParagraph' = @{
                'text' = $text
            }
        }
        $textParagraph
    }

    end {
    }
}
