CREATE DATABASE blogtachanka;
drop database blogtachanka;
USE blogtachanka;

 drop table if exists dados_usuario;
drop table if exists usuario;
drop table if exists agentes;

CREATE TABLE usuario(
id int auto_increment,
nome varchar(30),
apelido varchar(20) not null,
email varchar(45) not null,
senha varchar(20) not null,
primary key idusuario(id))
;

create table dados_usuario(
id int auto_increment,
agente_mais_utilizado varchar(30),
agente_mais_banido varchar(30),
fkUsuario int not null,
constraint fkUsuario foreign key (fkUsuario) references	blogtachanka.usuario(id),
constraint pk_dados_usuario primary key  (id, fkUsuario) );

create table agentes(
id int auto_increment,
apelido varchar(30),
lado varchar(10), constraint chklado check (lado in ('atacante','defesa')),
biografia varchar(3000),
especialidade varchar(150),
saude int, 
velocidade int,
dificuldade int,
nome varchar(50),
dtNascimento varchar(60),
local_nasc varchar(50),
primary key idagente(id)

)auto_increment =  1;
drop database blogtachanka;
USE blogtachanka;
CREATE DATABASE blogtachanka;
insert into agentes (id,apelido,lado,especialidade,saude,velocidade,dificuldade,nome,dtNascimento,local_nasc) values
(null,'ace','atacante','Invasão, Antigadget',2,2,1,'Harvard Haugland','15 de março de 1990','Laerdalsoyri, Noruega'),
(null,'alibi','defesa','Intel, Emboscada',1,3,3,'Aria De Luca','15 de dezembro de 1986','Trípoli, Líbia'),
(null,'amaru','atacante','Linha de frente, Controle de mapa',2,2,2,'Azucena Rocío Quispe','6 de maio de 1975','Cojata, Peru'),
(null,'aruni','defesa','Antientrada, Antigadget',3,1,2,'apha tawanroong','9 de agosto 1981','distrito ta phraya,tail]andia'),
(null,'ash','atacante','Invasão Linha de Frente',1,3,2,'Eliza Cohen','24 de dezembro 1990','Jesusalém, Israel'),
(null,'azumi','defesa','Antientrada Suporte',2,2,3,'Kana Fujiwara','6 de setembro 1995','Kyoto, Japão'),
(null,'blackbird','atacante','suporte',2,2,1,'Craig jenson','12 de março 1991','Bellevue,Washington'),
(null,'bandit','defesa','Antientrada Antigadget',1,3,1,'Dominic Brunsmeier','13 de agosto de 1981','Berlim, Alemanha'),
(null,'blitz','atacante','linha de frente controle de mapa',2,2,3,'Elias kotz','2 de abril de 1986','Bremen,Alemanha'),
(null,'castle','defesa','antientrada suporte',2,2,2,'james porter','14 de maio 1987','londres, inglaterra'),
(null,'brava','atacante','antigadget inteligência',1,3,3,'nayara cardoso','10 de janeiro de 1983','curitiba, Brasil'),
(null,'caveira','defesa','inteligência controle de multidão',1,3,3,'tainá ferreira','15 de outubro 1996','rinópolis,brasil'),
(null,'buck','atacante','invasão suporte',2,2,1,'sebastien Cõté','20 de agosto 1987','Montreal, Quebec'),
 (null,'clash','defesa','inteligência controle de mapa',3,1,3,'morowa evans','7 de junho 1988','londres, inglaterra'),
(null,'capitão','atacante','linha de frente controle de mapa',1,3,2,'vicente souza','17 de novembro 1974','Nova Iguaçu,Brasil'),
(null,'doc','defesa','suporte',3,1,1,'gustave kateb','16 de setembro 1984','paris,frança'),
(null,'dokkaebi','atacante','Inteligência Controle de Mapa',1,3,2,'Grace Nam','2 de fevereiro 1994','Seul,Coreia do Sul'),
(null,'echo','defesa','inteligência',2,2,3,'masaru enatsu','31 de outubro 1987','tóquio, japão'),
(null,'finka','atacante','linha de frente',2,2,1,'lera melnikova','7 de junho 1996','gomel, Bielorússia'),
(null,'ela','defesa','controle de multidão emboscada',2,2,1,'elzbieta bosak','25 de novembro 1992','brelávia,polônia'),
(null,'flores','atacante','antigadget',2,2,2,'Santiago Miguel lucero','2 de outubro 1985','buenos Aires, argentina'),
(null,'frost','defesa','antientrada emboscada',2,2,1,'tina lin tsang','4 de maio 1991','vancouver,colúmbia britânica'),
(null,'fuze','atacante','antigadget',3,1,1,'Shuhrat kessikbayev','12 de outubro 1989','samarkand, uzbesquistão'),
(null,'goyo','defesa','antientrada emboscada',2,2,2,'xésar ruiz hernández','20 de junho 1992','culiacán rosales,méxico'),
(null,'glaz','atacante','inteligência',1,3,2,'Timur glazkov','2 de junho de 1993','viadivostok, Rússia'),
(null,'jager','defesa','antigadget suporte',2,2,2,'marius streicher','9 de março 1984','düsseldorf,alemanha'),
(null,'gridlock','atacante','suporte controle de mapa',3,1,1,'tori tallyo fairous','5 de agosto 1987','longreach,central queensland,Austrália'),
(null,'kaid','defesa','antientrada antigadget',3,1,2,'jalal el fassi','26 de junho 1965','aroumd, marrocos'),
(null,'grim','atacante','linha de frente controle de mapa',1,3,1,'charlie tho keng boon','5 de abril 1984','jurong, Singapura'),
(null,'kapkan','defesa','antientrada emboscador',2,2,1,'maxim basuda','14 de maio 1985','korvrov,Rússia'),
(null,'hibana','atacante','invasão linha de frente',1,3,1,'Yumiko imagawa','12 de julho 1989','nagoia, Japão'),
(null,'lesion','defesa','antientrada emboscador',2,2,1,'liu tze long','2 de julho 1979','hong kong,junk bay '),
(null,'iana','atacante','linha de frente inteligência',2,2,1,'nienke meijer','27 de agosto 1988','Katwijk, países baixos'),
(null,'maestro','defesa','antigadget inteligência',3,1,2,'adriano martello','13 de abril 1978','roma, itália'),
(null,'iq','atacante','inteligência suporte',1,3,3,'monika weiss','1 de agosto 1985','leipzig,alemanha'),
(null,'melusi','defesa','inteligência controle de multidão',3,1,1,'thabdiwe ndlovu','16 de julho 1991','lowsburg, áfica do sul'),
(null,'jackal','atacante','inteligência controle de mapa',2,2,3,'ryad Ramirez al-hassar','29 de fevereiro 1974','ceuta,espanha'),
(null,'mira','defesa','inteligência suporte',3,1,3,'elena maría álvarez','18 de novembro 1984','madri,espanha'),
(null,'kali','atacante','antigadget suporte',2,2,2,'jaimini kalimohan shah','21 de agosto 1989','amreli,india'),
(null,'mozzie','defesa','antigadget inteligência',2,2,2,'max goose','15 de fevereiro 1988','portland,austrália'),
(null,'lion','atacante','inteligência controle de mapa', 2,2,1,'olivier flamet','29 de agosto de 1992','toulouse, frança'),
(null,'mute','defesa','antigadget controle de multidão',3,1,1,'mark r. chandar','11 de outubro 1998','york,inglaterra'),
(null,'maverick','atacante','invasão linha de frente',1,3,2,'erik thorn','20 de abril 1987','boston, massachusset'),
(null,'oryx','defesa','suporte',2,2,2,'saif al hadid','3 de julho 1978','azraq,jordânia'),
(null,'montagne','atacante','inteligência supoerte',3,1,3,'gilles touré','11 de outubro 1975','bordeaux, frança'),
(null,'pulse','defesa','inteligência supoerte',1,3,3,'jack estrada','11 de outubro 1991','goldsboro,carolina do norte'),
(null,'nomad','atacante','linha de frente controle de mapa',2,2,3,'sanaa el maktoub','27 de julho 1984','Marrakesh,marrocos'),
(null,'rook','defesa','suporte',3,1,1,'julien nizan','6 de janeiro 1996','tours,frança'),
(null,'nook','atacante','linha de frente controle de mapa',2,2,3,'confidencial','confidencial','confidencial'),
(null,'smoke','defesa','antientrada emboscada',2,2,2,'james poter','14 de maio 1987','londres, inglaterra'),
(null,'osa','atacante','inteligência',3,1,2,'anja katarina jankovic','29 de abril 1996','split, croácia'),
(null,'solis','defesa','inteligência suporte',2,2,3,'ana valentina díaz','18 de setembro 1986','zipaquirá,colômbia'),
(null,' sens','atacante','suporte controle de mapa',1,3,2,'néon ngoma mutombo','3 de março 1993','bruxeles,bélgica'),
(null,'tachanka','defesa','antientrada contole de multidão',3,1,1,'alexsandr senaviev','3 de novembro 1975','são petersburgo,Rússia'),
(null,'sledge','atacante','invasão antigadget',3,1,1,'seamus cowden','2 de abril de 1988','john o groats, escócia'),
(null,'thorn','defesa','antientrada emboscada',2,2,1,'brianna skehan','18 de junho 1995','coundado de kildare,irlanda'),
(null,'thatcher','atacante','antigadget suporte',3,1,1,'mike baker','22 de julho 1967','bideford,inglaterra'),
(null,'thunderbird','defesa','suporte',2,2,1,'mina sky','1° de abril 1990','territorio nakoda'),
(null,'thermite','atacante','invasão suporte',2,2,1,'jordan trace','14 de março 1988','plano texas'),
(null,'valkyrie','defesa','inteligência suporte',2,2,2,'meghan j. castellano','21 de julho 1992','oceanside,califórnia'),
(null,'twitch','atacante','invsão suporte',2,2,2,'emmanuelle pichon','12 de outubri 1995','nacy, frança'),
(null,'vigil','defesa','antigadget controle de multidão',1,3,3,'chul kyung hwa','17 de janeiro 1989','[censurado]'),
(null,'ying','atacante','linha de frente controle de mapa',2,2,2,'siu mei lin','12 de maio 1990','hong kong,central' ),
(null,'wamai','defesa','antigadget emboscada',2,2,2,'ngügi muchoki furha','1° de junho 1995','lamu,quênia'),
(null,'zero','atacante','antigadget inteligência',1,3,1,'samuel leo fisher','8 de agosto 1960','baltimere,maryland'),
(null,'warden','defesa','antigadget inteligência',2,2,2,'collin mckinley','18 de março 1975','louisville, kentucky'),
(null,'zofia','atacante','invasão antigadget',3,1,1,'zofia bosak','28 de janeiro 1990','breslávia');


