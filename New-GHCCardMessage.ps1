function New-GHCCardMessage {
    [CmdletBinding()]
    param (
        # Endpoint
        [Parameter(Mandatory)]
        [scriptblock]
        $Content
    )

    begin {
    }

    process {
        $Card = @{'cards' = @(Invoke-Command -ScriptBlock $Content)}
        $Card
    }

    end {
    }
}
