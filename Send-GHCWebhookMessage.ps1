function Send-GHCWebhookMessage {
    [CmdletBinding()]
    param (
        # uri
        [Parameter(Mandatory)]
        [string]
        $URI,
        # Message
        [Parameter(Mandatory)]
        [hashtable]
        $Message
    )

    begin {
    }

    process {
        $Message = ConvertTo-Json $Message -Depth 50
        Invoke-WebRequest -Uri $URI -Method POST -Headers @{"Content-Type" = 'Application/json; charset=UTF-8'} -Body $Message
    }

    end {
    }
}