select * from agentes;

update agentes set biografia =
'“O tiro perfeito, assim como o resgate perfeito, é uma questão de enquadramento.”

Nascido num vilarejo calmo, porém histórico, Haugland desde cedo gozou de elogios e falta de concorrência. Sempre o melhor em tudo o que se propunha a fazer, ele facilmente se via como um cirurgião pediátrico admirado e matriculado na faculdade de medicina. Contudo, logo descobriu que decorar teorias não era para ele e, em lugar disso, optou pelo treinamento de paramédicos para entrar em ação mais rapidamente.
As Forças Armadas Norueguesas o levaram a um novo mundo de realizações. Haugland concluiu o treinamento básico e entrou para a Guarda Nacional da Noruega, onde obteve a reputação de herói. Após o término do serviço obrigatório, ele foi aceito no Forsvarets Spesialkommando e, logo em seguida, participou de um notável resgate de reféns. Como parte de uma operação conjunta com a ONU na Somália, sua tendência a atitudes teatrais e sua natureza impulsiva resultaram no salvamento da vida de Kali. A oferta para se juntar à NIGHTHAVEN rapidamente apareceu.' 
where id = 1 ; -- ace

update agentes set biografia = 
'“Nunca mostre as suas cartas.”

Aria "Alibi" de Luca nasceu em Trípoli, Líbia, e mudou de país com sua família quando tinha três anos de idade. Seu pai gerenciava uma pequena fábrica de armamentos e usava sua extensa rede de contatos por todo o Norte Africano para abrir exportações nesta região. De Luca adquiriu conhecimento e prática com armas italianas por meio dos negócios da família e treinos em estande de tiro. Aos 18 anos, Aria participou de campeonatos europeus organizados pela Confederação Europeia de Tiro (ESC) e ganhou ouro nas divisões de running target 10 m e pistola de ar 10 m. Depois do evento, um recrutador dos Carabinieri convenceu Aria a se juntar à polícia.
O profissionalismo e a precisão no tiro trouxeram notoriedade para de Luca rapidamente e ela passou a combater o crime organizado pelo Raggruppamento Operativo Speciale. Acabou conquistando uma posição no prestigioso Gruppo di Intervento Speciale (G.I.S.) e após uma operação bem-sucedida no Afeganistão, apesar de ter sido separada do seu grupo, ela foi escalada para trabalho secreto contra o crime organizado. Disfarçada de traficante de armas, infiltrou-se na Vinciguerra, uma família de criminosos, e passou vários anos entre eles até arruiná-los de dentro para fora. Naquela época, um jornal vazou uma lista de agentes que estavam trabalhando contra os Vinciguerras, o que forçou o G.I.S. a acelerar o processo.
Depois de trabalhar disfarçada no desmantelamento bem-sucedido da família Vinciguerra, Aria de Luca recebeu um convite para se juntar à Rainbow como agente.'
where id = 2; -- alibi

update agentes set biografia = 
'“Esqueça quem você é e nada mais importará. Você lutará por qualquer um e nunca saberá o porquê.”

A especialista Azucena Rocío “Amaru” Quispe iniciou sua carreira como uma antropóloga preocupada com a preservação do patrimônio cultural coletivo do Peru. Seu vínculo familiar ímpar com exploradores colonialistas do início do século XX deu a ela um conhecimento raro sobre como jornadas de descobrimento podem moldar a consciência cultural e sobre a profunda e eterna perda que ocorre quando uma referência cultural compartilhada é perdida. Ela serviu durante muitos anos na Policía Nacional del Perú (PNP) antes de se reorientar como arqueóloga autônoma com foco na descoberta e categorização de novos sítios arqueológicos. Após capturar uma série de traficantes de antiguidades e de tentativas frustradas de detê-los pela lei comum, ela adotou táticas de guerrilha para tomar importantes descobertas culturais para o Estado peruano à força. Quando o especialista César “Goyo” Ruiz Hernández nos inteirou da presença dela, ela já tinha passado 20 e poucos anos nas selvas do Peru, combatendo cartéis em seus próprios termos.'
where id = 3; -- amaru
update agentes set biografia = 
'“São as crianças que sofrem a cada conflito, mesmo depois que a briga termina.”

Como detetive particular, Aruni descobriu planos secretos de um atentado à bomba em Bangkok, o que chamou a atenção da Polícia Real Tailandesa (RTP). Com seu talento para conectar pistas de incidentes que a princípio não tinham relação, ela conquistou o respeito das agências da lei compostas majoritariamente por homens, porém ficou marcada por inúmeras organizações criminosas.
A RTP ofereceu um cargo de detetive à Aruni na Divisão de Supressão ao Crime (CSD), onde ela desmantelou um esquema de tráfico de pessoas e nada menos que quatro planos de atentados à bomba. A sua capacidade de rastrear e conectar diversos carregamentos de materiais explosivos foi louvada por seus superiores. Infelizmente, a carreira da Aruni na polícia se encerrou quando ela quase morreu durante uma operação em Bangkok.
Depois de se recuperar, Aruni foi abordada por Jaimini “Kali” Shah. O fato de Kali ter acesso a próteses de última geração pode ter influenciado a decisão da Aruni de entrar para Nighthaven.'
where id = 4; -- aruni
update agentes set biografia = 
'“Nunca se pode entender um conflito sem conhecer os dois lados.”

A mãe de Cohen é uma famosa ativista e professora judia, filha de um pai palestino que era professor de Estudos sobre o Oriente Médio. Cohen foi criada em Israel e se destacou nas áreas de matemática e física. Ela se formou em engenharia estrutural na Universidade de Tel Aviv e frequentou a Universidade de Boston durante alguns semestres.
Cohen então se alistou nas Forças de Defesa de Israel (IDF). Após passar por um treinamento rigoroso de 22 meses na unidade da Força aérea de elite, Shaldag, ela serviu durante cinco anos. Qualificada em operações terrestres e aéreas, todas as navegações e reconhecimentos em quaisquer territórios e sob quaisquer condições climáticas, ela foi vital na Operação Orquídea. Após partir para os EUA para trabalhar na SWAT do FBI, Cohen botou em prática seu bacharelado em engenharia e seu talento em resistência estrutural para aprimorar táticas de demolição avançadas e equipamentos. Além de ser fluente em hebraico, Cohen também domina os idiomas árabe, inglês, francês e grego.'
where id = 5; -- ash
update agentes set biografia = 
'“Honra não é a única coisa que vale a pena proteger, mas algumas vezes é tudo o que te resta.”

Criada na cidade de Kyoto, Azami mistura os limites entre ultramoderna e tradicional. Limitada pelas regras rígidas em sua casa, ela encontrou no interior sua autoexpressão através da moda e do combate físico. Seu foco e determinação permitiram que Azami subisse rápido os níveis no aikido. Esta aptidão, assim como sua dedicação no estudo dos idiomas, foi de grande ajuda quando se mudou para Tóquio para estudar na Academia de Polícia Metropolitana.
Enquanto trabalhava como polícia de motocicleta, Azami conseguiu o 3º dan em jiu-jitsu e o 5º dan em aikido, garantindo a ela uma vaga na divisão de segurança do TMPD. Ela se desentendeu com seu sensei ao não atingir o grau de serenidade necessário para progredir. Depois de encarar a suspensão por diversos surtos de violência em serviço, ela decidiu entrar para o setor privado como guarda-costas. Azami trabalhou exclusivamente para Masayuki Yahata em Fukuoka antes de sua morte a levar a restabelecer contato com Yumiko “Hibana” Imagawa.'
where id = 6; -- azami
update agentes set biografia = 
'“Sou motorista. Estamos acostumados a ver ameaças através de uma camada de vidro temperado.”

Ao invés de manter a tradição da família nas ciências médicas, Jenson entrou para a marinha americana. Seus primeiros anos com os escoteiros e com o Corpo de Cadetes da Marinha dos Estados Unidos (esquadrão Blue Angels) solidificaram seu desejo de servir ao país e ver o mundo. Tornar-se militar lhe ofereceu a oportunidade ideal de buscar educação acadêmica enquanto aprendia uma série de habilidades que nutriam seu espírito aventureiro. Após seu primeiro período militar, Jensen focou nos US Navy SEALS como o objetivo máximo de sua carreira. Impelido a obter êxito na profissão e na vida pessoal, escalou o Monte Evereste, participou em campeonatos de vela e navegou ao redor do mundo em muitas ocasiões.'
where id = 7; -- blackbird
update agentes set biografia = 
'“A sobrevivência é uma questão de sincronia. A natureza não dá segundas oportunidades.”

Brunsmeier e seu irmão gêmeo foram criados em um bairro da classe trabalhadora, perto do Muro de Berlim. O pai deles trabalhava na polícia e os incentivou a se juntarem à força. Enquanto trabalhava na Bundespolizei (BPOL), Brunsmeier se destacava em situações de crise. Ele migrou para o Grupo de Aviação a tempo de obter sua habilitação para pilotar helicópteros, mas sua adaptabilidade e experiência com vigilância de fronteiras o assinalaram para operações sigilosas. Ele se infiltrou na organização terrorista Facção Exército Vermelho, onde sua contribuição foi vital para a prisão dos principais membros e para a obtenção de informações valiosas. Enquanto estava infiltrado, Brunsmeier aperfeiçoou seus conhecimentos em táticas de guerrilha e dispositivos explosivos improvisados. Ele desenvolveu protótipos de sua barricada eletrificada e do escudo ajustável. Ele é fluente em alemão, inglês, polonês e turco.'
where id = 8; -- bandit
update agentes set biografia = 
'“Não gosto de tirar fotos. A iluminação nunca fica boa.“

