function New-GHCTextMessage {
    [CmdletBinding()]
    param (
        # Text Message
        [Parameter(Mandatory)]
        [string]
        $Message
    )

    begin {
    }

    process {
        $TextMessage = @{text = $message}
        $TextMessage
    }

    end {
    }
}
