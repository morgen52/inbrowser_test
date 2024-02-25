const express = require('express');
const path = require('path');
const fs = require('fs');

const app = express();
const PORT = 7070;

// set static folder
app.use(express.static(path.join(__dirname, '.')));

app.use(express.json());
// receive upload json data
app.post('/upload', (req, res) => {
    let data = req.body;

    let device = data.device;
    let url = data.url.split("/").filter(part => part !== "").slice(-2).join("/");
    data.url = url;
    let browser = data.browser;
    if(data.browser.includes("Edg")) {
        browser = "Edge";
    }
    else if(data.browser.includes("Chrome")) {
        browser = "Chrome";
    }
    else if(data.browser.includes("Firefox")) {
        browser = "Firefox";
    }
    else if(data.browser.includes("Safari")) {
        browser = "Safari";
    }
    else {
        browser = "Other";
    }

    console.log(device, url, browser);

    // open the existing file
    const filePath = path.join(__dirname, 'js_results', device, 'data.json');
    if (!fs.existsSync(path.dirname(filePath))) {
        fs.mkdirSync(path.dirname(filePath), { recursive: true });
    }
    // load the existing data
    let existingData = {};
    if(fs.existsSync(filePath)) {
        if (fs.readFileSync(filePath).length > 0)
            existingData = JSON.parse(fs.readFileSync(filePath));
    }
    // add the new data
    if (!existingData[url]) {
        existingData[url] = {};
    }
    existingData[url][browser] = data;
    // save the data to the file, indent with 4 spaces
    fs.writeFileSync(filePath, JSON.stringify(existingData, null, 4));
    res.send('Received');
});

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'index.html'));
});

app.get('/hello/hello', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'hello', 'index.html'));
});

app.get('/phone', (req, res) => {
    const bp = req.query.bp || 0; // defaul = 0 
    res.render(path.join(__dirname, '.', 'phone','phone.ejs'), { bp });

    // res.sendFile(path.join(__dirname, '.', 'phone', 'phone.html'));
});

app.get('urls', (req, res) => {
    // open the url file and send the json content
    const urlPath = path.join(__dirname, '..', 'testbed', 'exps.json');
    var urls = [];
    if (fs.existsSync(urlPath)) {
        let data = fs.readFileSync(urlPath);
        let exps = JSON.parse(data);
        for (let mode in exps) {
            urls.push(exps[mode].url);
        }
    }
    res.send(JSON.stringify({"urls": urls}));
});

app.post('/urls', (req, res) => {
    // open the url file and send the json content
    ip = req.body.ip;
    // console.log(ip);
    const urlPath = path.join(__dirname, '..', 'testbed', 'exps.json');
    var urls = [];
    if(fs.existsSync(urlPath)) {
        let data = fs.readFileSync(urlPath);
        let exps = JSON.parse(data);
        for (let mode in exps) {
            urls.push(exps[mode].url.replace("10.129.160.70", ip));
        }
    }

    res.send(JSON.stringify({"urls": urls}));
    // res.send(JSON.stringify({"urls": ["http://0.0.0.0:7070/shootoutc/ary2", "http://0.0.0.0:7070/shootoutc/ary"]}));
});
        
/* ###################### */
/* ###  BEGIN ROUTES  ### */
/* ###################### */

app.get('/shootoutc/ackermann', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'ackermann.html'));
});

app.get('/shootoutc/matrix', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'matrix.html'));
});

app.get('/shootoutc/nestedloop', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'nestedloop.html'));
});

app.get('/shootoutc/sieve', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'sieve.html'));
});

app.get('/shootoutc/random', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'random.html'));
});

app.get('/shootoutc/lists1', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'lists1.html'));
});

app.get('/shootoutc/strcat', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'strcat.html'));
});

app.get('/shootoutc/hash2', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'hash2.html'));
});

app.get('/shootoutc/except', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'except.html'));
});

app.get('/shootoutc/objinst', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'objinst.html'));
});

app.get('/shootoutc/ary3', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'ary3.html'));
});

app.get('/shootoutc/hash', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'hash.html'));
});

app.get('/shootoutc/methcall', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'methcall.html'));
});

app.get('/shootoutc/lists', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'lists.html'));
});

app.get('/shootoutc/hello', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'hello.html'));
});

app.get('/shootoutc/heapsort', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'heapsort.html'));
});

app.get('/shootoutc/moments', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'moments.html'));
});