Kötz se graduou na Hermann-Böse-Gymnasium, uma universidade elitista especializada em ciências e estudos linguísticos. Durante a formação, Kötz se destacou como estudante e como atleta. Dentre muitas de suas qualidades, Kötz é multilíngue e pode perceber facilmente as nuances de um idioma. Sua presença imponente e a habilidade com as armas o fazem formidável em ambientes pequenos e apertados. Sua experiência tática garante seu lugar entre a elite da equipe Rainbow. Essas habilidades combinadas com sua formação acadêmica e sua personalidade bondosa fazem com que seja altamente requisitado. Ele transitou com facilidade da posição de soldado da Schnelle Kräfte em Kosovo para a de membro da GSG 9. Kötz se dedica integralmente a fomentar práticas de treinamento e boa vontade entre a Guarda de Segurança Nacional da Índia e a GSG 9.'
where id = 9; -- blitz
update agentes set biografia = 
'“Presta atenção, galera: Ninguém morre hoje. Possíveis perguntas vão ter que esperar.”

Miles Campbell se formou na Cal State LA com bacharelado em Justiça Criminal e imediatamente entrou no LAPD. Recrutado para a SWAT do LAPD, Campbell se destacou trabalhando com suporte tático e incidentes de alto risco. Sua atuação em entradas dinâmicas e deliberadas fez com que logo se tornasse capitão, ao passo que seu excepcional controle de perímetro garantiu sua primeira comenda.
Sempre atento à segurança de sua equipe, Campbell trabalhou incessantemente no aperfeiçoamento de técnicas de defesa, de reforço e de equipamentos. Depois da primeira comenda, ele ainda recebeu várias outras e hoje é um especialista certificado em armas de fogo. Transferido para o FBI, onde treinou com a Polícia Federal Alemã (GSG-9) e atuou como agente de campo, ele posteriormente foi integrado à equipe da SWAT do FBI. Campbell participou de sessões de treinamento intradepartamentais com agências de reforço da lei internacional, incluindo S.A.S e G.I.G.N.'
where id = 10; -- castle
update agentes

set biografia
= '"algumas vezes,só se chega até a justiça através da bala.."

A infância de Brava foi impactada pela morte precoce de seu primo, um espectador inocente em um assalto que deu errado. O envolvimento criminal no incidente motivou Cardoso a buscar sua graduação em direito. Sua impotência para mudar significativamente o sistema como procuradora criminal a deixou desiludida, levando-a a entrar para o Departamento de Polícia Federal (DPF).
Como Agente da Polícia Federal, Cardoso combatia crimes interestaduais e federais, até se tornar Comissária da Polícia Federal. Ela comandava investigações, emitia mandados e, depois de uma recomendação especial do DPF, mudou-se para Brasília para se candidatar ao Comando de Operações Táticas (COT). Após completar as 18 semanas de treinamento de operações aéreas, anfíbias e fluviais, Cardoso entrou para a unidade de intervenções de alto risco do COT
A especialização de Cardoso de resolver sequestros de aeronaves civis chamou a atenção da Capitã Yumiko “Hibana” Imagawa, mas foi seu histórico com desempenho excepcional que garantiu seu lugar na Viperstrike.
'
where id = 11;-- brava
update agentes set biografia = 
'“Nem toda criança escolhe o que quer ser quando crescer”.

Pereira é a sétima entre dez irmãos, filha de mãe viúva e nascida em uma cidade pequena no estado de São Paulo. Após se mudar para o Rio de Janeiro ainda jovem, Pereira foi presa por roubo e recebeu duas opções: internação em um reformatório juvenil ou trabalhar para a Polícia Militar como informante. Anos de trabalho disfarçada em operações com as maiores gangues do Brasil a tornaram uma mestra em técnicas de interrogatório e vigilância. Agora, Pereira é convocada frequentemente para conduzir exercícios de treinamento na organização. Suas habilidades em táticas em ambientes confinados, extração e situações de extremo risco são exemplares. Foram as ações da Pereira durante a crise de segurança do Rio de Janeiro que chamaram a atenção da Rainbow, apesar de diversos relatórios apontarem que ela é uma agente perigosa que toma suas próprias decisões. Além do seu histórico profissional, pouco se sabe sobre a vida da Pereira, exceto que ela gosta de aprender outros idiomas e lutar em campeonatos não oficiais de Jiu Jitsu.'
where id = 12; -- caveira
update agentes set biografia = 
'"Vem comigo. Conheço um atalho."

Côté vem de uma longa linhagem de militares veteranos e serviu na Reserva Canadense durante a universidade. Depois de licenciar-se em Criminologia, ele se alistou em tempo integral nas Forças Armadas Canadenses e foi designado como Polícia Militar. Seu treinamento especializado em situações de alto risco (a curta e longa distâncias), resgate marinho e abordagens a embarcações armadas o fizeram um forte candidato para a equipe de resgate da Real Polícia Montada do Canadá.
Mesmo depois da admissão na mundialmente reconhecida força operacional JTF2, Côté continua a expandir seu repertório de habilidades, incluindo direção tática em alta velocidade em terra e água, manejo de materiais perigosos e resgate de reféns. Quando sob estresse, ele demonstra autodisciplina e pensamento adaptativo. Seu estilo de liderança amigável e intuitivo faz dele um dos membros mais flexíveis da equipe. Além de francês e inglês, Côté fala afegão fluentemente e está tendo aulas de Kanien kéha (Mohawk), por interesse pessoal.'
where id = 13; -- buck
update agentes set biografia = 
'“Chega mais perto, se tem coragem.”

Morowa Evans liderou a luta em sua comunidade contra grupos racistas em confrontos frequentemente violentos. Ela permaneceu implacável até o dia em que o seu amigo e mentor, Tray Pearson, morreu tentando impedir saqueadores em meio a um tumulto. Dois meses depois, Evans ofereceu seu apoio à Polícia Metropolitana de Londres (MPS) a fim de fazer a diferença no sistema. A MPS prometeu limpar a ficha de Evans se ela ajudasse a impedir que os protestos se tornassem violentos. E Morowa fez disso sua carreira, começando com trabalhos privilegiados e por fim se juntando plenamente à MPS.
Durante os tumultos de 2011 em Londres, Evans comandou a linha de frente como agente da polícia no Territorial Support Group para conter a propagação da violência e, posteriormente, conseguiu uma permissão especial para participar de reuniões do mais alto escalão, nas quais ela propôs novas estratégias de controle de multidões tomando como base sua longa experiência como líder de manifestações. Evans efetuou 274 prisões ao longo do seu serviço como policial e então se tornou detetive. Ela conquistou a Queen’s Police Medal por bravura excepcional e uma vaga na Rainbow devido a sua experiência, histórico de serviço e tenacidade.'
where id = 14;-- clash

update agentes set biografia = 
'“Focando só nas coisas ruins da vida você não vai enxergar várias oportunidades de fazer o bem”.

Souza é o caçula dos três irmãos e cresceu em Nova Iguaçu, na região metropolitana do Rio de Janeiro. O assassinato do seu irmão mais velho por traficantes o motivou a entrar para a Polícia Militar, onde recebeu treinamento com estratégias de infiltração e uma variedade de armas táticas. Durante uma batida contra uma quadrilha criminosa, Souza foi emboscado e tomado refém. Apesar de sofrer castigos brutais e perder um olho, sua força de vontade o manteve vivo por dois meses até ser resgatado. Acreditando que Souza era a personificação do seu lema, “Vitória sobre a morte”, e considerando sua experiência em combates urbanos, o Batalhão de Operações Policiais Especiais (BOPE) o recrutou assim que tinha se recuperado. Ele se tornou um especialista renomado no batalhão na área de comportamento de organizações criminosas. Sua luta contra o tráfico acabou gerando uma recompensa por sua cabeça.'
where id = 15; -- capitão
update agentes set biografia = 
'“Meu trabalho é mantê-los vivos. Dificultem à vontade.“

De descendência argelina e francesa, Kateb cresceu em uma família rica no 16º arrondissement de Paris. Ele vem de uma respeitada linhagem tanto militar quanto médica. Em seu segundo ano de medicina na Université Paris Descartes, Kateb atendeu ao apelo por voluntários do Médicos Sem Fronteiras. Posteriormente, ele se voluntariou diversas vezes em missões de ajuda na linha de frente ao redor do mundo. Ao concluir a graduação, Kateb abriu mão de uma carreira promissora em medicina para se dedicar ao Serviço de Saúde da Defesa Francesa. Sua especialidade é toxicologia e ecotoxicologia. Ele realizou estudos sobre agentes biológicos e seus efeitos em populações de risco e ambientes afetados, e contribuiu com relatórios para o Centro Europeu de Controle e Prevenção de Doenças. Ciente da necessidade contínua de médicos, Kateb continua se voluntariando com o MSF. Ele é um oficial médico de prestígio no commandement des forces spéciales terre.'
where id = 16; -- doc

update agentes set biografia = 
'“Você diz boné, eu digo botnet.”

A desenvoltura em matemática e tecnologia rendeu à Nam uma bolsa no KAIST (Instituto Avançado de Ciência e Tecnologia da Coreia). Ela serviu no Exército da Coreia do Sul (ROKA), onde sua aptidão com tecnologia a levou a ser designada para a Divisão 5163 do Exército. Buscando uma chance fora do escritório, Nam conseguiu uma vaga na 9ª Brigada das Forças Especiais, conhecida como Ghost Corps, onde ela treinou montanhismo, técnicas de sobrevivência e táticas de guerrilha. Altamente adaptável, Nam frequentemente usa uma abordagem criativa e não ortodoxa para obter resultados. Essa habilidade não passou despercebida pela USFK ou o 707º Batalhão de Missões Especiais. Encorajada a focar em infiltração de defesas e exploração de pontos fracos em redes, Nam foi rapidamente recrutada pelo 707º e destacada junto com o especialista Chul Kyung Hwa, cujo codinome é “Vigil”, até seu recrutamento na Rainbow. Nam trabalha de perto com o especialista Masaru “Echo” Enatsu no laboratório de pesquisa e desenvolvimento, criando novas tecnologias de contramedida.'
where id = 17;-- dokkaebi

