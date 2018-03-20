function New-GHCCardHeader {
    [CmdletBinding()]
    param (
        # Header Text
        [Parameter(Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true)]
        [string]
        $Title,
        # Subtitle
        [Parameter(Mandatory = $false,
            Position = 1,
            ValueFromPipeline = $true)]
        [string]
        $Subtitle,
        # ImageURL
        [Parameter(Mandatory = $false,
            Position = 2,
            ValueFromPipeline = $True,
            ParameterSetName = 'image')]
        [ValidatePattern("/^(?:(http[s]?|ftp[s]):\/\/)?([^:\/\s]+)(:[0-9]+)?((?:\/\w+)*\/)([\w\-\.]+[^#?\s]+)([^#\s]*)?(#[\w\-]+)?$/i")]
        [string]
        $ImageURL,
        # Image Style
        [Parameter(Mandatory = $false,
            Position = 3,
            ValueFromPipeline = $true,
            ParameterSetName = 'image')]
        [ValidateSet("Avatar", "Image")]
        [string]
        $ImageStyle
    )

    begin {
    }

    process {
        $Header = @{"header" = @{"title" = $Title}}
        if ($Subtitle) {
            $Header.header.subtitle = $Subtitle
        }
        if ($ImageURL) {
            $header.header.imageurl = $ImageURL
        }
        if ($ImageStyle) {
            $header.header.imagestyle = $ImageStyle
        }
        $Header
    }

    end {
    }
}
