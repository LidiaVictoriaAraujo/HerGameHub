CREATE TABLE Usuaria 
( 
 Nome INT,  
 Email INT,  
 Usuário INT PRIMARY KEY,  
); 

CREATE TABLE Desenvolvedora 
( 
); 

CREATE TABLE Empresa parceira 
( 
 id_parceiro INT PRIMARY KEY,  
 status pagamento INT,  
 categoria INT,  
); 

CREATE TABLE Jogadora 
( 
); 

CREATE TABLE Comunidades 
( 
 id_comunidade INT PRIMARY KEY,  
); 

CREATE TABLE Jogos 
( 
 id_jogo INT PRIMARY KEY,  
 Categoria INT,  
); 

CREATE TABLE Squads 
( 
 id_squad INT PRIMARY KEY,  
); 

CREATE TABLE Curso 
( 
 Link de acesso INT,  
 Dificuldade INT,  
 Duração INT,  
 Nome INT,  
 Assunto INT,  
 id_curso INT PRIMARY KEY,  
 Descrição INT,  
); 

CREATE TABLE Vagas 
( 
 Nome vaga INT,  
 Descrição INT,  
 Área INT,  
 Cargo INT,  
 id_vaga INT PRIMARY KEY,  
); 

CREATE TABLE Anúncio 
( 
 id_anuncio INT PRIMARY KEY,  
); 

CREATE TABLE Inscreve 
( 
 idJogadora INT PRIMARY KEY,  
 Usuário INT PRIMARY KEY,  
 idDesenvolvedora INT PRIMARY KEY,  
); 

CREATE TABLE Participa 
( 
 id_comunidade INT PRIMARY KEY,  
 id_squad INT PRIMARY KEY,  
 idJogadora INT PRIMARY KEY,  
); 

CREATE TABLE Criam 
( 
 id_comunidade INT PRIMARY KEY,  
 id_squad INT PRIMARY KEY,  
); 

CREATE TABLE Joga 
( 
 Id_jogo INT,  
 id_squad INT PRIMARY KEY,  
 idJogadora INT PRIMARY KEY,  
 id_jogo INT PRIMARY KEY,  
); 

CREATE TABLE Fornece 
( 
 id_curso INT PRIMARY KEY,  
 id_parceiro INT PRIMARY KEY,  
); 

CREATE TABLE Realiza 
( 
 Porcentagem realizada INT,  
 Meta de estudo INT,  
 idDesenvolvedora INT PRIMARY KEY,  
 id_curso INT PRIMARY KEY,  
); 

CREATE TABLE Publica 
( 
 id_vaga INT PRIMARY KEY,  
 id_parceiro INT PRIMARY KEY,  
); 

CREATE TABLE Se inscreve 
( 
 idDesenvolvedora INT PRIMARY KEY,  
 id_vaga INT PRIMARY KEY,  
); 

CREATE TABLE Pública 
( 
 id_anuncio INT PRIMARY KEY,  
 id_parceiro INT PRIMARY KEY,  
); 

CREATE TABLE Favorita 
( 
 idDesenvolvedora INT PRIMARY KEY,  
 id_curso INT PRIMARY KEY,  
); 

CREATE TABLE Favorita1 
( 
 id_jogo INT PRIMARY KEY,  
 idJogadora INT,  
); 

ALTER TABLE Inscreve ADD FOREIGN KEY(idJogadora) REFERENCES Jogadora (idJogadora)
ALTER TABLE Inscreve ADD FOREIGN KEY(Usuário) REFERENCES Usuária (Usuário)
ALTER TABLE Inscreve ADD FOREIGN KEY(idDesenvolvedora) REFERENCES Desenvolvedora (idDesenvolvedora)
ALTER TABLE Participa ADD FOREIGN KEY(id_comunidade) REFERENCES Comunidades (id_comunidade)
ALTER TABLE Participa ADD FOREIGN KEY(id_squad) REFERENCES Squads (id_squad)
ALTER TABLE Participa ADD FOREIGN KEY(idJogadora) REFERENCES Jogadora (idJogadora)
ALTER TABLE Criam ADD FOREIGN KEY(id_comunidade) REFERENCES Comunidades (id_comunidade)
ALTER TABLE Criam ADD FOREIGN KEY(id_squad) REFERENCES Squads (id_squad)
ALTER TABLE Joga ADD FOREIGN KEY(id_squad) REFERENCES Squads (id_squad)
ALTER TABLE Joga ADD FOREIGN KEY(idJogadora) REFERENCES Jogadora (idJogadora)
ALTER TABLE Joga ADD FOREIGN KEY(id_jogo) REFERENCES Jogos (id_jogo)
ALTER TABLE Fornece ADD FOREIGN KEY(id_curso) REFERENCES Curso (id_curso)
ALTER TABLE Fornece ADD FOREIGN KEY(id_parceiro) REFERENCES Empresa parceira (id_parceiro)
ALTER TABLE Realiza ADD FOREIGN KEY(idDesenvolvedora) REFERENCES Desenvolvedora (idDesenvolvedora)
ALTER TABLE Realiza ADD FOREIGN KEY(id_curso) REFERENCES Curso (id_curso)
ALTER TABLE Publica ADD FOREIGN KEY(id_vaga) REFERENCES Vagas (id_vaga)
ALTER TABLE Publica ADD FOREIGN KEY(id_parceiro) REFERENCES Empresa parceira (id_parceiro)
ALTER TABLE Se inscreve ADD FOREIGN KEY(idDesenvolvedora) REFERENCES Desenvolvedora (idDesenvolvedora)
ALTER TABLE Se inscreve ADD FOREIGN KEY(id_vaga) REFERENCES Vagas (id_vaga)
ALTER TABLE Pública ADD FOREIGN KEY(id_anuncio) REFERENCES Anúncio (id_anuncio)
ALTER TABLE Pública ADD FOREIGN KEY(id_parceiro) REFERENCES Empresa parceira (id_parceiro)
ALTER TABLE Favorita ADD FOREIGN KEY(idDesenvolvedora) REFERENCES Desenvolvedora (idDesenvolvedora)
ALTER TABLE Favorita ADD FOREIGN KEY(id_curso) REFERENCES Curso (id_curso)
ALTER TABLE Favorita1 ADD FOREIGN KEY(id_jogo) REFERENCES Jogos (id_jogo)
ALTER TABLE Favorita1 ADD FOREIGN KEY(idJogadora) REFERENCES Jogadora (idJogadora)