update agentes set biografia = 
'“Não me pergunte o que eu tô fazendo no meu celular. Você não quer saber”.

Enatsu cresceu em Suginami, Tóquio. Fascinado por robótica desde criança, ele desenvolveu e programou drones aéreos e terrestres com os quais venceu diversas competições. Após estudar Engenharia Elétrica e Eletrônica na Universidade Metropolitana de Tóquio, Enatsu foi estimulado a entrar para a Secretaria de Segurança da Agência Nacional de Polícia, onde trabalhou incansavelmente em seu laboratório de pesquisa e desenvolvimento. Treinado em contraterrorismo e coleta de informações, Enatsu passou a desenvolver tecnologias específicas que seriam úteis à Secretaria. Treinos conjuntos depois da situação com reféns em Nagoya proporcionaram a Enatsu uma transferência para a Unidade Especial do Departamento de Polícia Municipal de Aichi, onde seu foco ímpar o permitiu encontrar soluções criativas e estratégias alternativas. Posteriormente, ele retornou a Tóquio e demonstrou técnicas excepcionais em coleta de informações, além de uma metodologia rápida e imprevisível que chamou a atenção da Rainbow.'
where id = 18;-- echo

update agentes set biografia = 
''
where id = 19; -- finka
update agentes set biografia = 
'“Juntos, podemos atingir até as estrelas no céu.”

Elżbieta Bosak é a filha mais nova de Jan Bosak, renomado ex-comandante da Unidade de Forças Especiais Polonesas GROM. Assim como sua irmã, Zofia, Ela mostrou um ótimo desempenho nos exercícios de treinamento impostos pelo pai. Ela frequentou um colégio militar, mas não conseguiu conciliar a vida militar com sua necessidade de independência, então partiu para estudar belas artes em Berlim. Sua reputação pelo uso de equipamentos militares em sua arte chamou a atenção do dono de uma pequena empresa de segurança privada, que então a ofereceu um trabalho. Ela ganhou reconhecimento no setor privado por sua especialização em táticas de sobrevivência e seu estilo único em adaptação durante detalhes de proteção e coleta de informações, até que a morte de seu pai a convenceu a voltar para a Polônia e entrar para GROM. Ela é uma parceira de equipe bem confiável e tem potencial para liderança, embora sua falta de confiança nas autoridades continue sendo um ponto de contenção. Sua colaboração bem-sucedida com SEAL abriu portas para o convite à Rainbow.'
where id = 20; -- ela

update agentes set biografia = 
'“Na vida, você deve se comprometer àquilo que te faz feliz. No meu caso, roubar os ricos e corruptos.”

Cuidando do sustento da mãe conforme sua saúde deteriorava, Lucero estava insatisfeito com o trabalho no setor público e pouco impressionado com o colégio militar. Isso o levou a ocupar-se de assaltos, e ele encontrou propósito em roubar de criminosos ricos para devolver aos pobres. Atuando no distrito de Flores em Buenos Aires, a notoriedade de Lucero cresceu e ele veio a ser conhecido como ‘o cara de Flores’.
Quando sua identidade foi exposta e ele teve de fugir, a Especialista Eliza “Ash” Cohen lhe ofereceu asilo nos Estados Unidos. Em troca, ele ofereceu pistas dos mais cruéis chefes do crime de Buenos Aires. Com vida nova em Los Angeles, Lucero abriu seu próprio food truck, de onde comandou roubos por cinco anos. Quando Cohen soube de suas atividades, ofereceu a ele um lugar em sua mesa e um futuro estável no qual poderia construir sua família.'
where id = 21; -- flores

update agentes set biografia = 
'"Há duas coisas que o corpo humano mais precisa numa situação de sobrevivência: água e esperança."

Tsang cresceu em Vancouver, Colúmbia Britânica, e se alistou na Real Força Aérea Canadina aos dezoito anos. No Colégio Militar Real do Canadá, graduou-se como a primeira de sua turma. Após concluir o ensino superior e o treinamento de oficial, Tsang foi posicionada na Costa Oeste do Canadá, em CFB Esquimalt, com o Centro de Coordenação de Resgate Conjunto em Vitória. De lá serviu na equipe primária de Busca e Salvamento, cobrindo a Colúmbia Britânica e o Território de Yukon.
Tsang foi elogiada por sua extraordinária percepção situacional e é reconhecida por seu planejamento nas missões e reação a ameaças. O treinamento de Busca e Salvamento em montanhismo, paraquedismo e mergulho se estende até seu tempo de lazer. Com seu conhecimento em Engenharia Mecânica, Tsang ajudou a projetar e modificar o Sterling Mk2 LHT, ou "Capacho", cujo design compacto possibilita a aplicação em uma variedade de áreas e ambientes.'
where id = 22; -- frost

update agentes set biografia = 
''
where id = 23; -- fuze 

update agentes set biografia = 
'“Chegamos ao ápice da honestidade quando nos vemos diante da solidão.”

César Ruiz Hernández tinha 11 anos quando uma bomba destruiu seu lar, matando seu pai, sua irmã e ferindo gravemente sua mãe. Com a ajuda da especialista Azucena Rocío “Amaru” Quispe, Sofia, mãe de César, ensinou o filho a observar o ambiente que o rodeava e a evitar os outros meninos da idade dele envolvidos com gangues. Ela o encorajou a se matricular na Heroica Escuela Naval Militar, onde ele se formou Teniente de corbeta. César se filiou à Infantaria naval e, posteriormente, ao Batalhão de Comandos Anfíbios, participando de uma série de operações de combate ao contrabando e de várias prisões de grandes criminosos. Ao se tornar um membro das Fuerzas Especiales, se deparou com a realidade de que as drogas já não eram a principal fonte de renda dos cartéis. Ele começou a trabalhar com a UNESCO e a INTERPOL no combate ao tráfico de antiguidades, onde chamou a atenção da Rainbow por ter um senso tático aguçado e um pensamento prospectivo excepcional.'
where id = 24; -- goyo

update agentes set biografia = 
''
where id = 25;-- glaz

update agentes set biografia = 
'“Aniversários, pedidos de casamento… Essas coisas devem ser surpresas. Ninguém quer uma granada na cara.”

Criado por seu tio, um mecânico da Força Aérea da Bundespolizei (BPOL), Streicher passou a infância rodeado por máquinas e motores. Apesar de demonstrar suas habilidades em mecânica, ele buscava voar mais alto. Como ele tinha afinidade com maquinários complexos, seu tio o incentivou a estudar engenharia aeronáutica na universidade, mas o rigor acadêmico lhe causava desconforto. Então, apesar de tirar notas aceitáveis, Streicher passou a sentir uma inquietação. Ao seguir seu hobby e paixão que era voar, ele passou um bom tempo próximo a pilotos e aeronaves. Corporações particulares o procuraram, mas Streicher ingressou na Força Aérea da BPOL, que lhe proporcionaria desafios únicos, além da oportunidade de servir ao seu país. Quase que imediatamente, Streicher começou a projetar sistemas de armas defensivas para a BPOL, incluindo um protótipo de Sistema de defesa ativo (ADS) terrestre. Esse protótipo chamou a atenção da GSG 9 e da Rainbow.'
where id = 26; -- jagger

update agentes set biografia = 
'“Quem procura uma vida dessas só pode ter uns parafusos a menos na cabeça, mas pra mim não tem coisa melhor”.

Fairous, mais velha de cinco irmãos, vem demonstrando potencial para liderança ao longo de toda sua vida. Começou a trabalhar com motores e competir com robôs ainda na juventude. Seus conhecimentos sobre mecânica foram fortemente influenciados pelo seu pai, um mecânico de aeronaves militares. Ela se juntou aos reservistas do Exército Australiano para poder refinar seus conhecimentos de engenharia mecânica e ter acesso aos melhores equipamentos. Após se formar em uma universidade, Fairous escolheu prestar serviço às Forças Armadas da Austrália, onde pôde se aprofundar ainda mais na mecânica. Ela também possui vasto conhecimento de armas, coleta de informações e serviços de guarda-costas, além de ter a capacidade de se adaptar a situações perigosas inesperadas e manter a calma. Esse conjunto único de aptidões a tornou uma recruta essencial para a seção de mobilidade do SASR. Fairous foi premiada com a Medalha Nacional de Emergência por sua participação no salvamento de bombeiros. Ela recebeu diversas propostas de cargos de liderança, mas recusou uma por uma.'
where id = 27; -- gridlock

update agentes set biografia = 
'"Lidere dando o exemplo e moverá montanhas."

Jalal El Fassi era exaltado nas histórias da Fortaleza, a lendária instalação de treinamentos na Cordilheira do Atlas. A reputação incomparável desse lugar, junto com a de seus “kaids” (comandantes), caem sobre El Fassi.
Juntou-se à GIGR (Groupe Intervention de La Gendarmerie Royale) aos 18 anos, demonstrando aptidões naturais de liderança sob pressão. Sua capacidade de comandar esquadrões especializados de forma eficaz em operações conjuntas com a TSCTP (Trans-Saharan Counterterrorism Partnership) lhe renderam a promoção para capitão. Após anos de serviço, o então comandante em ofício da Fortaleza escolheu seu sucessor: El Fassi, pois seu estilo autoritário, porém ético, o fez merecedor do título “kaid”.
Sua presença imponente e seus valores austeros o levaram a obter sucesso com seus aprendizes, o que rapidamente gerou honrarias para a Fortaleza. Ele continuou provando sua excelência por meio de milhares de soldados que treinavam ou ensinavam com seus métodos. Depois de anos de negociação, ele recebeu tropas da África e do Oriente Médio, promovendo fortes ligações entre membros da TSCTP e países da ASF (African Standby Force).'
where id = 28; -- kaid

update agentes set biografia = 
'“Saia da minha frente.”

