#!/bin/sh
# يعيد تجميع التطبيق من مصادر src/
# المخرجات: mijhar-mlt.html (الملف المرجعي) و index.html (مدخل الموقع)
cd "$(dirname "$0")"
cat src/01-head.html src/bank/b1_cc.js src/bank/b2_hem.js src/bank/b3_bb.js \
    src/bank/b4_mic.js src/bank/b5_par.js src/bank/b6_imm.js src/bank/b7_his.js \
    src/bank/b8_mgt.js src/bank/b9_extra.js src/99-app.js.html > mijhar-mlt.html
cp mijhar-mlt.html index.html
echo "built: $(grep -c '^Q(' mijhar-mlt.html) questions, $(wc -c < mijhar-mlt.html) bytes"
