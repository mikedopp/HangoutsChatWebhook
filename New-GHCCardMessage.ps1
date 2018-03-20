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
        $Card = @{Cards = @(Invoke-Command -ScriptBlock $Content)}
        $Card
    }

    end {
    }
}
