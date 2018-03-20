function New-GHCCardSection {
    [CmdletBinding()]
    param (
        # Widgets
        [Parameter(Mandatory = $false,
            Position = 0)]
        [scriptblock]
        $Content
    )

    begin {
    }

    process {
        $Section = @{'sections' = @(
                invoke-command -ScriptBlock $Content
            )
        }
        $section
    }

    end {
    }
}