app.get('/shootoutc/ary', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'ary.html'));
});

app.get('/shootoutc/fibo', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'fibo.html'));
});

app.get('/shootoutc/ary2', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootoutc', 'ary2.html'));
});

app.get('/benchmarkgame/fannkuch', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'benchmarkgame', 'fannkuch.html'));
});

app.get('/benchmarkgame/nbody', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'benchmarkgame', 'nbody.html'));
});

app.get('/benchmarkgame/puzzle', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'benchmarkgame', 'puzzle.html'));
});

app.get('/benchmarkgame/spectralnorm', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'benchmarkgame', 'spectralnorm.html'));
});

app.get('/benchmarkgame/partialsums', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'benchmarkgame', 'partialsums.html'));
});

app.get('/benchmarkgame/nsievebits', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'benchmarkgame', 'nsievebits.html'));
});

app.get('/benchmarkgame/recursive', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'benchmarkgame', 'recursive.html'));
});

app.get('/benchmarkgame/fasta', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'benchmarkgame', 'fasta.html'));
});

app.get('/stanford/realmm', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'realmm.html'));
});

app.get('/stanford/perm', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'perm.html'));
});

app.get('/stanford/quicksort', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'quicksort.html'));
});

app.get('/stanford/puzzle', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'puzzle.html'));
});

app.get('/stanford/towers', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'towers.html'));
});

app.get('/stanford/oscar', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'oscar.html'));
});

app.get('/stanford/queens', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'queens.html'));
});

app.get('/stanford/floatmm', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'floatmm.html'));
});

app.get('/stanford/bubblesort', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'bubblesort.html'));
});

app.get('/stanford/treesort', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'treesort.html'));
});

app.get('/stanford/intmm', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'stanford', 'intmm.html'));
});

app.get('/mcgill/chomp', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'mcgill', 'chomp.html'));
});

app.get('/mcgill/misr', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'mcgill', 'misr.html'));
});

app.get('/mcgill/queens', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'mcgill', 'queens.html'));
});

app.get('/shootout/ackermann', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'ackermann.html'));
});

app.get('/shootout/matrix', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'matrix.html'));
});

app.get('/shootout/nestedloop', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'nestedloop.html'));
});

app.get('/shootout/sieve', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'sieve.html'));
});

app.get('/shootout/random', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'random.html'));
});

app.get('/shootout/strcat', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'strcat.html'));
});

app.get('/shootout/objinst', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'objinst.html'));
});

app.get('/shootout/ary3', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'ary3.html'));
});

app.get('/shootout/hash', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'hash.html'));
});

app.get('/shootout/methcall', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'methcall.html'));
});

app.get('/shootout/lists', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'lists.html'));
});

app.get('/shootout/fib2', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'fib2.html'));
});

app.get('/shootout/hello', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'hello.html'));
});

app.get('/shootout/heapsort', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'shootout', 'heapsort.html'));
});

app.get('/adobec/functionobjects', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'adobec', 'functionobjects.html'));
});

app.get('/adobec/simple_types_constant_folding', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'adobec', 'simple_types_constant_folding.html'));
});

app.get('/adobec/stepanov_abstraction', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'adobec', 'stepanov_abstraction.html'));
});

app.get('/adobec/loop_unroll', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'adobec', 'loop_unroll.html'));
});

app.get('/adobec/stepanov_vector', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'adobec', 'stepanov_vector.html'));
});

app.get('/adobec/simple_types_loop_invariant', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'adobec', 'simple_types_loop_invariant.html'));
});

app.get('/dhrystone/dry', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'dhrystone', 'dry.html'));
});

app.get('/dhrystone/fldry', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'dhrystone', 'fldry.html'));
});

app.get('/polybench/gemver', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'gemver.html'));
});

app.get('/polybench/floydwarshall', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'floydwarshall.html'));
});

app.get('/polybench/syrk', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'syrk.html'));
});

app.get('/polybench/gesummv', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'gesummv.html'));
});

app.get('/polybench/2mm', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', '2mm.html'));
});

app.get('/polybench/ludcmp', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'ludcmp.html'));
});

app.get('/polybench/trisolv', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'trisolv.html'));
});

app.get('/polybench/heat3d', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'heat3d.html'));
});

app.get('/polybench/bicg', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'bicg.html'));
});

app.get('/polybench/fdtd2d', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'fdtd2d.html'));
});

app.get('/polybench/doitgen', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'doitgen.html'));
});

