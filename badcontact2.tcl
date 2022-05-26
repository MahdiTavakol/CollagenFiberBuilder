mol load gro 4-MT-Mineralized2.gro
set sel [atomselect top all]
$sel set beta 0
set bad [atomselect top {type EA  and (( within 5.2 of not type EA )  or ((x--50.0)*(x--50.0)+(y-150.0)*(y-150.0)<6700) or ((x--50.0)*(x--50.0)+(y-424.96)*(y-424.96)<6700) or ((x-197.95)*(x-197.95)+(y-150.0)*(y-150.0)<6700) or ((x-197.95)*(x-197.95)+(y-424.96)*(y-424.96)<6700) )}]
$bad set beta 1
set out [atomselect top {beta 0}]
$out writepdb 4-MT-Mineralized2-5.05211-5.2.pdb
mol delete top
mol load pdb 4-MT-Mineralized2-5.05211-5.2.pdb
set sel [atomselect top all]
$sel writegro 4-MT-Mineralized2-5.05211-5.2.gro
mol delete top
exit
