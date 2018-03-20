function New-GHCWidgetKeyValue {
    [CmdletBinding()]
    param (
        # TopLabel
        [Parameter(Mandatory = $true,
            Position = 0)]
        [string]
        $TopLabel,
        # Content
        [Parameter(Mandatory = $true,
            Position = 1)]
        [string]
        $Content,
        # BottomLabel
        [Parameter(Mandatory = $false,
            Position = 2)]
        [string]
        $BottomLabel,
        # ContentMultiline
        [Parameter(Mandatory = $false,
            Position = 3)]
        [switch]
        $ContentMultiline,
        # OnClickURL
        [Parameter(Mandatory = $false,
            Position = 4)]
        [string]
        $OnClickURL
    )

    begin {
    }

    process {
        $keyValue = @{'keyValue' = @{
                'topLabel'         = $TopLabel
                'content'          = $Content
                'contentMultiline' = $ContentMultiline.IsPresent

            }
        }
        if ($BottomLabel) {
            $keyValue.keyValue.bottomLabel = $BottomLabel
        }
        if ($OnClickURL) {
            $keyValue.keyValue.onClick.openLink.url = $OnClickURL
        }
        $keyValue
    }

    end {
    }
}
