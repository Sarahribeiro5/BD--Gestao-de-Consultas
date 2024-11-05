CREATE DATABASE sistema_gestao_consultas;

\c sistema_gestao_consultas;

CREATE TABLE medicos (
id_medico SERIAL PRIMARY KEY,
nome VARCHAR(150),
email VARCHAR(150),
especialidade VARCHAR(150)
);

CREATE TABLE pacientes (
id_paciente SERIAL PRIMARY KEY,
nome VARCHAR(150),
email VARCHAR(150),
idade INTEGER
);

CREATE TABLE consultas (
id_consultas SERIAL PRIMARY KEY,
id_medico INT NOT NULL,
id_paciente INT NOT NULL,
data_consulta DATE NOT NULL,
hora_consulta DECIMAL,
CONSTRAINT fk_medico FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
CONSTRAINT fk_paciente FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente)
);


INSERT INTO medicos (nome, email, especialidade) VALUES 
 
('Dr.Alberto Macedo', 'albertomacedo@gmail.com', 'cardiologista'),
('Dr.Leonardo Alvarenga', 'leonardo.a.cardoso@hotmail.com', 'neurocirurgiao'),
('Dra.Debora Junqueira', 'junqueiradebora@gmail.com', 'ginecologista'),
('Dr.Marcio Ferreira', 'marcio.ferreira@gmail.com', 'dentista'),
('Dra.Ana Paula Vieira', 'ana.pvieira@hotmail.com', 'dermatologista');


INSERT INTO pacientes (nome, email, idade) VALUES 

('Luiza Camargo Silva', 'camargosilvaluiza@gmail.com', 37),
('Jose Santos Sampaio', 'josesampaio@hotmail.com', 60),
('Matheus Cassiano Alves', 'matheus.cassiano@gmail.com', 15),
('Ygor Teixeira Correia Machado', 'ygor.tc.machado@gmail.com', 23),
('Livia Freire Silva', 'liviasilvaf@gmail.com', 19);


INSERT INTO consultas (id_medico, id_paciente) VALUES
(2, 3, 2024-05-30, 13:40);