Crescendo em Jurong, Singapura, Keng Boon podia ser visto com frequência nas regiões selvagens aprendendo e praticando as habilidades ensinadas por seu pai sobrevivencialista. Aos 18, foi recrutado pelo Serviço Nacional e colocado na NDU - a formação de forças especiais navais de elite de Singapura. Um excelente candidato da Escola de Mergulhadores (FMS), a resistência e foco de Keng Boon lhe garantiram a conclusão bem-sucedida do treinamento e o avanço para o Grupo de Mergulho de Liberação (CDG).
Membro da unidade de Eliminação de Munições Explosivas (EOD), Keng Boon trabalhou de perto com plataformas de contramedidas. Em seguida, ingressou na Escola de Reconhecimento do Exército do Instituto de Inteligência Militar SAF onde, como os “olhos e os ouvidos” da SAF, foi treinado para ser furtivo, obter informações e fornecer relatórios de inteligência precisos e oportunos. As habilidades de reconhecimento e segurança de Keng Boon chamaram a atenção de Kali, que o viu como um agente da Nighthaven em potencial.'
where id = 29; -- grim

update agentes set biografia = 
''
where id = 30; -- kapkan

update agentes set biografia = 
'“Kyūdō é meditação em ação. Explosivos fazem parte dessa ação”.

Imagawa é expert em técnicas paramilitares e infiltração em áreas de alto risco, além de esbanjar uma capacidade fascinante de liderança em campo. Ela tem praticado a arte marcial Kyūdō desde pequena, por influência da família, e consegue avaliar múltiplos fatores simultaneamente enquanto executa movimentos precisos, controlados e fluidos. Treinando com unidades de contraterrorismo do mundo todo incluindo SAS, FBI SWAT e GIGN, Hibana adquiriu uma versatilidade tática rara, com proficiência em assaltos tubulares (ônibus, trens e aviões). Durante seus estudos na Academia Nacional de Polícia, ela ganhou o apelido “Hibana” devido aos seus explosivos improvisados. Fluente em diversas línguas e letal com qualquer arma, Imagawa foi recrutada pela Equipe Tática Especial do Departamento de Polícia Municipal de Aichi, onde suas técnicas diversificadas e seu carisma culminaram em promoções de patente.'
where id = 31; --  hibana

update agentes set biografia = 
'“Não dê desculpas por quem você é. Só os fracos de mente vão querer que você se diminua.”

Nascido e criado em Tseung Kwan O (Junk Bay), o jovem Liu passou anos trabalhando em estaleiros com seu pai, sucateando navios-tanque obsoletos. Ao crescer cercado por materiais nocivos e vendo os efeitos de longo prazo em seus parceiros de trabalho, Liu adquiriu um grande respeito pelas toxinas e seus danos ao corpo humano. Ele se ofereceu para trabalhos de desarme de minas nas províncias de Yunnan e Guangxi, onde suas habilidades e coragem chamaram a atenção da chefia do Departamento de Polícia de Hong Kong. Liu então se juntou ao Explosive Ordnance Disposal Bureau (Departamento de Desarme de Explosivos) com a oportunidade de continuar seus estudos químicos e forenses acompanhados de treinamento intenso no local. A expertise do Liu com ameaças químicas, biológicas, radiológicas e nucleares o tornaram a primeira escolha durante a formação da Unidade QBRN da Rainbow. Liu continuou se voluntariando para liberação de minas em seu tempo livre.'
where id = 32;-- lesion

update agentes set biografia = 
'"Todos os sistemas são complementares, se você souber como conectá-los."

A mãe de Meijer foi engenheira-chefe do Instrumento de Estrutura Atmosférica da Huygens, que pousou em Titã. Incentivada a alcançar as estrelas desde muito nova, estudou Engenharia Aeroespacial com o objetivo de ser uma pilota de caça. Infelizmente, seu albinismo implicou em retinas comprometidas e sua candidatura foi recusada. Ela mudou seu foco para engenharia de sistemas, desenvolvendo lentes de contatos que compensaram sua deficiência genética enquanto integravam uma sobreposição em RA de última geração.
Foi uma colaboração durante seu doutorado que deu a Meijer a primeira experiência onde ela almejava estar. O retorno da Estação Espacial Internacional somente intensificou seu desejo de explorar, a qualquer custo, os cantos mais distantes do cosmo. Ela foi pioneira em um software de mapeamento topográfico que lhe permite projetar uma cópia virtual de si mesma, em tempo real, em qualquer lugar que seja visível por um satélite ou drone. Foi esta tecnologia que chamou a atenção de Elena “Mira” Álvarez e, consequentemente, Six.'
where id = 33; --  iana
update agentes set biografia = 
'“Já contei sobre a vez que pulamos de paraquedas à noite, no meio das árvores de um pântano no Congo? Não? Ah, essa é uma das boas."

Adriano "Maestro" Martello, filho mais velho numa família de oito irmãos, cresceu em Roma, mas serviu à Academia Militar de Módena aos 18 anos. Entrou para os Carabinieri e conquistou uma vaga de paraquedista explorador no 1º Regimento de Paraquedistas, conhecido com Tuscania. Após diversas expedições pelas quais ele ganhou medalhas de valor militar de prata e bronze, Martello se qualificou para o Gruppo di Intervento Speciale (Grupo de Intervenções Especiais ou G.I.S.) e participou de operações conjuntas no Iraque, o que lhe rendeu uma cicatriz no rosto causada por um explosivo improvisado. Combateu em diversas ações contra ameaças internas na Itália e por fim se tornou instrutor de treinamento de unidades de nível 3 no exército italiano.
Assim que Martello concluiu sua expedição, passou a oferecer consultoria privada. Seus cursos rapidamente ganharam excelentes avaliações como treinamento de técnicas avançadas para agentes de unidades de nível 3 e 2, além de companhias militares privadas. A Tuscania acabou convencendo Martello a se realistar para que ajudasse uma de suas unidades a subir para a classificação de força especial de nível 2, o que culminou na entrada dele na Rainbow como representante das unidades italianas.'
where id = 34; -- maestro

update agentes set biografia = 
'“A vida é a maior máquina de Rube Goldberg.”

A mãe de Weiss é uma renovada matemática e seu pai é um inventor cujos elevados padrões acadêmicos motivaram Weiss e seus irmãos a vencerem inúmeros prêmios de matemática, ciência e música ao longo dos anos escolares. Prosperando em um programa, Weiss pôde concluir seu primeiro estágio em uma empresa local de tecnologia aos dezesseis anos. Ela foi convidada pelo MIT, onde se dedicou à engenharia elétrica e foi bastante elogiada por sua pesquisa em Microeletrônica. Em seguida, Weiss entrou na CalTech para uma graduação em engenharia elétrica experimental. Ela voltou à Alemanha para trabalhar em pesquisas de engenharia militar antes de virar agente da Bundespolizei (BPOL). Weiss foi atraída pelos desafios físicos e mentais do trabalho e logo avançou as patentes. Depois de dois anos com a BPOL, ela foi recrutada pela GSG 9.'
where id = 35; -- iq

update agentes set biografia = 
'“O discernimento é a única ferramenta que aniquila a ignorância.”

Nascida na pequena cidade de Louwsburg, perto da Reserva de Caça de Ithala, Ndlovu se dedicou à exploração por vários anos com sua amiga, Elna Gardiner. Conforme cresciam, aumentava também seu senso de responsabilidade pelos animais da reserva. A ameaça dos caçadores alimentou sua determinação e, apesar da perseguição, focaram nas vidas que ainda poderiam salvar, ao invés das fatalidades passadas.
Ndlovu entrou para a Força de Defesa Nacional Sul-africana para expandir seus conhecimentos e custear seu treinamento de ranger de campo. Sua persistência e dedicação chamaram a atenção do 1º Batalhão de Paraquedistas, até que uma emboscada na República Centro-Africana a deixou gravemente ferida.
Quando Gardiner, que se tornara uma veterinária bem-sucedida, pediu ajuda para proteger o Parque Hluhluwe–Imfolozi, Ndlovu renunciou ao serviço militar e passou a treinar mulheres locais a rastrear, interceptar e vigiar. Juntas, são a essência da Unidade Anticaça da Força-tarefa de Inkaba.'
where id = 36; -- melusi

update agentes set biografia = 
'“Você não pode escapar de mim, mas isso não quer dizer que não pode tentar”.

Os primeiros anos da vida do Al-Hassar não são claros devido aos registros incompletos de assistência social. Posteriormente, seu irmão mais velho, Faisal, passou a cuidar dele. Os dois se mantiveram ausentes nos registros oficiais até que o assassinato não solucionado do Faisal deixou Al-Hassar desabrigado mais uma vez. Um policial simpático ajudou Al-Hassar a passar por essa tragédia e o fortaleceu para que ele encontrasse o assassino do irmão, portanto Al-Hassar se juntou ao Cuerpo Nacional de Policía no dia em que completou 18 anos. Aprendendo rápido na academia com o auxílio do seu mentor, Al-Hassar se destacou pelo incrível pensamento lateral. Ele resolveu inúmeras investigações criminais com determinação, mas, infelizmente, o caso do seu irmão continua aberto. Al-Hassar foi selecionado pelo Grupo Especial de Operaciones para treinos avançados e obteve méritos em condução fora de estrada, rapel e tiro de precisão, além de adquirir grande conhecimento sobre grupos terroristas. Ele dá palestras com frequência e trabalha meio período como instrutor na academia do CNP.'
where id = 37; -- jackal

update agentes set biografia = 
'“Me imagine como a sua consciência. Eu vejo tudo e também sou impiedosa”.

Álvarez é uma agente altamente criativa com uma habilidade sem igual de dominar ambientes confinados. O trabalho com seu pai na oficina dele ajudou a formar seu conhecimento intricado em maquinário e a motivou a estudar engenharia mecânica e metalurgia na universidade. Inspirada por um forte senso de justiça e uma obrigação de servir, Álvarez entrou para o Cuerpo Nacional de Policía. Ela viu a necessidade de equipamentos melhores, então desenvolveu materiais à prova de balas para proteger seus parceiros de equipe em operações. Encorajada a se juntar ao Grupo Especial de Operaciones, ela venceu mais de 100 outros recrutas para ocupar a tal almejada posição. Álvarez foi contratada como diretora de pesquisa e desenvolvimento antes de ser adicionada à equipe de combate para poder testar com precisão os desenvolvimentos e melhorias em condições de campo. Em seu tempo livre, ela faz voos de helicóptero.'
where id = 38; -- mira

update agentes set biografia = 
'“A aceitação da mediocridade é o primeiro passo rumo ao fracasso.”

