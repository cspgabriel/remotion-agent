param(
    [Parameter(Mandatory = $true)][string]$WorkspaceId,
    [Parameter(Mandatory = $true)][string]$RuntimeId
)
$ErrorActionPreference = 'Stop'
$config = Get-Content -Raw -Encoding utf8 (Join-Path $PSScriptRoot 'agent.json') | ConvertFrom-Json
$cliArgs = @('--workspace-id', $WorkspaceId, 'agent', 'create',
    '--name', $config.name, '--runtime-id', $RuntimeId,
    '--description', $config.description, '--instructions', $config.instructions,
    '--max-concurrent-tasks', [string]$config.max_concurrent_tasks,
    '--permission-mode', 'public_to', '--public-to-workspace', '--output', 'json')
& multica @cliArgs
if ($LASTEXITCODE -ne 0) { throw 'Falha ao criar agente no workspace de destino.' }
Write-Host 'Agente criado. Instale e vincule as skills listadas em agent.json.'
