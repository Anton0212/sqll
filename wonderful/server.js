import express from 'express';
var app = express();

const port = process.env.PORT || 3001;

app.use(express.urlencoded({extended: true}));

app.listen(port, () =>{
    console.log('server is running');
});


app.get('/movie', (req, res) => res.send('Movies endpoint'));
app.get('/uuser', (req, res) => res.send('Users endpoint'));
app.get('/review', (req, res) => res.send('Reviews endpoint'));
app.get('/genre', (req, res) => res.send('genre endpoint'));
app.get('/fav_movie', (req, res) => res.send('fav_movie endpoint'));

app.post('/uuser', (req, res) =>{
    let user = req.body;
    console.log(user);
    res.send();
});