Nascida em berço de ouro, Shah teve o seu sucesso garantido desde pequena. Mas sua autoconfiança foi abalada quando ela tentou ingressar no exército. Seu interesse em artes marciais a levou a se alistar, mas ela logo descobriu que mulheres não eram permitidas em unidades de combate. Apesar de toda sua fortuna e influência social, havia um obstáculo entre ela e algo que desejava, mas ela não iria ceder. Ao deixar o exército, montou a sua própria empresa de segurança privada para operar em território indiano, depois uma empresa militar privada, NIGHTHAVEN, para operar em outros países. Jaimini frequentemente fecha contratos multimilionários com termos incrivelmente favoráveis. Shah é conhecida por ser implacável, mas ao se tornar um recurso que o Governo Indiano precisa desesperadamente, ela contornou as leis que a impediam de alcançar seu objetivo e revalidou sua autopercepção como uma força imparável em um mundo estático.'
where id = 39; -- kali

update agentes set biografia = 
'“Ah, eu não vim até aqui pra ficar coçando o saco.”

Logo após o Ano 10, Max Goose se inscreveu na Academia das Forças Armadas da Austrália, onde futuramente trabalharia na divisão de Combate & Segurança. Juntou-se a um regimento de infantaria que incorporava motos de motocross e veículos off-road nas operações de reconhecimento. Goose se destacou em navegação terrestre e se tornou expert em incursões, exploração e operações em comboio sobre duas rodas.
Depois da Operação Catalyst, ele foi escolhido a dedo para se juntar ao Special Air Service Regiment (SASR), desde que passasse no processo de seleção e não respondesse com grosserias. Sua especialização em off-road e seu pensamento rápido foram altamente valorizados, embora seu estilo de pilotagem parecesse imprudente. Participou da Operação Slipper e serviu até a conclusão desta. Posteriormente, recebeu uma Medalha Nacional de Emergência por resgatar bombeiros nas queimadas de Esperance.
Goose busca correr riscos calculados e adora testar motos militares novas, mas diz que não há honra maior do que ser chamado para se juntar à Rainbow Six.'
where id = 40; -- mozzie

update agentes set biografia = 
'“Acham que tenho esse codinome por não gostar de falar. Talvez eu só não vá com a sua cara.”

Talentoso e coerente, Chandar foi um dos alunos mais jovens aceitos pela Universidade de Cambridge. Ele se formou em eletrônica e engenharia da computação e estagiou em uma renomada empresa de tecnologia, onde contribuiu com o design e o funcionamento de protótipos de sistemas de segurança. Sua criatividade chamou a atenção do Escritório de Segurança Nacional do Reino Unido, o Quartel-general de Comunicações do Governo Britânico (GCHQ). Ao demonstrar sua perspicácia na quebra de códigos, Chandar se tornou Oficial de Inteligência na Unidade de Inteligência e Codificação. (SIGINT). Ele continua a contribuir com a equipe de pesquisas técnicas aplicadas e recentemente expandiu seu campo de estudo ao iniciar seus estudos de coreano.'
where id = 42; -- mute
update agentes set biografia = 
'“Confundir o certo com o fácil pode levar a um caminho perigoso”.

Quando Flament foi parar no hospital por causa dos seus comportamentos rebeldes, renegado por sua família e quase se tornando sem teto, ele se alistou às Forças Armadas Francesas como uma tentativa de controlar sua vida. Os primeiros relatórios já indicaram as habilidades e a aptidão de Flament para treinamento específico em QBRN. A estrutura adicional e a disciplina rígida dos treinos avançados o ajudaram a se destacar e logo ele foi recrutado pelo 2º Regimento de Dragões, onde ele trabalhou primariamente com seus sensores de monitoramento de ambientes.
Flament demonstrou fascinação por bacteriologia e virologia, especialmente controle de vetores. Reconhecendo que suas habilidades poderiam ter mais proveito em outro lugar, ele deixou o exército e entrou para a Gendarmerie, visando a Força de Suporte Operacional da GIGN (FAO). Sua capacidade de manter o foco e realizar tarefas em situações estressantes chamaram a atenção da especialista Melnikova durante uma missão conjunta na Nigéria, que o recomendou como candidato para Rainbow.'
where id = 41; -- lion

update agentes set biografia = 
'“O diabo está nos detalhes... e é ali que você me acha.”

O bostoniano Erik Thorn veio de um lar multilíngue e figurava entre os 2% mais inteligentes. Após o ensino médio, ele se alistou no Exército dos Estados Unidos e conquistou algumas patentes em pouco tempo. Ele aprendeu a língua persa afegã e se tornou oficial de inteligência servindo em Kabul enquanto ondas de repórteres, aventureiros e criminosos inundavam a cidade. Thorn era bem conhecido no circuito de clubes underground e até mesmo entre os habitantes locais como bom jogador de buzkashi.
Thorn foi convidado para se juntar à The Unit como especialista regional. Depois de ser escolhido, permaneceu no país coletando informações, construindo redes de aliados e instalações seguras, além de rastrear inimigos. Conforme a situação piorava, Thorn monitorava os americanos e os resgatava quando necessário, sem deixar de ajudar os locais a escaparem da violência. Ele estava investigando um repórter desaparecido quando The Unit perdeu contato com ele. Depois de dois anos de silêncio, ele reapareceu com informações suficientes para acabar com uma grande operação de insurgência. Ainda havia dúvidas quanto ao seu desaparecimento, porém foi exonerado e seu depoimento foi selado. Suas missões bem-sucedidas e suas especialidades o levaram à atenção da Six.'
where id = 43; -- maverick

update agentes set biografia = 
'"Às vezes, a única saída é encarar as coisas de frente"

Pouco se sabe a respeito da vida de Al Hadid. Ele cresceu numa pequena cidade adjacente a uma base aérea e, pelo que se sabe, teve uma infância normal até desaparecer dos registros internacionais por mais de quinze anos. Ele eventualmente reapareceu na Jordânia, mas só ficou o tempo necessário para obter um novo passaporte. Ele aprendeu luta livre em Istambul, Muay Thai em Bangkok, condução tática em Berlim e a atirar com precisão em Damasco, provavelmente trabalhando para um patrocinador paramilitar. E então ele desapareceu novamente.
Reapareceu como um cadete na Fortaleza de Jalal “Kaid” El Fassi. Com o passar dos anos, sua função passou de recruta para taifeiro e daí para instrutor. Agora, extraoficialmente o segundo no comando, Al Hadid guarda a Fortaleza na ausência de Kaid e atua como um conselheiro confiável quando ambos estão juntos.
Rumores da ferocidade de Al Hadid existem em abundância, contudo permanecem não confirmados por relatórios de campo e devem ser desconsiderados.'
where id = 44; -- oryx

update agentes set biografia = 
'"Cada conflito é uma iteração do anterior. Cada cicatriz, uma vitória.“

Touré começou sua carreira na aplicação da lei como oficial de polícia na Gendarmerie Nationale. Usavam seu porte imponente sempre que havia a necessidade de demonstrar forte presença policial, o que lhe rendeu uma posição na Gendarmerie mobile, cujo foco é o controle de multidões e também as missões de patrulha militar e antiterrorista. A busca de Touré por treinamento extensivo lhe concedeu um vasto conjunto de competências e uma posição na GIGN. Embora melhor utilizado como batedor, Touré também tem treinamento em engenharia de combate e reconhecimento. Quando não está em serviço com a Rainbow, Touré é instrutor na GIGN.'
where id = 45; -- montagne

update agentes set biografia = 
'“O coração é um mero motor. Como qualquer máquina, ele pode ser aperfeiçoado.”

Nascido na Base da Força Aérea Seymour Johnson, Estrada foi criado em bases espalhadas pelos EUA e em outros países, como Alemanha, Turquia e Japão. Seu pai era piloto e sua mãe era uma Oficial Sênior de Inteligência. Desde muito jovem, Estrada demonstrou afinidade com a área de ciências e rapidamente obteve um perfil profissional avançado. Seu foco em ciência forense e bioquímica o tornaram o candidato perfeito para o programa de biometria do FBI, do qual ele se tornou o estagiário mais jovem. Assim, ele garantiu seu cargo de agente e, em pouco tempo, foi recrutado pela SWAT, realizando trabalhos de campo e no laboratório do FBI. A elevada inteligência emocional de Estrada o qualificou para entrar na Equipe de Resgate de Reféns do FBI (também conhecida como ERR), onde se destacou atuando em gerenciamento de crises e táticas de negociação. Seu conhecimento em biometria comportamental resultou na criação do sensor cardíaco, juntamente com uma série de outros protótipos que ele continua a aprimorar.'
where id = 46; -- pulse

update agentes set biografia = 
'“Se for levar um tiro, você bem que podia fazer isso direito.“

O pai de Nizan é um pedreiro respeitado, enquanto a mãe teve diversos trabalhos. Ambos contribuíram para sua noção de design arquitetônico e precisão, ajudando-o a conquistar as melhores notas na escola. Além de seus interesses intelectuais, Nizan também se sobressaía no atletismo desde jovem, incluindo corrida, esgrima e ciclismo. Mais tarde, ele deixou a universidade para percorrer a França de bicicleta antes de voltar e entrar para a Gendarmerie. Nizan prosperou em seu treinamento, que incluía qualificações especializadas em armamentos, vigilância e investigação criminal. Sua adaptabilidade o colocou no topo da lista nos cursos de defesa e militares, rapidamente chamando atenção da GIGN. Suas primeiras missões com a unidade combinaram todos os elementos para satisfazer sua interminável busca por desafios e aventuras, de acordo com psicólogos da equipe. Especializando-se em resgate de reféns e vigilância, é extensa a lista de intervenções bem-sucedidas de Nizan.'
where id = 48; --  rook

update agentes set biografia = 
'“O recuo é tudo o que sinto ao puxar o gatilho.”

