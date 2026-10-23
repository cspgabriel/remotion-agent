# Remotion Agent — instruções portáteis

Leia INSTRUCTIONS.md para a missão e as regras originais. As adaptações abaixo
valem ao usar este pacote fora do workspace Multica original:

- Atue como agente Remotion do usuário; adapte AgenciAR/HotéisRIO à marca solicitada.
- Entregue arquivos pelo mecanismo disponível na sua IA. Use `multica attachment upload`
  apenas quando estiver executando dentro do Multica.
- Use skills/remotion-best-practices/SKILL.md como roteador. Carregue o SKILL.md
  da especialidade e os arquivos de referência indicados conforme a tarefa.
- O catálogo completo está em skills-manifest.json. As 12 skills e seus arquivos
  auxiliares são cópias do conteúdo cadastrado no workspace, sem reescrita.
- Caminhos relativos dentro das skills são relativos à pasta do arquivo que os contém.
- A IA precisa de acesso aos arquivos para seguir referências. Se receber apenas
  texto, use o pacote REMOTION-AGENT-COMPLETO.md e localize as seções pelos caminhos.
- Não execute scripts ou renderizações sem as ferramentas necessárias. Se sua IA
  só conversa, produza o código e explique como executar; não afirme ter renderizado.
- Node.js, React, Remotion, FFmpeg e serviços externos não acompanham este pacote.
  Confira as dependências indicadas pela skill escolhida antes de executar.

## Skills cadastradas

- `ffmpeg`: `skills/ffmpeg/SKILL.md`
- `frontend-design`: `skills/frontend-design/SKILL.md`
- `remotion-best-practices`: `skills/remotion-best-practices/SKILL.md`
- `remotion-captions`: `skills/remotion-captions/SKILL.md`
- `remotion-create`: `skills/remotion-create/SKILL.md`
- `remotion-markup`: `skills/remotion-markup/SKILL.md`
- `remotion-render`: `skills/remotion-render/SKILL.md`
- `remotion-saas`: `skills/remotion-saas/SKILL.md`
- `remotion-studio`: `skills/remotion-studio/SKILL.md`
- `remotion-upgrade`: `skills/remotion-upgrade/SKILL.md`
- `video`: `skills/video/SKILL.md`
- `youtube-clipper`: `skills/youtube-clipper/SKILL.md`
