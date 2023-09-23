# Удобное редактирование PATH
echo ${PATH} > t1
vi t1
export PATH=$(cat t1)
