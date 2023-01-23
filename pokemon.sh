#!/bin/bash
atq=$1
def=$2
type_pok_1=$3
type_pok_2=$4
if [[("$type_pok_1"==plante) && ("$type_pok_2"==eau)]]; then
effective=2
fi
if [[("$type_pok_1"==feu) && ("$type_pok_2"==plante)]]; then
effective=2
fi
if [[("$type_pok_1"==eau) && ("$type_pok_2"==feu)]]; then
effective=2
fi
echo $atq $def $effective
echo les dégats infligés sont : $((50*$atq/$def*$effective))
