# Remotion Agent — para usar em outras IAs

Instruções do agente Remotion e **12 skills completas**, com os **arquivos auxiliares cadastrados** no workspace original. O conteúdo das skills foi exportado em 23/10/2026, sem atualização das fontes nem reescrita.

## Usar em um chat de IA

1. Baixe [REMOTION-AGENT-COMPLETO.md](REMOTION-AGENT-COMPLETO.md) e envie como arquivo para a IA, se ela aceitar documentos desse tamanho.
2. Cole a mensagem abaixo:

> Use as instruções portáteis de AGENTS.md e a missão de INSTRUCTIONS.md incluídas no arquivo. Atue como meu agente Remotion. Consulte as skills e referências conforme a tarefa. Minha primeira tarefa é: [descreva o vídeo].

O pacote reúne as instruções e todos os arquivos exportados. Alguns modelos não comportam o arquivo inteiro no contexto: nesse caso, envie `AGENTS.md`, `INSTRUCTIONS.md` e apenas a pasta da skill necessária, com suas referências.

## Usar em uma IA com acesso ao projeto

Clone ou baixe este repositório e peça à IA para ler `AGENTS.md` e `INSTRUCTIONS.md`. Os arquivos `CLAUDE.md` e `GEMINI.md` também direcionam para essas instruções. Se sua ferramenta não carregar esses arquivos automaticamente, indique-os no primeiro prompt.

```text
Leia AGENTS.md e INSTRUCTIONS.md. Use skills/remotion-best-practices/SKILL.md
como roteador e carregue as referências necessárias para criar meu vídeo.
```

As skills estão no formato `skills/<nome>/SKILL.md`. Ferramentas com suporte próprio a skills podem receber essas pastas no diretório de skills documentado por elas; preserve os arquivos auxiliares e a estrutura de caminhos.

## O que acompanha

| Arquivo / pasta | Conteúdo |
|---|---|
| `AGENTS.md` | Adaptação para uso em outras IAs e catálogo das skills |
| `INSTRUCTIONS.md` | Instruções originais do agente |
| `REMOTION-AGENT-COMPLETO.md` | Instruções, skills e arquivos auxiliares reunidos para envio a chats |
| `skills/` | Os 12 SKILL.md originais, referências, scripts e exemplos exportados |
| `skills-manifest.json` | Proveniência, inventário e SHA-256 de cada arquivo exportado |
| `licenses/` | Avisos de licença das fontes de terceiros |
| `agent.json`, `import.ps1` | Configuração e importação opcionais para Multica |

### Skills cadastradas

- ffmpeg
- frontend-design
- remotion-best-practices
- remotion-captions
- remotion-create
- remotion-markup
- remotion-render
- remotion-saas
- remotion-studio
- remotion-upgrade
- video
- youtube-clipper

O roteador Remotion contém referências adicionais dentro de sua própria pasta, também preservadas. A exportação representa o conteúdo cadastrado, não uma distribuição completa de cada repositório upstream.

## Execução

Os documentos podem orientar qualquer IA capaz de lê-los. Renderizar vídeos exige uma IA com ferramentas de execução e as dependências do projeto, como Node.js, React, Remotion e FFmpeg. Um chat sem execução pode gerar código e instruções, mas não renderizar sozinho. Serviços externos podem exigir contas e chaves próprias.

As referências a AgenciAR/HotéisRIO foram preservadas nas instruções originais. `AGENTS.md` orienta adaptar a identidade à marca solicitada e entregar arquivos pelo mecanismo disponível em cada IA.

## Multica (opcional)

```powershell
multica --workspace-id <WORKSPACE_ID> runtime list --output json
./import.ps1 -WorkspaceId <WORKSPACE_ID> -RuntimeId <RUNTIME_ID>
```

O script cria apenas a definição do agente no workspace autorizado. Para cadastrar também as skills, importe cada pasta com o mecanismo de importação da plataforma e vincule-as ao agente. Cada execução do script cria uma nova cópia.

## Licenças e créditos

Os arquivos próprios de configuração e adaptação usam MIT. **As skills de terceiros mantêm seus termos originais e não são relicenciadas como MIT por este projeto.** Veja [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md), `licenses/` e as origens em `skills-manifest.json`.

Remotion e suas skills vêm de remotion-dev; os avisos do monorepo são preservados em `licenses/remotion-dev--remotion.txt`. Seu uso segue os termos do fornecedor. Este pacote não inclui o motor Remotion.