Por motivos de segurança nacional e de missões em andamento, os registros de Nøkk são mantidos em confidencialidade pela OTAN; contudo, seus dados foram liberados para Six. Nøkk se alistou na escola de suboficiais do exército de Sønderborg, e então entrou para a Real Academia Militar Dinamarquesa, onde graduou-se como Primeira Tenente. Com quatro regimentos sob seu comando, Nøkk passou por mais treinamentos de operações especiais, recebendo sua boina marrom da Jægerkorpset com conhecimentos em operações secretas, busca e socorro de combate, ação direta, reconhecimentos especiais, tiro à distância e demolição avançada. Nøkk serviu no Afeganistão e Iraque, geralmente sozinha e infiltrada atrás das linhas inimigas. Obteve menção honrosa por eliminar inimigos em ataques precisos e pela descoberta da localização de Erik “Maverick” Thorn, passando essa informação à unidade.
Nøkk mantém sua identidade oculta de todos seus companheiros. A divisão de Operações e Procedimentos da OTAN recomendou a agente à equipe Rainbow como uma de suas maiores especialistas em disfarce.'
where id = 49; -- nook

update agentes set biografia = 
'“É claro que me importo com o meio-ambiente. Mas só o que me rodeia.”

Apesar de Porter não ter sido um aluno excepcional, testes de amplitude revelaram seu talento para as ciências. Incentivado por sua aptidão e por seus pais, ele seguiu uma forma não ortodoxa de instrução com seus tutores, em ensino domiciliar e ciência de campo. Ele obteve êxito ao se afastar do ensino tradicional em sala de aula e rapidamente desenvolveu habilidades em química, biologia e matemática. Sem interesse em buscar uma educação acadêmica padrão, Porter falsificou uma carteira de identidade e se alistou no Exército Britânico. Apesar da rigidez das regras do exército nem sempre ser ideal, a ampla gama de treinos e experiências fornecidas pela vida militar serviram como compensação. Ao passo que o reprimiam por quebrar regras, seus superiores logo reconheceram sua visão inovadora e estratégica. Ele foi incentivado a entrar na S.A.S. Porter prefere buscar conhecimento e novas habilidades, como em idiomas e música, ao seu modo, e não se destaca em atividades de treinamento formal.'
where id = 50; -- smoke

update agentes set biografia = 
'“As melhores ideias vêm quando me livro das regras e instruções.”

Nascida na família Janković, donos de lojas de brinquedos pela Europa, Anja viajava frequentemente com seus pais, por isso nunca sentiu estabilidade até ir morar com sua tia na Croácia, aos seis anos. Lá começou seus estudos e aprendeu o ofício familiar de confecção de brinquedos, ao mesmo tempo em que desenvolvia uma obsessão por filmes de ficção científica dos anos 60.
Ela seguiu sua paixão por criação e tecnologia e estudou eletromecânica numa escola vocacional e, então, engenharia militar na Universidade de Zagreb, destacando-se em engenharia robótica. Ela se viu isolada em razão de sua maneira pouco ortodoxa e das atitudes dos outros quanto à sua transição, por isso focou no trabalho. Sua perspectiva única e seu conjunto de habilidades criativas a colocaram em evidência e chamaram a atenção de Kali, que estava no país em busca de recrutas. Depois de uma oferta, Janković entrou para a Nighthaven.
O sucesso da companhia pode ser amplamente creditado às invenções de Osa e seu trabalho de campo. Sua eficiência e a versatilidade de seu arsenal deram à equipe vantagem em todas as operações registradas, e ao se revelar dedicada e confiável, ela conquistou a direção de P&D da Nighthaven.'
where id = 51; -- osa

update agentes set biografia = 
'“As pessoas mentem. Os dados não.”

Díaz cresceu confortavelmente em um período perigoso para a Colômbia, onde sua família unida a ensinou o valor da verdade. Como a mais velha de quatro filhos, ela sentiu o dever de proteger os outros, fazendo-a entrar na Polícia Nacional. Equilibrando sua paixão por computadores e literatura com sua motivação inabalável, ela sobressaiu em trabalho investigativo. Após receber uma condecoração por revelar corrupção entre seus colegas, ela passou pelo treinamento de operações especiais e conquistou uma vaga na AFEAU.
Díaz foi surpreendentemente capaz em balística e combate de proximidade para alguém intelectual, tornando-a uma especialista bem equilibrada. Ela trabalhou em contraespionagem com a Diretoria de Inteligência Nacional e liderou uma iniciativa de parceria com desenvolvedores de tecnologia de Realidade Aumentada para aprimorar a eficiência de sua unidade. Ela simultaneamente teve uma vida secreta online, monitorando corrupção sistêmica através da dark web e, ultimamente, descobrindo transações que ligaram diversos oficiais a redes de tráfico na América do Sul. A repressão que se seguiu a colocou no radar do Agente Santiago “Flores” Lucero, que a recomendou à Agente Tainá “Caveira” Pereira para recrutamento.'
where id = 52; -- solis

update agentes set biografia = 
'“Força bruta é só metade do caminho. A vitória é determinada na mente de ume estrategista.”

Vinde de uma família bem unida, Ngoma pôde seguir seus interesses sem muita resistência. Ile aprendeu tudo o que pôde sobre psicologia e física, enquanto recebia treinamento em música clássica com os dois irmãos menores. Ngoma também aprendeu mecânica básica na oficina do pai, reunindo com sucesso o conjunto de habilidades que aplicaria depois em sua carreira.
Ile se sobressaiu em treinamento tático e ciências militares, tornando-se engenheire de combate. Brilhante e imaginative, Ngoma mostrou-se inestimável em qualquer tarefa empreendida. Ile auxiliava os colegas com estratégias e tecnologias para desviar a atenção dos oponentes e romper as defesas inimigas. Sua especialidade em tais táticas, que tinham a reputação de minimizar as baixas em todos os lados sem comprometer os objetivos, rendeu a Ngoma várias medalhas de serviço. Por fim, ile chamou a atenção do Grupo de Forças Especiais da Bélgica, onde ile tem servido desde então.'
where id = 53; -- sens

update agentes set biografia = 
''
where id = 54; -- tachanka

update agentes set biografia = 
'“Abrindo caminho!”

Nascidos no norte da Escócia, o pai militar e a mãe enfermeira de Cowden se mudaram para Iverness com ele e seus três irmãos quando ele tinha cinco anos. Seu perfil atlético o promoveu a capitão da Seleção Nacional de Rugby sub-20 escocesa em 1998. Seguindo a longa tradição militar da família, Cowden ingressou na 3ª Divisão Mecanizada do Reino Unido que compõe o Exército Britânico. Sua motivação e porte físico se adequaram ao apelido histórico da divisão de “Ironsides”. A primeira missão de Cowden foi como membro da Divisão Blindada, onde estudou engenharia e se especializou no aprimoramento de veículos de combate da infantaria. A partir daí, ele desenvolveu várias táticas de demolição. Ele então foi recrutado pelo S.A.S, onde quebrou vários recordes de velocidade e força. Especialista em mecânica, balística e estratégias de demolição térmica, Cowden é o agente ideal quando o assunto é destruir com rapidez e relativo silêncio.'
where id = 55; -- sledge

update agentes set biografia = 
'“Mexa com alguém do seu tamanho”.

Thorn cresceu em uma fazenda numa parte da Irlanda conhecida por duas coisas: corrida de cavalos e treinamento das forças de defesa. Quando não estava levando a melhor contra os irmãos mais velhos, estava ajudando os pais com a criação de puros-sangues para as pistas e a polícia montada. Fazer uma pausa na vida do campo para servir nas forças de defesa é a cara dela. Thorn, contudo, foi com os cavalos para a An Garda Síochána.
Depois de quatro anos de serviço impecável, candidatou-se para a divisão tática de elite da Garda, a Emergency Response Unit. Só 5% dos candidatos passam no desgastante exame de admissão de duas semanas. Thorn não apenas passou em primeiro no exame, mas auxiliava com frequência outros candidatos no treinamento.
Ela rapidamente subiu de posto como especialista de armas táticas e ajudou a redesenhar a pista de obstáculo da unidade, referindo-se ao antigo trajeto como “uma volta no parque”. Boatos de seu desempenho chegaram até Caveira, que logo após o término exclamou: “Você quer um emprego?”'
where id = 56; -- thorn

update agentes set biografia = 
'“O que se pode sentir e o que se pode tocar: essas são as únicas coisas reais. Todo o resto é só distração.”

Baker vem de uma longa linhagem de estivadores e soldados. Aos 18 anos, ele se alistou no serviço militar apesar da pressão da família para seguir sua tradição e atuar como estivador. Imediatamente designado para lidar com conflitos de alto teor político, o desempenho de Baker foi exemplar. Um treinamento adicional e um novo conflito lhe renderam uma Cruz de Voo Distinto e uma Cruz de Bravura Notável. Seu senso de observação apurado e sua conduta decisiva, bem como suas técnicas de combate em situações de proximidade o tornaram indispensável na proteção de figuras públicas proeminentes.
Com ampla experiência de campo e proficiência em táticas da S.A.S, Baker é vital para qualquer operação da Rainbow. Ele se profissionalizou ainda mais com medidas protetivas e contramedidas eletrônicas, além de trabalhar frequentemente com engenheiros para aprimorar o equipamento. Como Chefe-ajudante de Classe 1 (Sargento-mor Regimental), Baker atua como um mentor respeitado e eficiente para novos recrutas. Baker mantém seu treino de agilidade, pratica rapel incessantemente e vem quebrando uma série de recordes de montanhismo.'
where id = 57; -- tatcher
update agentes set biografia = 
'“Ar ou chão: você acha o equilíbrio ou dá de cara na terra.”

Nascida nos territórios Nakoda de Saskatchewan, a primeira lição que Thunderbird aprendeu com a mãe foi a importância da comunidade. O primeiro contato com os motores foi no colo do pai, quando ele a ensinou a entender os helicópteros antes que ela aprendesse a pilotar um.
Sempre ávida por novas experiências, ela se inscreveu no Programa Águia Ousada aos dezessete anos, onde se superou no treinamento militar básico. Embora tenha se beneficiado da orientação de anciãos da comunidade e instrutores indígenas, o programa despertou um interesse em preservar e proteger o que ela mais ama, o estilo de vida Nakoda.
Depois de entrar para as Forças Armadas Canadenses, Thunderbird trilhou o caminho até a escola de aviação. Lembrando-se da importância que a mãe dava ao equilíbrio, Thunderbird pensou que, já que as FAC lhe ensinaram a tirar vidas, ela poderia aprender a salvá-las. Ela concluiu seu Treinamento Médico Básico (CFHSTC) e continuou servindo como Médica Aeroespacial.'
where id = 58; -- thunderbird 

