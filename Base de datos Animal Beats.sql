drop database if exists AnimalBeats;


Create database if not exists AnimalBeats;


Use AnimalBeats;

Create Table Roles(
id int auto_increment primary key,
nombre Enum('Administrador', 'Veterinario', 'Cliente'));


CREATE TABLE Documento(
	id INT AUTO_INCREMENT PRIMARY KEY,
	tipo ENUM('T.I', 'C.C', 'C.E'));



Create table Usuarios(
id int auto_increment  Primary key not null,
Documento Varchar(50) not null,
Correo_Electronico varchar (200) not null,
Contraseña varchar(200) not null,
id_Documento int not null,
FOREIGN KEY (id_Documento) REFERENCES Documento(id));




Create table Mascotas(
id int auto_increment primary key not null,
nombre varchar(100) not null,
especie varchar(100) not null,
raza varchar(100) not null,
edad varchar(100) not null,
id_Usuarios int not null,
foreign key (id_Usuarios) references Usuarios(id)); 


CREATE TABLE Veterinario(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_Usuarios int not null,
    id_Roles int not null,
    Nombre varchar(100) not null,
    FOREIGN KEY (id_Roles) REFERENCES Roles(id),
    foreign key (id_Usuarios) references Usuarios(id));

Create table Servicios(
	id int auto_increment primary key,
    servicio enum ('1','2','3','4','5')
);



Create table Citas(
id int auto_increment primary key,
Descripcion varchar(100),
fecha date not null,
id_Usuarios int not null,
id_Mascotas int not null,
id_Servicios int not null,
id_Veterinario int not null,
foreign key (id_Veterinario) references Veterinario(id),
foreign key (id_Usuarios) references Usuarios(id),
foreign key (id_Mascotas) references Mascotas(id),
foreign key (id_Servicios) references Servicios(id));


CREATE TABLE Administrador(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_Usuarios int not null,
    id_Roles int not null,
    Nombre varchar(100) not null,
    FOREIGN KEY (id_Roles) REFERENCES Roles(id),
    foreign key (id_Usuarios) references Usuarios(id));


CREATE TABLE Cliente(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_Usuarios int not null,
    id_Roles int not null,
    Nombre varchar(100) NOT NULL,
    FOREIGN KEY (id_Roles) REFERENCES Roles(id) on delete cascade,
    foreign key (id_Usuarios) references Usuarios(id));
    
    
    Create table Alertas(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_Veterinario int not null, 
    id_Usuarios int not null,
    id_Mascotas int not null,
    Fecha date not null,
    descripcion TEXT not null,
    foreign key (id_Veterinario) references Veterinario(id) on delete cascade,
	foreign key (id_Mascotas) references Mascotas(id) on delete cascade,
    foreign key (id_Usuarios) references Usuarios(id) on delete cascade
);







 