app.get('/polybench/symm', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'symm.html'));
});

app.get('/polybench/adi', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'adi.html'));
});

app.get('/polybench/correlation', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'correlation.html'));
});

app.get('/polybench/cholesky', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'cholesky.html'));
});

app.get('/polybench/deriche', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'deriche.html'));
});

app.get('/polybench/gramschmidt', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'gramschmidt.html'));
});

app.get('/polybench/mvt', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'mvt.html'));
});

app.get('/polybench/lu', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'lu.html'));
});

app.get('/polybench/durbin', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'durbin.html'));
});

app.get('/polybench/3mm', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', '3mm.html'));
});

app.get('/polybench/syr2k', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'syr2k.html'));
});

app.get('/polybench/jacobi1d', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'jacobi1d.html'));
});

app.get('/polybench/trmm', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'trmm.html'));
});

app.get('/polybench/atax', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'atax.html'));
});

app.get('/polybench/jacobi2d', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'jacobi2d.html'));
});

app.get('/polybench/seidel2d', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'seidel2d.html'));
});

app.get('/polybench/nussinov', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'nussinov.html'));
});

app.get('/polybench/gemm', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'gemm.html'));
});

app.get('/polybench/covariance', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'polybench', 'covariance.html'));
});

app.get('/smallpt/smallpt', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'smallpt', 'smallpt.html'));
});

app.get('/coyotebench/almabench', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'coyotebench', 'almabench.html'));
});

app.get('/coyotebench/lpbench', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'coyotebench', 'lpbench.html'));
});

app.get('/coyotebench/huffbench', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'coyotebench', 'huffbench.html'));
});

app.get('/coyotebench/fftbench', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'coyotebench', 'fftbench.html'));
});

app.get('/misc/dt', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'dt.html'));
});

app.get('/misc/flops6', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'flops6.html'));
});

app.get('/misc/revertbits', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'revertbits.html'));
});

app.get('/misc/oourafft', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'oourafft.html'));
});

app.get('/misc/perlin', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'perlin.html'));
});

app.get('/misc/matmul_f64_4x4', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'matmul_f64_4x4.html'));
});

app.get('/misc/flops4', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'flops4.html'));
});

app.get('/misc/flops8', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'flops8.html'));
});

app.get('/misc/pi', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'pi.html'));
});

app.get('/misc/flops2', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'flops2.html'));
});

app.get('/misc/flops7', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'flops7.html'));
});

app.get('/misc/ffbench', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'ffbench.html'));
});

app.get('/misc/richards_benchmark', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'richards_benchmark.html'));
});

app.get('/misc/evalloop', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'evalloop.html'));
});

app.get('/misc/mandel', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'mandel.html'));
});

app.get('/misc/flops3', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'flops3.html'));
});

app.get('/misc/salsa20', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'salsa20.html'));
});

app.get('/misc/flops', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'flops.html'));
});

app.get('/misc/reedsolomon', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'reedsolomon.html'));
});

app.get('/misc/fpconvert', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'fpconvert.html'));
});

app.get('/misc/flops5', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'flops5.html'));
});

app.get('/misc/lowercase', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'lowercase.html'));
});

app.get('/misc/flops1', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'flops1.html'));
});

app.get('/misc/mandel2', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'mandel2.html'));
});

app.get('/misc/himenobmtxpa', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'himenobmtxpa.html'));
});

app.get('/misc/whetstone', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'whetstone.html'));
});

app.get('/misc/fbench', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'misc', 'fbench.html'));
});

app.get('/linpack/linpackpc', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'linpack', 'linpackpc.html'));
});

app.get('/miscc/bigfib', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'miscc', 'bigfib.html'));
});

app.get('/miscc/ray', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'miscc', 'ray.html'));
});

app.get('/miscc/sphereflake', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'miscc', 'sphereflake.html'));
});

app.get('/miscc/oopack_v1p8', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'miscc', 'oopack_v1p8.html'));
});

app.get('/miscc/mandeltext', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'miscc', 'mandeltext.html'));
});

app.get('/miscc/stepanov_v1p2', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'miscc', 'stepanov_v1p2.html'));
});

app.get('/miscc/stepanov_container', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'miscc', 'stepanov_container.html'));
});

/* ###################### */
/* ####  END ROUTES  #### */
/* ###################### */

// start server
app.listen(PORT, () => {
    console.log(`Server is running on http://0.0.0.0:${PORT}`);
});
