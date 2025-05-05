:- dynamic gejala_pos/1;
:- dynamic gejala_neg/1;

ask(sering_bangun_tengah_malam) :-
write("Apakah anda sering terbangun tengah malam?").
ask(sulit_tidur_saat_malam) :-
write("Apakah anda sulit tidur saat malam?").
ask(bangun_terlalu_pagi) :-
write("Apakah anda bangun terlalu pagi?").
ask(rasa_ngantuk_di_siang_hari) :-
write("Apakah anda merasa ngantuk di siang hari?").
ask(sering_mimpi_buruk) :-
write("Apakah anda sering bermimpi buruk?").
ask(kecemasan_atau_stres) :-
write("Apakah anda merasa cemas atau stres?").
asK(mudah_lelah_saat_bangun) :-
write("Apakah anda merasa lelah saat bangun?").
ask(sakit_kepala_pagi_hari) :-
write("Apakah anda sakit kepala saat pagi hari?").

diagnose(G) :-
ask(G),
writeln("(y/t)"),
read(Jawaban),
Jawaban == y,
assertz(gejala_pos(G)).
diagnose(G) :-
assertz(gejala_neg(G)),
fail.

gejala(G) :-
gejala_pos(G), !.
gejala(G) :-
gejala_neg(G), !,
fail.

gejala(G) :-
diagnose(G).

penyakit