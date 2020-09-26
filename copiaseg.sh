# Copia de Seguranca. Prepara arquivos para copia
# de seguranca.
# ATENCAO. Executar este shellscript como root ou fazer
# $ sudo ./copiaseg.sh
#
# Fernando Cezar, 26/09/2020

echo
echo " CÓPIA DE SEGURANÇA "
echo
h0=`date +%R`
echo $h0 "... iniciando compilação de arquivos (tar), aguarde ..."
echo 
tar -cf /home/backup/fragata-lucia-`date +%Y%m%d`.tar /home/lucia 
tar -cf /home/backup/fragata-capitao-`date +%Y%m%d`.tar /home/capitao
tar -cf /home/backup/fragata-areacomum-`date +%Y%m%d`.tar /home/areacomum
h0=`date +%R`
echo
echo $h0 " ... compilação de arquivos concluída !"
echo
echo "Cópias de segurança gravadas :"
du -h /home/backup/*
echo
echo

