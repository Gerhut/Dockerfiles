'use strict'

const connect = require('connect')

const app = connect()
app.use((req, res) => res.end('foo'))

app.listen(3000)
