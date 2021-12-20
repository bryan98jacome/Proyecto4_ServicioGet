const productomodel = require('../models/producto.model');



class ProductoService {
    ProductoService() {}

    async guardarproducto(producto = new productomodel()) {
        try {
            var productoGuardado;
            await productomodel.create(producto).then( (value) => {
                productoGuardado =  value;
            });

            return productoGuardado;

        } catch (error) {
            console.log(error);

        }
    }

    async consultarproductos() {
        try {
            return await productomodel.find();
        } catch (error) {
            return error;
        }
    }

    async eliminarproducto(idc) {
        console.log(idc);
        var productoEliminado;
        try {
            await productomodel.findOneAndRemove({
                _id: idc
            }).then( (value) => {
                console.log(value);
                productoEliminado = value;
            });

            return productoEliminado;
        } catch (error) {
            console.log(error);

        }
    }

    async modificarproducto(productomod) {

        var productoModificado;
        try {
            await productomodel.findOneAndUpdate({
                _id: productomod._id
            }, productomod).then( (value) => {

                productoModificado = productomod;
            });

            return productoModificado;
        } catch (error) {
            console.log(error);

        }
    }
}

module.exports = new ProductoService();
