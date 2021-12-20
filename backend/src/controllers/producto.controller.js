const productoService = require('../services/producto.service');

const agregarproductos = async (req, res) => {
    console.log(req.body);
    res.json({
       producto: await productoService.guardarproducto(req.body)

    })

}

const consultarproductos = async(req, res) => {
    res.json({
        producto: await productoService.consultarproductos()
    })
}

const modificarproducto = async(req, res) => {
    res.json({
        producto: await productoService.modificarproducto(req.body)
    })
}

const eliminarproducto = async(req, res) => {
    res.json({
        producto: await productoService.eliminarproducto(req.params.id)
    })
}



module.exports = {consultarproductos, agregarproductos, modificarproducto, eliminarproducto};