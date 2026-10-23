# Remotion Agent

Agente para criar, editar, pré-visualizar e renderizar vídeos programáticos com Remotion (React): reels, anúncios, legendas animadas e vídeos de produto.

## Conteúdo

- `INSTRUCTIONS.md`: instruções originais do agente.
- `agent.json`: configuração portátil e nomes das skills recomendadas.
- `import.ps1`: cria o agente em um workspace Multica ao qual sua sessão tenha acesso.

A exportação não inclui credenciais, identificadores privados, configurações de máquina, históricos ou arquivos das skills. As referências à AgenciAR e HotéisRIO nas instruções são personalizações do agente original; adapte-as à sua marca.

## Importar no Multica

Use o CLI autenticado no workspace de destino. Consulte os runtimes disponíveis:

```powershell
multica --workspace-id <WORKSPACE_ID> runtime list --output json
./import.ps1 -WorkspaceId <WORKSPACE_ID> -RuntimeId <RUNTIME_ID>
```

O script cria um novo agente visível ao workspace e preserva qualquer agente existente. Cada execução cria uma nova cópia. Depois da criação, instale as skills desejadas no workspace e vincule-as ao agente. Os nomes recomendados estão em `agent.json`; os arquivos dessas skills não são distribuídos neste repositório.

O modelo usa o padrão do runtime escolhido. A importação depende das permissões da sua sessão Multica.

## Referências

- [Remotion](https://github.com/remotion-dev/remotion)
- [Documentação](https://www.remotion.dev/docs)

## Licença

MIT para os arquivos deste repositório. Remotion, skills e serviços de terceiros mantêm suas próprias licenças e condições.
