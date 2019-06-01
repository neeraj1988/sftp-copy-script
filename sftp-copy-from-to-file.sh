#!/bin/bash
cd /data/MONEY_INS/INPUT/
date=`date +%d%m%Y`
export SSHPASS=K=@12%4uX
sshpass -e sftp -oBatchMode=no -b - AirtelSFTP@10.79.56.102 <<exit
cd /AirtelReports/CashInsurance/Proposalformsfolder/
mget Proposal_Forms_List_InputFile_"$date"_001.csv
lcd /data/MONEY_INS/OUTPUT/
cd /AirtelReports/CashInsurance/PaymentResponsefolder/
put Proposal_Forms_List_OutputFile_"$date"_001.csv
exit

