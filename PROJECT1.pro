domains
	penyakit,indikasi = symbol
	Pasien,nama, Umur,uumur,nim = string
	Sakit = integer*
	nomor = integer*
	anggota = string*
	Jawaban = char
facts
	gejala(symbol)
	nama(string)
	uumur(string)
predicates
	nondeterm gejala2(nama,indikasi).
	nondeterm respon(char).
	nondeterm go.

	%anggota(nomor,anggota,nim)
	nondeterm cetak_list(anggota).
	nondeterm cetak.
	nondeterm kemenu. 
	nondeterm keluar.
	
clauses
	
	cetak:-write("	anggota 	kelompok	3"),nl,
	cetak_list(["nurnaini","1515015204"]),nl,
	cetak_list(["naufal saputra","1515015210"]),nl,
	cetak_list(["denny adi siswanto","1515015217"]),nl,
	cetak_list(["Yunia Fransiska T","1515015221"]),nl.
	
	keluar :-
		write("terimakasih"),nl.
	
	kemenu:-
		cetak_list([]).
		cetak_list([]).
		cetak_list([H|T]):- write(H),nl,
		cetak_list(T).
	
	
	go :-
        	write("\nNama Pasien : "),
        	readln(Pasien),
        	assert(nama(Pasien)),
        	write ("umur : "),
        	readln(Umur),
        	assert(uumur(Umur)),
        	gejala2(Pasien,_),fail.
        
       	go :-
        	write("Silahkan anda mengecek Penyakit Anda Terlebih dahulu"),nl,
        	write("Mendiagnosis penyakit tersebut."),save("ProjectAI.txt"),nl.
        	
        gejala2(Pasien,g001) :-         %1 
        	write("1. Apakah ",Pasien," merasa Peka terhadap cahaya (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g001)).
        	%balikNanya(Pasien,Reply).
        
	gejala2(Pasien,g002) :- %2
        	write("2. Apakah ",Pasien," merasa Terasa nyeri (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g002)).
        	
        gejala2(Pasien,g003) :- %3
        	write("3. Apakah ",Pasien," merasa bintik nanah berwarna kuning keputihan pada kornea (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g003)).
        	
        
        gejala2(Pasien,g005) :- %5
        	write("4. Apakah ",Pasien," merasa Kelopak mata membengkak (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g005)).
        
        
        
        gejala2(Pasien,g012) :- %12
        	write("5. Apakah ",Pasien," merasa Mata terasa panas (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g012)).        
        
        
        gejala2(Pasien,g014) :- %14
        	write("6. Apakah ",Pasien," merasa Mata berair (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g014)).        
        
        gejala2(Pasien,g015) :- %15
        	write("7. Apakah ",Pasien," merasa Nyeri pada tepi kelopak mata (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g015)).        
        
        
        gejala2(Pasien,g018) :- %18
        	write("8. Apakah ",Pasien," merasa Penglihatan kabur (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g018)).        
        
        
        gejala2(Pasien,g021) :- %21
        	write("9. Apakah ",Pasien," merasa Kesulitan melihat di malam hari (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g021)).        
        
        gejala2(Pasien,g022) :- %22
        	write("10. Apakah ",Pasien," merasa Penurunan ketajaman penglihatan (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g022)).        
        
        gejala2(Pasien,g023) :- %23
        	write("11. Apakah ",Pasien," merasa Kemerahan pada skelra (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g023)).        
        
        gejala2(Pasien,g028) :- %28
        	write("12. Apakah ",Pasien," merasa Mata terasa gatal (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g028)).        
        
        
        gejala2(Pasien,g030) :- %30
        	write("13. Apakah ",Pasien," merasa Konjungtiva menjadi merah (y/n) ?"),
        	respon(Reply),
        	Reply='y', assert(gejala(g030)).        
        
        
        
        respon(Reply) :-
        	readchar(Reply),
        	write(Reply),nl.        
        
      
goal 
write("==================================="),
write("\n=========||  KELOMPOK 3  ||==========="),nl,
write("\n==================================="),
write("\n*********|| KECERDASAN BUATAN ||*********"),
write("\n===================================\n"),
cetak,go.