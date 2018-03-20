function New-GHCWidgetImage {
    [CmdletBinding()]
    param (
        # Header Text
        [Parameter(Mandatory = $true,
            Position = 0)]
        [string]
        $URL,
        # Hyperlink URL
        [Parameter(Mandatory = $false,
            Position = 1)]
        [string]
        $OnClickURL
    )

    begin {
    }

    process {
        $image = @{'image' = @{
                'imageUrl' = $url
            }
        }
        if ($OnClickURL) {
            $image.image.onClick = @{
                "openLink" = @{
                    "url" = $OnClickURL
                }
            }
        }
        $image
    }

    end {
    }
}
