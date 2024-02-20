app.get('/CASE1/CASE2', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'CASE1', 'CASE2.html'));
});