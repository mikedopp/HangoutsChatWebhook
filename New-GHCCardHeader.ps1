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
            $header.header.imageUrl = $ImageURL
        }
        if ($ImageStyle) {
            $header.header.imageStyle = $ImageStyle.ToUpper()
        }
        $Header
    }

    end {
    }
}
