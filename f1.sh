#!/bin/bash
# author:kangsgo
# name: MTK MD 前处理脚本
# method:
#    默认轨迹名称：mdwholeNOjump.xtc，默认tpr为md_0_1.tpr
#    请根据需要修改如下参数
#    总的轨迹数量(ps)
#    numtray=30000
#    每多少间隔提取一次(约300frame)
#    dttray=100

#设置比对结构,选择蛋白
#echo "18 \n 18 \n"|gmx trjconv -f md_nopbc.xtc -n lid.ndx -s md_0_1.tpr -fit rot+trans -o align.xtc
#创建目录迁移
mkdir MTK
cp lidh.ndx MTK/lidh.ndx
cp md.trr MTK/md.trr
cp md.gro MTK/md.gro
cd MTK
#创建txt文件
touch mdpocket_input.txt
#总的轨迹数量(ps)
numtray=60000
#每多少间隔提取一次(约150frame)
dttray=1000
#轨迹变量
numdttray=$[$numtray/$dttray]
echo "轨迹间隔$numdttray"
count=0
num=0
#单位转换
num2=1000 
while [ $num -le $numtray ]
do
	echo "数值为$num"
	echo "count数值为$count"
	echo "ns数值为$ns"
	count=`expr $count + 1`
	num=`expr $dttray \* $count`
	#参数修改为ns，除以1000
	#ns= `expr $num \* 0.1` 
	ns=`echo "scale=2; ${num}/${num2}" |bc`
	#ns=$num
	echo "1 \n"|gmx trjconv -f md.trr -n lidh.ndx -s md.gro -dump $num -o snap_$ns.pdb
	#写入文件
	echo "snap_$ns.pdb\n">>mdpocket_input.txt
done
echo "全部完成"
