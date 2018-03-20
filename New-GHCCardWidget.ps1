function New-GHCCardWidget {
    [CmdletBinding()]
    param (
        # Widgets
        [Parameter(Mandatory = $True,
            Position = 0)]
        [scriptblock]
        $Content,
        # Header
        [Parameter(Mandatory = $false)]
        [String]
        $Header
    )

    begin {
    }

    process {
        $widgets = @{'widgets' = @(
                Invoke-Command $Content
            )
        }
        if ($Header) {
            $widgets.header = $header
        }

        $widgets
    }

    end {
    }
}


