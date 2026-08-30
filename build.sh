#!/bin/sh
# يعيد تجميع mijhar-mlt.html من مصادر src/
cd "$(dirname "$0")"
cat src/01-head.html src/bank/b1_cc.js src/bank/b2_hem.js src/bank/b3_bb.js \
    src/bank/b4_mic.js src/bank/b5_par.js src/bank/b6_imm.js src/bank/b7_his.js \
    src/bank/b8_mgt.js src/bank/b9_extra.js src/99-app.js.html > mijhar-mlt.html
echo "built: $(grep -c '^Q(' mijhar-mlt.html) questions, $(wc -c < mijhar-mlt.html) bytes"
