CREATE TABLE categorias
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE genero
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE actricesyactores
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE catalogo
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    poster       VARCHAR(255),
    titulo       VARCHAR(255) NOT NULL,
    categoria_id INT,
    resumen      TEXT,
    temporadas   INT,
    trailer      VARCHAR(255),
    FOREIGN KEY (categoria_id) REFERENCES categorias (id)
);

CREATE TABLE catalogo_reparto
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    catalogo_id INT,
    actor_id    INT,
    FOREIGN KEY (catalogo_id) REFERENCES catalogo (id),
    FOREIGN KEY (actor_id) REFERENCES actricesyactores (id)
);

CREATE TABLE catalogo_genero
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    catalogo_id INT,
    genero_id   INT,
    FOREIGN KEY (catalogo_id) REFERENCES catalogo (id),
    FOREIGN KEY (genero_id) REFERENCES genero (id)
);

INSERT INTO categorias (nombre)
VALUES ('Serie');
INSERT INTO categorias (nombre)
VALUES ('Película');
INSERT INTO genero (nombre)
VALUES ('Ciencia Ficción');
INSERT INTO genero (nombre)
VALUES ('Hechos veríficos');
INSERT INTO genero (nombre)
VALUES ('Acción');
INSERT INTO genero (nombre)
VALUES ('Suspenso');
INSERT INTO genero (nombre)
VALUES ('Sci-Fi');
INSERT INTO genero (nombre)
VALUES ('Historia');
INSERT INTO genero (nombre)
VALUES ('Comedia');
INSERT INTO genero (nombre)
VALUES ('Ficción');
INSERT INTO genero (nombre)
VALUES ('Tecnología');
INSERT INTO genero (nombre)
VALUES ('Sucesos');
INSERT INTO genero (nombre)
VALUES ('Terror');
INSERT INTO genero (nombre)
VALUES ('¿Ficción?');
INSERT INTO genero (nombre)
VALUES ('Familia');
INSERT INTO genero (nombre)
VALUES ('Crimen');
INSERT INTO genero (nombre)
VALUES ('Fantasía');
INSERT INTO genero (nombre)
VALUES ('Intriga');
INSERT INTO genero (nombre)
VALUES ('Aventura');
INSERT INTO genero (nombre)
VALUES ('Western');
INSERT INTO genero (nombre)
VALUES ('Drama');
INSERT INTO genero (nombre)
VALUES ('Misterio');
INSERT INTO genero (nombre)
VALUES ('Hechos verídicos');
INSERT INTO actricesyactores (nombre)
VALUES ('Chris Messina');
INSERT INTO actricesyactores (nombre)
VALUES ('Matt Damon');
INSERT INTO actricesyactores (nombre)
VALUES ('Kerry Bishé');
INSERT INTO actricesyactores (nombre)
VALUES ('Kaley Cuoco');
INSERT INTO actricesyactores (nombre)
VALUES ('Moses Ingram');
INSERT INTO actricesyactores (nombre)
VALUES ('Robert Patrick');
INSERT INTO actricesyactores (nombre)
VALUES ('Emilia Clarke');
INSERT INTO actricesyactores (nombre)
VALUES ('Chris Bartlett');
INSERT INTO actricesyactores (nombre)
VALUES ('Emmy Raver-Lampman');
INSERT INTO actricesyactores (nombre)
VALUES ('Rachel Weisz');
INSERT INTO actricesyactores (nombre)
VALUES ('Ed Harris');
INSERT INTO actricesyactores (nombre)
VALUES ('Misty Rosas');
INSERT INTO actricesyactores (nombre)
VALUES ('David Schwimmer');
INSERT INTO actricesyactores (nombre)
VALUES ('Vincent D''Onofrio');
INSERT INTO actricesyactores (nombre)
VALUES ('Madelaine Petsch');
INSERT INTO actricesyactores (nombre)
VALUES ('Jared Harris');
INSERT INTO actricesyactores (nombre)
VALUES ('Cailee Spaeny');
INSERT INTO actricesyactores (nombre)
VALUES ('Scott Eastwood');
INSERT INTO actricesyactores (nombre)
VALUES ('Kate Mara');
INSERT INTO actricesyactores (nombre)
VALUES ('Giancarlo Esposito');
INSERT INTO actricesyactores (nombre)
VALUES ('Judy Greer');
INSERT INTO actricesyactores (nombre)
VALUES ('Lili Reinhart');
INSERT INTO actricesyactores (nombre)
VALUES ('Nick Robinson');
INSERT INTO actricesyactores (nombre)
VALUES ('Johnny Galecki');
INSERT INTO actricesyactores (nombre)
VALUES ('Robert De Niro');
INSERT INTO actricesyactores (nombre)
VALUES ('Danai Gurira');
INSERT INTO actricesyactores (nombre)
VALUES ('Karen Gillan');
INSERT INTO actricesyactores (nombre)
VALUES ('John Malkovich');
INSERT INTO actricesyactores (nombre)
VALUES ('Bill Skarsgård');
INSERT INTO actricesyactores (nombre)
VALUES ('Jennifer Ehle');
INSERT INTO actricesyactores (nombre)
VALUES ('Will Smith');
INSERT INTO actricesyactores (nombre)
VALUES ('Melissa Rauch');
INSERT INTO actricesyactores (nombre)
VALUES ('Alice Braga');
INSERT INTO actricesyactores (nombre)
VALUES ('Jude Law');
INSERT INTO actricesyactores (nombre)
VALUES ('Christian Bale');
INSERT INTO actricesyactores (nombre)
VALUES ('Thomas Brodie-Sangster');
INSERT INTO actricesyactores (nombre)
VALUES ('James Weber Brown');
INSERT INTO actricesyactores (nombre)
VALUES ('Jesse L. Martin');
INSERT INTO actricesyactores (nombre)
VALUES ('Alicia Vikander');
INSERT INTO actricesyactores (nombre)
VALUES ('Charlie Tahan');
INSERT INTO actricesyactores (nombre)
VALUES ('Stellan Skarsgård');
INSERT INTO actricesyactores (nombre)
VALUES ('Nina Bergman');
INSERT INTO actricesyactores (nombre)
VALUES ('Lia Williams');
INSERT INTO actricesyactores (nombre)
VALUES ('William Hurt');
INSERT INTO actricesyactores (nombre)
VALUES ('Jeff Daniels');
INSERT INTO actricesyactores (nombre)
VALUES ('Courteney Cox');
INSERT INTO actricesyactores (nombre)
VALUES ('Ewan McGregor');
INSERT INTO actricesyactores (nombre)
VALUES ('Claire Foy');
INSERT INTO actricesyactores (nombre)
VALUES ('Margot Robbie');
INSERT INTO actricesyactores (nombre)
VALUES ('Chris Hemsworth');
INSERT INTO actricesyactores (nombre)
VALUES ('Jessica Chastain');
INSERT INTO actricesyactores (nombre)
VALUES ('Mark Ruffalo');
INSERT INTO actricesyactores (nombre)
VALUES ('Kevin Hart');
INSERT INTO actricesyactores (nombre)
VALUES ('Evan Rachel Wood');
INSERT INTO actricesyactores (nombre)
VALUES ('Theo James');
INSERT INTO actricesyactores (nombre)
VALUES ('Shea Whigham');
INSERT INTO actricesyactores (nombre)
VALUES ('Helena Bonham Carter');
INSERT INTO actricesyactores (nombre)
VALUES ('Colin Farrell');
INSERT INTO actricesyactores (nombre)
VALUES ('Awkwafina');
INSERT INTO actricesyactores (nombre)
VALUES ('Jeremy Renner');
INSERT INTO actricesyactores (nombre)
VALUES ('James McAvoy');
INSERT INTO actricesyactores (nombre)
VALUES ('Corrine Koslo');
INSERT INTO actricesyactores (nombre)
VALUES ('Jeffrey Wright');
INSERT INTO actricesyactores (nombre)
VALUES ('Robert Downey Jr.');
INSERT INTO actricesyactores (nombre)
VALUES ('Marion Cotillard');
INSERT INTO actricesyactores (nombre)
VALUES ('Enver Gjokaj');
INSERT INTO actricesyactores (nombre)
VALUES ('Olivia Colman');
INSERT INTO actricesyactores (nombre)
VALUES ('Geraldine James');
INSERT INTO actricesyactores (nombre)
VALUES ('Danielle Panabaker');
INSERT INTO actricesyactores (nombre)
VALUES ('Mayim Bialik');
INSERT INTO actricesyactores (nombre)
VALUES ('Tobias Menzies');
INSERT INTO actricesyactores (nombre)
VALUES ('Kate Winslet');
INSERT INTO actricesyactores (nombre)
VALUES ('Mary Elizabeth Winstead');
INSERT INTO actricesyactores (nombre)
VALUES ('O.T. Fagbenle');
INSERT INTO actricesyactores (nombre)
VALUES ('Jason Clarke');
INSERT INTO actricesyactores (nombre)
VALUES ('Kate Walsh');
INSERT INTO actricesyactores (nombre)
VALUES ('Ryan Gosling');
INSERT INTO actricesyactores (nombre)
VALUES ('Chadwick Boseman');
INSERT INTO actricesyactores (nombre)
VALUES ('Rosie Perez');
INSERT INTO actricesyactores (nombre)
VALUES ('Lucas Jade Zumann');
INSERT INTO actricesyactores (nombre)
VALUES ('Kit Harington');
INSERT INTO actricesyactores (nombre)
VALUES ('Sean Bean');
INSERT INTO actricesyactores (nombre)
VALUES ('Joaquin Phoenix');
INSERT INTO actricesyactores (nombre)
VALUES ('Common');
INSERT INTO actricesyactores (nombre)
VALUES ('Janina Elkin');
INSERT INTO actricesyactores (nombre)
VALUES ('Jing Tian');
INSERT INTO actricesyactores (nombre)
VALUES ('Lupita Nyong''o');
INSERT INTO actricesyactores (nombre)
VALUES ('Louis Partridge');
INSERT INTO actricesyactores (nombre)
VALUES ('Adeel Akhtar');
INSERT INTO actricesyactores (nombre)
VALUES ('Jurnee Smollett');
INSERT INTO actricesyactores (nombre)
VALUES ('Bruce Harwood');
INSERT INTO actricesyactores (nombre)
VALUES ('Omar Epps');
INSERT INTO actricesyactores (nombre)
VALUES ('David Harbour');
INSERT INTO actricesyactores (nombre)
VALUES ('Matt Smith');
INSERT INTO actricesyactores (nombre)
VALUES ('Génesis Rodríguez');
INSERT INTO actricesyactores (nombre)
VALUES ('Claire Selby');
INSERT INTO actricesyactores (nombre)
VALUES ('Chloe Pirrie');
INSERT INTO actricesyactores (nombre)
VALUES ('Matthew Perry');
INSERT INTO actricesyactores (nombre)
VALUES ('Carlos Valdes');
INSERT INTO actricesyactores (nombre)
VALUES ('Dalila Bela');
INSERT INTO actricesyactores (nombre)
VALUES ('Sophie Turner');
INSERT INTO actricesyactores (nombre)
VALUES ('Ioan Gruffudd');
INSERT INTO actricesyactores (nombre)
VALUES ('Martin Freeman');
INSERT INTO actricesyactores (nombre)
VALUES ('Irrfan Khan');
INSERT INTO actricesyactores (nombre)
VALUES ('Jessie Buckley');
INSERT INTO actricesyactores (nombre)
VALUES ('Salli Richardson-Whitfield');
INSERT INTO actricesyactores (nombre)
VALUES ('Henry Cavill');
INSERT INTO actricesyactores (nombre)
VALUES ('Simon Helberg');
INSERT INTO actricesyactores (nombre)
VALUES ('Thandie Newton');
INSERT INTO actricesyactores (nombre)
VALUES ('Toby Huss');
INSERT INTO actricesyactores (nombre)
VALUES ('Lisa Kudrow');
INSERT INTO actricesyactores (nombre)
VALUES ('Claire Fox');
INSERT INTO actricesyactores (nombre)
VALUES ('Willow Smith');
INSERT INTO actricesyactores (nombre)
VALUES ('Jennifer Aniston');
INSERT INTO actricesyactores (nombre)
VALUES ('Luke Allen-Gale');
INSERT INTO actricesyactores (nombre)
VALUES ('Millie Bobby Brown');
INSERT INTO actricesyactores (nombre)
VALUES ('Gillian Anderson');
INSERT INTO actricesyactores (nombre)
VALUES ('David Duchovny');
INSERT INTO actricesyactores (nombre)
VALUES ('Alana Cavanaugh');
INSERT INTO actricesyactores (nombre)
VALUES ('Chris Pratt');
INSERT INTO actricesyactores (nombre)
VALUES ('Chris Evans');
INSERT INTO actricesyactores (nombre)
VALUES ('Pedro Pascal');
INSERT INTO actricesyactores (nombre)
VALUES ('Grant Gustin');
INSERT INTO actricesyactores (nombre)
VALUES ('Dwayne Johnson');
INSERT INTO actricesyactores (nombre)
VALUES ('Ray Winstone');
INSERT INTO actricesyactores (nombre)
VALUES ('Benjamin Sokolow');
INSERT INTO actricesyactores (nombre)
VALUES ('Candice Patton');
INSERT INTO actricesyactores (nombre)
VALUES ('Mackenzie Davis');
INSERT INTO actricesyactores (nombre)
VALUES ('Corey Johnson');
INSERT INTO actricesyactores (nombre)
VALUES ('Gana Bayarsaikhan');
INSERT INTO actricesyactores (nombre)
VALUES ('Kunal Nayyar');
INSERT INTO actricesyactores (nombre)
VALUES ('Nick Jonas');
INSERT INTO actricesyactores (nombre)
VALUES ('Josh Lucas');
INSERT INTO actricesyactores (nombre)
VALUES ('Dominic Mafham');
INSERT INTO actricesyactores (nombre)
VALUES ('Mädchen Amick');
INSERT INTO actricesyactores (nombre)
VALUES ('Geena Davis');
INSERT INTO actricesyactores (nombre)
VALUES ('Elliot Page');
INSERT INTO actricesyactores (nombre)
VALUES ('Jack Black');
INSERT INTO actricesyactores (nombre)
VALUES ('Nikolaj Coster-Waldau');
INSERT INTO actricesyactores (nombre)
VALUES ('David Castañeda');
INSERT INTO actricesyactores (nombre)
VALUES ('Peter Dinklage');
INSERT INTO actricesyactores (nombre)
VALUES ('Isaiah Mustafa');
INSERT INTO actricesyactores (nombre)
VALUES ('Tom Cavanagh');
INSERT INTO actricesyactores (nombre)
VALUES ('Emily Watson');
INSERT INTO actricesyactores (nombre)
VALUES ('Burn Gorman');
INSERT INTO actricesyactores (nombre)
VALUES ('Patrick Fugit');
INSERT INTO actricesyactores (nombre)
VALUES ('Domhnall Gleeson');
INSERT INTO actricesyactores (nombre)
VALUES ('Oscar Isaac');
INSERT INTO actricesyactores (nombre)
VALUES ('Omar Sy');
INSERT INTO actricesyactores (nombre)
VALUES ('Harry Melling');
INSERT INTO actricesyactores (nombre)
VALUES ('Rinko Kikuchi');
INSERT INTO actricesyactores (nombre)
VALUES ('Tom Braidwood');
INSERT INTO actricesyactores (nombre)
VALUES ('Emma Thompson');
INSERT INTO actricesyactores (nombre)
VALUES ('Scoot McNairy');
INSERT INTO actricesyactores (nombre)
VALUES ('Vincent Piazza');
INSERT INTO actricesyactores (nombre)
VALUES ('Miranda Cosgrove');
INSERT INTO actricesyactores (nombre)
VALUES ('Matt LeBlanc');
INSERT INTO actricesyactores (nombre)
VALUES ('Robert Sheehan');
INSERT INTO actricesyactores (nombre)
VALUES ('Sam Claflin');
INSERT INTO actricesyactores (nombre)
VALUES ('John Boyega');
INSERT INTO actricesyactores (nombre)
VALUES ('Bill Hader');
INSERT INTO actricesyactores (nombre)
VALUES ('Dash Mihok');
INSERT INTO actricesyactores (nombre)
VALUES ('Marisol Nichols');
INSERT INTO actricesyactores (nombre)
VALUES ('Corey Stoll');
INSERT INTO actricesyactores (nombre)
VALUES ('R. H. Thomson');
INSERT INTO actricesyactores (nombre)
VALUES ('Frances Conroy');
INSERT INTO actricesyactores (nombre)
VALUES ('Mitch Pileggi');
INSERT INTO actricesyactores (nombre)
VALUES ('Toby Jones');
INSERT INTO actricesyactores (nombre)
VALUES ('Gwyneth Paltrow');
INSERT INTO actricesyactores (nombre)
VALUES ('Peter Ferdinando');
INSERT INTO actricesyactores (nombre)
VALUES ('Carl Weathers');
INSERT INTO actricesyactores (nombre)
VALUES ('Jay Ryan');
INSERT INTO actricesyactores (nombre)
VALUES ('Florence Pugh');
INSERT INTO actricesyactores (nombre)
VALUES ('Rio Hackford');
INSERT INTO actricesyactores (nombre)
VALUES ('Emily Bayiokos');
INSERT INTO actricesyactores (nombre)
VALUES ('Kristen Wiig');
INSERT INTO actricesyactores (nombre)
VALUES ('Jorja Fox');
INSERT INTO actricesyactores (nombre)
VALUES ('Jim Parsons');
INSERT INTO actricesyactores (nombre)
VALUES ('Aidan Gallagher');
INSERT INTO actricesyactores (nombre)
VALUES ('Adam Nagaitis');
INSERT INTO actricesyactores (nombre)
VALUES ('Vanesa Kirby');
INSERT INTO actricesyactores (nombre)
VALUES ('Kyle Chandler');
INSERT INTO actricesyactores (nombre)
VALUES ('Zazie Beetz');
INSERT INTO actricesyactores (nombre)
VALUES ('Camila Mendes');
INSERT INTO actricesyactores (nombre)
VALUES ('Lorina Kamburova');
INSERT INTO actricesyactores (nombre)
VALUES ('Tessa Thompson');
INSERT INTO actricesyactores (nombre)
VALUES ('Casey Cott');
INSERT INTO actricesyactores (nombre)
VALUES ('Sonoya Mizuno');
INSERT INTO actricesyactores (nombre)
VALUES ('Luke Hemsworth');
INSERT INTO actricesyactores (nombre)
VALUES ('Rhona Mitra');
INSERT INTO actricesyactores (nombre)
VALUES ('Jon Bernthal');
INSERT INTO actricesyactores (nombre)
VALUES ('Michael B. Jordan');
INSERT INTO actricesyactores (nombre)
VALUES ('Bryce Dallas Howard');
INSERT INTO actricesyactores (nombre)
VALUES ('Daniel Kaluuya');
INSERT INTO actricesyactores (nombre)
VALUES ('Angus Macfadyen');
INSERT INTO actricesyactores (nombre)
VALUES ('Paul Ritter');
INSERT INTO actricesyactores (nombre)
VALUES ('Noah Jupe');
INSERT INTO actricesyactores (nombre)
VALUES ('Lee Pace');
INSERT INTO actricesyactores (nombre)
VALUES ('Scarlett Johansson');
INSERT INTO actricesyactores (nombre)
VALUES ('Brett Cullen');
INSERT INTO actricesyactores (nombre)
VALUES ('Michael Peña');
INSERT INTO actricesyactores (nombre)
VALUES ('Lena Headey');
INSERT INTO actricesyactores (nombre)
VALUES ('Anya Taylor-Joy');
INSERT INTO actricesyactores (nombre)
VALUES ('Amybeth McNulty');
INSERT INTO actricesyactores (nombre)
VALUES ('Stacy Martin');
INSERT INTO actricesyactores (nombre)
VALUES ('Caitriona Balfe');
INSERT INTO actricesyactores (nombre)
VALUES ('Amy Manson');
INSERT INTO actricesyactores (nombre)
VALUES ('Laurence Fishburne');
INSERT INTO actricesyactores (nombre)
VALUES ('Tom Hopper');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (3, '/posters/3.jpg', 'The Mandalorian', 1,
        'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.',
        2, 'https://www.youtube.com/embed/aOC8E8z_ifw');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (4, '/posters/4.jpg', 'The Umbrella Academy', 1,
        'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.',
        1, 'NULL');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (5, '/posters/5.jpg', 'Gambito de Dama', 1,
        'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.',
        1, 'NULL');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (2, '/posters/2.jpg', 'Riverdale', 1,
        'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.',
        5, 'NULL');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (1, '/posters/1.jpg', 'The Crown', 1,
        'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.',
        4, 'NULL');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (6, '/posters/6.jpg', 'Enola Holmes', 2,
        'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.',
        NULL, 'NULL');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (7, '/posters/7.jpg', 'Guasón', 2,
        'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.',
        NULL, 'https://www.youtube.com/embed/zAGVQLHvwOY');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (8, '/posters/8.jpg', 'Avengers: End Game', 2,
        'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.',
        NULL, 'NULL');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (9, '/posters/9.jpg', 'Juego de tronos', 1,
        'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.',
        8, 'NULL');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (10, '/posters/10.jpg', 'The Flash', 1,
        'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.',
        6, 'NULL');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (11, '/posters/11.jpg', 'The Big Bang Theory', 1,
        'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.',
        12, 'https://www.youtube.com/embed/WBb3fojgW0Q');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (12, '/posters/12.jpg', 'Friends', 1,
        '''Friends'' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.',
        10, 'NULL');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (13, '/posters/13.jpg', 'Anne with an ''E''', 1,
        'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.',
        2, 'NULL');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (14, '/posters/14.jpg', 'Expedientes Secretos ''X''', 1,
        'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de ''siniestro''',
        11, 'https://www.youtube.com/embed/KKziOmsJxzE');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (15, '/posters/15.jpg', 'Chernobyl', 1,
        'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.',
        1, 'https://www.youtube.com/embed/s9APLXM9Ei8');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (16, '/posters/16.jpg', 'Westworld', 1,
        '''Westworld'' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.',
        3, 'https://www.youtube.com/embed/qLFBcdd6Qw0');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (17, '/posters/17.jpg', 'Halt and Catch Fire', 1, 'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey.
 Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).',
        4, 'https://www.youtube.com/embed/pWrioRji60A');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (18, '/posters/18.jpg', 'Ava', 2,
        'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.',
        NULL, '');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (19, '/posters/19.jpg', 'Aves de presa y la fantabulosa emancipación de una Harley Quinn', 2,
        'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.',
        NULL, '');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (20, '/posters/20.jpg', 'Archivo', 2,
        '2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.',
        NULL, 'https://www.youtube.com/embed/VHSoCnDioAo');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (21, '/posters/21.jpg', 'Jumanji - The next level', 2,
        'Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?',
        NULL, 'https://www.youtube.com/embed/rBxcF-r9Ibs');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (22, '/posters/22.jpg', '3022', 2,
        'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.',
        NULL, 'https://www.youtube.com/embed/AGQ7OkmIx4Q');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (23, '/posters/23.jpg', 'IT - Capítulo 2', 2,
        'En este segundo capitulo Han pasado 27 años desde que el ''Club de los Perdedores'', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.',
        NULL, 'https://www.youtube.com/embed/hZeFeYSmBcg');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (24, '/posters/24.jpg', 'Pantera Negra', 2,
        'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.',
        NULL, 'https://www.youtube.com/embed/BE6inv8Xh4A');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (25, '/posters/25.jpg', 'Contra lo imposible (Ford versus Ferrari)', 2,
        'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.',
        NULL, 'https://www.youtube.com/embed/SOVb0-2g1Q0');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (26, '/posters/26.jpg', 'Centígrados', 2,
        'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.',
        NULL, '');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (27, '/posters/27.jpg', 'DOOM: Aniquilación', 2,
        'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.',
        NULL, 'https://www.youtube.com/embed/nat3u3gAVLE');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (28, '/posters/28.jpg', 'Contagio', 2,
        'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.',
        NULL, 'https://www.youtube.com/embed/4sYSyuuLk5g');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (29, '/posters/29.jpg', 'Viuda Negra', 2,
        'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.',
        NULL, 'https://www.youtube.com/embed/BIn8iANwEog');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (30, '/posters/30.jpg', 'The Martian', 2,
        'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.',
        NULL, 'https://www.youtube.com/embed/XvB58bCVfng');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (31, '/posters/31.jpg', 'Ex-Machina', 2,
        'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.',
        NULL, 'https://www.youtube.com/embed/XRYL5spvEcI');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (32, '/posters/32.jpg', 'Jurassic World', 2,
        'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.',
        NULL, '');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (33, '/posters/33.jpg', 'Soy leyenda', 2,
        'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.',
        NULL, 'https://www.youtube.com/embed/dtKMEAXyPkg');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (34, '/posters/34.jpg', 'El primer hombre en la luna', 2,
        'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.',
        NULL, '');
INSERT INTO catalogo (id, poster, titulo, categoria_id, resumen, temporadas, trailer)
VALUES (35, '/posters/35.jpg', 'Titanes del pacífico - La insurrección', 2,
        'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.',
        NULL, '');
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (3, 122);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (3, 171);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (3, 12);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (3, 8);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (3, 174);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (3, 20);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (4, 209);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (4, 140);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (4, 9);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (4, 158);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (4, 179);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (4, 137);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (5, 203);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (5, 36);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (5, 150);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (5, 5);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (5, 97);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (5, 85);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (2, 22);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (2, 187);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (2, 184);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (2, 163);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (2, 15);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (2, 135);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (1, 112);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (1, 67);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (1, 94);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (1, 71);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (1, 181);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (1, 57);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (6, 116);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (6, 107);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (6, 159);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (6, 57);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (6, 88);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (6, 89);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (7, 83);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (7, 25);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (7, 183);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (7, 166);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (7, 200);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (7, 56);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (8, 64);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (8, 121);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (8, 52);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (8, 50);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (8, 199);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (8, 60);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (9, 7);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (9, 202);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (9, 101);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (9, 81);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (9, 141);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (9, 139);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (10, 123);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (10, 99);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (10, 69);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (10, 127);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (10, 38);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (10, 143);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (11, 178);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (11, 24);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (11, 4);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (11, 108);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (11, 131);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (11, 32);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (11, 70);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (12, 114);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (12, 46);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (12, 111);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (12, 13);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (12, 98);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (12, 157);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (13, 204);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (13, 68);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (13, 165);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (13, 62);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (13, 100);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (13, 80);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (14, 117);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (14, 118);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (14, 167);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (14, 6);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (14, 152);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (14, 91);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (15, 16);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (15, 41);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (15, 144);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (15, 196);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (15, 105);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (15, 180);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (16, 54);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (16, 109);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (16, 63);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (16, 186);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (16, 11);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (16, 189);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (17, 198);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (17, 154);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (17, 128);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (17, 3);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (17, 110);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (17, 119);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (18, 51);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (18, 28);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (18, 58);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (18, 84);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (18, 136);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (18, 102);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (19, 49);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (19, 47);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (19, 73);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (19, 90);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (19, 79);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (19, 1);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (20, 205);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (20, 190);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (20, 55);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (20, 170);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (20, 43);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (20, 168);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (21, 124);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (21, 53);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (21, 138);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (21, 27);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (21, 59);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (21, 132);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (22, 156);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (22, 76);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (22, 92);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (22, 195);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (22, 177);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (22, 66);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (23, 29);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (23, 51);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (23, 161);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (23, 61);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (23, 142);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (23, 172);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (24, 78);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (24, 192);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (24, 87);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (24, 26);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (24, 103);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (24, 194);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (25, 35);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (25, 2);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (25, 206);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (25, 133);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (25, 197);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (25, 191);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (26, 95);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (26, 155);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (26, 126);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (26, 175);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (27, 207);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (27, 115);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (27, 42);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (27, 134);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (27, 37);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (27, 185);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (28, 65);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (28, 2);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (28, 208);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (28, 34);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (28, 72);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (28, 30);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (28, 169);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (29, 199);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (29, 173);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (29, 93);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (29, 74);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (29, 10);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (29, 44);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (29, 125);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (30, 2);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (30, 51);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (30, 176);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (30, 45);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (30, 201);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (30, 82);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (30, 19);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (31, 39);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (31, 147);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (31, 148);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (31, 188);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (31, 129);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (31, 96);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (31, 130);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (32, 193);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (32, 120);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (32, 104);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (32, 14);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (32, 149);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (32, 23);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (32, 21);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (33, 31);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (33, 33);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (33, 40);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (33, 162);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (33, 106);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (33, 113);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (33, 153);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (34, 77);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (34, 48);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (34, 75);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (34, 182);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (34, 164);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (34, 146);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (35, 160);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (35, 18);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (35, 17);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (35, 86);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (35, 151);
INSERT INTO catalogo_reparto (catalogo_id, actor_id)
VALUES (35, 145);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (3, 1);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (3, 15);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (4, 1);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (4, 15);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (5, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (5, 8);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (5, 10);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (2, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (2, 20);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (2, 8);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (1, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (1, 21);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (6, 8);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (6, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (6, 20);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (7, 14);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (7, 4);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (7, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (8, 17);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (8, 5);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (8, 3);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (9, 17);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (9, 15);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (9, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (10, 1);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (10, 15);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (11, 7);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (11, 15);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (11, 8);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (12, 7);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (12, 13);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (12, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (13, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (13, 13);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (13, 18);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (14, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (14, 1);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (15, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (15, 21);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (16, 18);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (16, 1);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (17, 8);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (17, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (17, 9);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (18, 3);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (18, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (18, 4);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (19, 3);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (19, 8);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (19, 7);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (20, 3);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (20, 5);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (20, 4);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (21, 7);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (21, 8);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (21, 17);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (22, 1);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (22, 4);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (23, 11);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (23, 4);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (23, 15);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (24, 3);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (24, 17);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (24, 15);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (25, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (25, 6);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (25, 17);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (26, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (26, 4);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (26, 16);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (27, 3);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (27, 5);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (27, 11);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (28, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (28, 4);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (28, 12);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (29, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (29, 3);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (29, 17);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (30, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (30, 5);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (30, 17);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (31, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (31, 5);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (31, 4);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (32, 4);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (32, 17);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (32, 8);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (33, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (33, 11);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (33, 8);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (34, 19);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (34, 2);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (35, 3);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (35, 15);
INSERT INTO catalogo_genero (catalogo_id, genero_id)
VALUES (35, 5);