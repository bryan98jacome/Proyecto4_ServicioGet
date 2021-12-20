const { Schema, model } = require('mongoose');
const productoSchema = new Schema({
    nombre: String,
    valorVenta: Number,
    stock: Number,
})

module.exports = model('Productos', productoSchema);