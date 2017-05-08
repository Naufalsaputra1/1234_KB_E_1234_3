

facts
gejala(string)
nama(String)
uumur(string)

predicates
nondeterm hypothesis(symbol)
nondeterm sakit
clauses

hypothesis(ulkus_kornea):- 
        gejala("g001"),
        gejala("g002"),
        gejala("g003"),
        gejala("g005"),write("\nterdiagnosa penyakit : ulkus kornea","\npenyakit ini menyebabkan infeksi pada kornea bagian luar akibat jamur,virus,protozoa atau beberapa jenis bakteri \npenyakit ini bisa terjadi di seluruh permukaan kornea sampai bagian dalam dan belakang kornea\n").
       
        
hypothesis(keratozkonus):-
	gejala("g001"),
	gejala("g014"),
	gejala("g018"),write("terdiagnosa penyakit : keratozkonus","penyakit ini terjadi kerika kornea anda menipis dan menonjol ke luar membentuk kerucut secara bertahap \nkornea yang membentuk kerucut menyebabkan panfangan kabur dan sensitivitas yang tinggi terhadap cahaya\n").
        
	
hypothesis(konjungtivitis):-
	gejala("g001"),
	gejala("g002"),
	gejala("g012"),
	gejala("g014"),write("terdiagnosa penyakit : konjungtivitis","penyakit ini adalah iritasi bagian selaput yang melapisi mata.\nGejala penyakit mata ini biasanya mata memerah,berair ,penglihatan kita menjadi kabur\n").
				
hypothesis(katarak):-
	gejala("g001"),
	gejala("g002"),
	gejala("g021"),
	gejala("g022"),write("terdiagnosa penyakit : katarak","penyakit ini ditandai dengan salah satu kerusakan pada mata yang ditandai dengan adanya kekeruhan pada lensa mata\n").
		
hypothesis(alergi_mata_merah):-
	gejala("g012"),
	gejala("g028"),
	gejala("g030"),write("terdiagnosa penyakit : alergi_mata_merah","penyakit ini biasanya ketika mata merah terjadi pembuluh mata mengalami iritasi atau bengakak\nhal ini terjadi karena udara,debu,alergi atau sebagai akibat dari kondisi yang lebih serius\n ").
	
hypothesis(endoftalmitis):-
	gejala("g001"),
	gejala("g002"),
	gejala("g023"),write("terdiagnosa penyakit : endoftalmitis","penyakit ini merupakan infeksi yang terjadi di lapisan mata bagian dalam sehingga bola mata bernanah\nBiasa terjadi mata tertutsuk eperti jarum dan baang tajam lainya\n").


hypothesis(mata_bintilan):-
	gejala("g005"),
	gejala("g014"),
	gejala("g015"),write("terdiagnosa penyakit : mata_bintilan","penyakit ini bentuk lain dari infeksi di bagian bwah mata dimana kelopak mata membenkak dan merah,bentuk benjolan seperti jerawat di atasnya \nTimbilan bukanlah masalah yang serius\n ").
	
hypothesis(sehat):-
	write("penyakit yang terdiagnosa"),nl.
		
sakit:-
nama(Pasien),nl,uumur(Umur),write("nama	:", Pasien,"\n","Umur	:",Umur),nl,hypothesis(_),nl.

        
goal
consult("ProjectAI.txt"),
sakit.