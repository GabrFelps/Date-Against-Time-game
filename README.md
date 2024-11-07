# Date Against Time

**Date Against Time** é um jogo arcade 2D desenvolvido em Godot, com foco em ação casual e mecânicas simples. O jogo combina reflexos rápidos e desvio de obstáculos, oferecendo uma experiência cativante e desafiadora, ideal para sessões de jogo rápidas.

## Principais Mecânicas

- **Controle Simples de Movimento**: O jogador controla um jovem tentando não chegar atrasado para o encontro, usando comandos básicos, focados em desviar de obstáculos em tempo real, tornando o jogo acessível e intuitivo.

- **Obstáculos Dinâmicos**: 
    - **Fantasmas da Insegurança**: Aparecem de forma aleatória e, ao colidir com o jogador, aumentam sua barra de vergonha e reduzem a velocidade, exigindo uma adaptação rápida e planejamento estratégico.
    - **Mensagens Rápidas**: Após certo tempo, surgem mensagens da pretendente que se movem em direção ao jogador. Uma colisão com essas mensagens resulta em game over, adicionando uma camada de pressão na jogabilidade.

- **Sistema de Progressão e Feedback Visual**: A barra de vergonha atua como feedback visual da condição do jogador, aumentando a cada colisão com obstáculos e indicando o progresso para o game over, caso atinja o limite.

## Aspectos Técnicos

- **Engine**: Desenvolvido na **Godot Game Engine** com **GDScript** para lógica e controle de objetos no jogo. O GDScript possibilita uma atualização rápida e otimização das funcionalidades, como colisões, temporizadores e feedback visual da barra de vergonha.
  
- **Assets e Animações**: 
    - Os assets de pixel art foram criados no **Piskel** e integram-se facilmente ao Godot, proporcionando um estilo visual coeso. 
    - Animações são tratadas dentro do Godot para garantir fluidez e uma experiência visual alinhada à estética 2D.

- **Gerenciamento de Tarefas e Controle de Versão**: 
    - **Notion** foi utilizado para organizar tarefas e acompanhar o desenvolvimento, garantindo um pipeline eficiente.
    - **GitHub e Git** serviu para o controle de versão e backups, possibilitando um histórico robusto de alterações.

## Desempenho e Escalabilidade

O jogo foi estruturado para manter um desempenho fluido mesmo com a adição de novos obstáculos e incrementos de dificuldade. A engine Godot permite escalabilidade e ajustes de parâmetros para que novos inimigos e mecânicas possam ser incorporados em atualizações futuras, mantendo o desempenho otimizado.