update agentes set biografia = 
'“Você vê uma parede, eu vejo uma oportunidade.”

Trace entrou na corporação assim que saiu do ensino médio, o que o tornou um membro da marinha de quarta geração. Em nossa primeira expedição no Iraque, ele obteve experiência suficiente para se candidatar ao cargo de técnico de descarte de artilharia explosiva. Após nossa segunda expedição por lá, Trace voltou aos EUA, entrou na universidade e obteve um Bacharelado em Química. Ele colocou sua experiência e suas habilidades à disposição do FBI, onde passou anos como agente de campo na Unidade de tratamento de materiais perigosos. Em busca de ambientes mais dinâmicos, Trace foi para a divisão SWAT do FBI, onde se especializou no desenvolvimento de novos protocolos de barricadas. Consequentemente, conquistou um lugar na Rainbow, onde mostrou interesse na pesquisa e desenvolvimento de melhorias para dispositivos. Plano, terra natal de Trace, possui uma grande concentração de sino-americanos, por isso ele possui bom nível de conversação em mandarim.'
where id = 59; -- thermite

update agentes set biografia = 
'"Se você não tem a impressão constante de estar sendo observado, é porque não está prestando atenção."

Castellano nasceu e foi criada na típica comunidade surfista de Oceanside, Califórnia. O pai era um coronel respeitado no Corpo de Fuzileiros, a mãe uma pesquisadora numa companhia de biotecnologia próxima. Desde pequena, era conhecida pelos altos desempenhos em matemática e ciências e como uma atleta prodígio. Tinha esperanças de competir como nadadora nas Olimpíadas, mas quebrou um braço num acidente de carro aos 16 anos, dando um fim à sua carreira. Então, mudou o foco e se alistou na marinha, enquanto ainda ia à faculdade. Depois de se graduar em Ciência da Computação, com especialização em Segurança e Criptografia, ela foi transferida para o Corpo de Domínio de Informações. A atenção de Castellano aos detalhes e sua habilidade analítica fizeram dela uma das especialistas mais disputadas. Ela se candidatou a um posto de SEAL quando abriram uma vaga feminina e continua tendo êxito mesmo depois de vários anos desgastantes, servindo de incentivo a outras mulheres.'
where id = 60; -- valkyrie

update agentes set biografia = 
'“Aprendizado de máquina e trabalho em equipe têm algo em comum: sempre dê o exemplo.“

Pichon cresceu numa família de acadêmicos na cidade histórica de Nancy, França, onde as crianças eram incentivadas a se distinguirem em matemática, ciência e tecnologia. Participações ainda jovem em competições financiadas de programação a levaram a se juntar aos cadetes do exército aos dezesseis anos. Seu talento foi reconhecido quase imediatamente, principalmente em robótica. Seus superiores logo a encorajaram a estudar engenharia, ainda seguindo a carreira militar. Desde o princípio, a atenção de Pichon tem sido em tecnologias adaptáveis que ajudam soldados no campo. Embora muito elogiada pelas realizações tecnológicas, a habilidade tática e a capacidade de resolver problemas rápida e eficientemente fazem de Pichon um recurso operacional imprescindível. Com uma combinação única de talentos, Pichon se tornou uma ótima escolha para a GIGN e, mais tarde, para a Rainbow. Ele é fluente em francês, inglês e alemão e o foco de sua pesquisa atual é em IA.'
where id = 61; -- twitch

update agentes set biografia = 
'“Não se preocupe comigo. Eu nem estou aqui.”

Muitos registros antigos do Hwa não são claros. Seus pais biológicos continuam desconhecidos. O que se sabe é que ele sofreu a perda do irmão mais velho e do pai na tentativa de chegar à Coreia do Sul. Relatórios escolares nos informam até sua adolescência, quando foi adotado pela família Hwa. Relatórios iniciais apontam sinais de um trauma prematuro – recluso, dificuldade na leitura –, porém, suas notas posteriores mostraram muito foco e um grande avanço.
Hwa se interessou por eletrônicos e engenharia elétrica. A fim de usar seus talentos e mostrar orgulho por seu país, ele decidiu se juntar à Marinha da Coreia do Sul. Posteriormente, ganhou uma vaga nos Fuzileiros Navais, com destaque para sistemas de radares e tecnologia em furtividade. Escolhido a dedo pelo respeitado 707º Batalhão de Missões Especiais por suas missões bélicas não convencionais, ele provou ser rápido e letal. Hwa serviu junto com a especialista Grace “Dokkaebi” Nam até seu recrutamento na Rainbow.'
where id = 62; -- vigil

update agentes set biografia = 
'“Proteger os outros é um chamado. Se você não sente isso, nem vai.”

Siu nasceu no afluente Distrito Central de Hong Kong e se tornou guarda-costas logo após terminar o ensino médio. Ela desenvolveu habilidades de combate e explosividade a curta distância por meio de aulas particulares e então entrou para um serviço de elite com objetivo de ser uma agente para todas as situações. Ela viajou para Tel Aviv, em Israel, onde passou dois anos treinando e servindo no Batalhão Caracal, desenvolvendo uma especialização em armas de fogo e condução em combate. Ela voltou para Hong Kong e se juntou à polícia e depois na SDU de elite: Flying Tigers. Treinamento conjunto com S.A.S. e seu uso criativo de flashbangs lhe renderam o seu codinome, Ying (vaga-lume). Escalada com frequência devido ao seu conhecimento em destacamentos de proteção de pessoas e operações de alto risco, Siu é uma das melhores especialistas para operações que envolvem a densa população urbana de Hong Kong.'
where id = 63; -- ying

update agentes set biografia = 
'“Quanto mais perto você está da morte, mais vibrante a vida se torna.”

Nascido em uma família de pescadores na costa do Quênia, Furaha passou a infância caçando tubarões e coletando tesouros perdidos no fundo do oceano do arquipélago de Lamu. Logo ficou claro que ele era capaz de ficar debaixo dágua por muito mais tempo do que seus colegas, e a exploração médica revelou uma fisiologia anormal que contribuiu para a crença de Furaha de que ele "não era daqui". Quando surgiu a oportunidade de ingressar na Marinha do Quênia e, mais tarde, na Unidade Especial de Barcos do Quênia, ele fez bom uso de suas habilidades. Ele rapidamente chamou a atenção de generais dentro da marinha, bem como da comunidade científica mundial por seus mergulhos livres recordes prolíficos e frequentes. Mais tarde, ele fez a transição para NIGHTHAVEN, atraído pela promessa de mais tempo de inatividade e um barco particular para levá-lo ao local de seu próximo mergulho.'
where id = 64; -- wamai
update agentes set biografia = 
'“Prepare, execute, desapareça”.

Embora a CIA e o Third Echelon tenham arquivado a maior parte da infância do Fisher como confidencial, sabe-se que ele nasceu no subúrbio Towson de Baltimore, Maryland, onde cresceu com sua avó paterna, Sarah. Mais tarde, ele se alistou em uma academia militar, onde aprendeu a canalizar sua energia, aprimorar suas habilidades e seguir ordens ou ocultar evidências.
Depois da primeira academia, Fisher se alistou diretamente na Academia Naval dos Estados Unidos, onde se formou em ciências políticas e posteriormente buscou treinamento com os SEALs. Enquanto servia no Golfo Pérsico, Bolívia, Colômbia, Senegal e Kosovo, Fisher ficou conhecido por sua capacidade de completar as missões, independentemente das baixas em seu pessoal. Após ser premiado com uma Medalha por Serviço Distinto de Defesa, Fisher se dedicou como instrutor na Base Naval de Little Creek, na Virgínia.
Fisher foi recrutado pela CIA, onde ele [REDACTED].'
where id = 65; -- zero

update agentes set biografia = 
'"Nunca estou despreparado."

Collinn McKinley alistou-se no Corpo de Fuzileiros Navais aos 18 anos e conquistou várias menções honrosas por seu raciocínio rápido e agressivo, alcançando o posto de Sargento Mestre, apesar de pequenas infrações em seu histórico. Depois de um tempo em serviço, deixou os Fuzileiros e entrou para o serviço secreto, no destacamento de proteção pessoal. A agilidade de McKinley foi essencial para salvar a vida do Secretário de Estado Baldwin, quando insurgentes o atacaram durante uma viagem oficial. Mais tarde, Baldwin venceu as eleições presidenciais e nomeou McKinley à Divisão de Proteção Presidencial. Collinn passou mais de uma década em Washington, protegendo importantes personalidades políticas. Ele é o maior especialista em proteção pessoal, e, com o término do segundo mandato do Presidente Baldwin, McKinley recebeu grande apoio para sua transição à Equipe Rainbow.'
where id = 66; -- warden

update agentes set biografia = 
'“Não é sobre onde você vai parar. É sobre como transforma isso no seu lar.”

Zofia Bosak é a filha mais velha de Jan Bosak, respeitado ex-comandante das Forças de Operações Especiais Polonesas, GROM. Ela mostrou um ótimo desempenho nos exercícios de treinamento extracurriculares do seu pai e aprendeu diversas técnicas, incluindo algumas questionáveis. A atitude excepcional da Zofia a fez passar nos testes de seleção da GROM com pontuações altíssimas. Ela desenvolveu habilidades extensas, muito além de combate corpo a corpo e precisão de tiro, principalmente sobrevivência, sabotagem, extração de alvo e medicina de campo. Motivada para ser o soldado de melhor performance dentre todas as unidades, Zofia mostra um foco ímpar em todas as suas operações. Esse foco a possibilitou evacuar centenas de civis, incluindo crianças, sozinha durante uma missão de resgate na Guatemala. Desde então, ela vem ganhando inúmeros prêmios e o respeito dos seus companheiros e superiores. Zofia se destaca como uma pensadora lateral com experiência operacional decisiva e agressiva, além de ter um histórico impecável em campo e fora dele.'
where id = 67; -- zofia

select *from agentes;
select * from usuario;

select biografia from agentes where nome like 'brava';
truncate table usuario;

