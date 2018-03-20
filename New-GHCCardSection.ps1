function New-GHCCardSection {
    [CmdletBinding()]
    param (
        # Header
        [Parameter(Mandatory = $false,
            Position = 0)]
        [string]
        $Header,
        # Widgets
        [Parameter(Mandatory = $true,
            Position = 1)]
        [scriptblock]
        $Widgets
    )

    begin {
    }

    process {
        $Section = @{'sections' = @(invoke-command -ScriptBlock $widgets)}
        if ($Header) {
            $Section.header = $header
        }
        $section
    }

    end {
    }
}
