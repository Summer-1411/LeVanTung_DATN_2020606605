const express = require('express')
const router = express.Router()

const { verifyToken,
    verifyTokenAndAuthorization,
    verifyTokenAndAdmin } = require('../middleware/verifyToken')


const pool = require('../common/connectDB')


//GET product_detail theo id
router.get('/find/:id', async (req, res) => {
    try {
        const [filter] = await pool.execute(`SELECT * FROM product_detail WHERE id_pro=? AND deleted=?`, [req.params.id, 0])
        return res.status(200).json({ success: true, filter })
    } catch (error) {
        console.log(error);
        return res.status(500).json({ success: false, message: "Internal server error !" })
    }
})
//GET ALL COLOR - 1 PRODUCT by id_pro
router.get('/color/:id', async (req, res) => {
    try {
        const [colors] = await pool.execute(`SELECT color FROM product_detail WHERE id_pro=? AND deleted=? GROUP BY color`, [req.params.id, 0])
        return res.status(200).json({ success: true, colors })
    } catch (error) {
        console.log(error);
        return res.status(500).json({ success: false, message: "Internal server error !" })
    }
})


//GET ALL SIZE - 1 PRODUCT by id_pro
router.get('/size/:id', async (req, res) => {
    try {
        const [sizes] = await pool.execute(`SELECT size FROM product_detail WHERE id_pro=? AND deleted=? GROUP BY size`, [req.params.id, 0])
        return res.status(200).json({ success: true, sizes })
    } catch (error) {
        console.log(error);
        return res.status(500).json({ success: false, message: "Internal server error !" })
    }
})

// GET ALL SIZE by color and product
router.get('/searchsize', async (req, res) => {
    const qcolor = req.query.color
    const qid_pro = req.query.idpro
    try {
        const [sizes] = await pool.execute(`SELECT id, size FROM product_detail WHERE id_pro=? AND color=? AND deleted=? GROUP BY size`, [qid_pro, qcolor, 0])
        return res.status(200).json({ success: true, sizes })
    } catch (error) {
        console.log(error);
        return res.status(500).json({ success: false, message: "Internal server error !" })
    }
})

// GET ALL COLOR by SIZE and product
router.get('/searchcolor', async (req, res) => {
    const qsize = req.query.size
    const qid_pro = req.query.idpro
    try {
        const [colors] = await pool.execute(`SELECT id, color, img FROM product_detail WHERE id_pro=? AND size=? AND deleted=? GROUP BY color`, [qid_pro, qsize, 0])
        return res.status(200).json({ success: true, colors })
    } catch (error) {
        console.log(error);
        return res.status(500).json({ success: false, message: "Internal server error !" })
    }
})

//Get img by color
router.get("/img", async (req, res) => {
    const qcolor = req.query.color
    const qid_pro = req.query.idpro
    try {
        const [img] = await pool.execute(`SELECT img FROM product_detail WHERE id_pro=? AND deleted=? AND color=?`, [qid_pro, qcolor, 0])
        return res.status(200).json({ image: img[0] })
    } catch (error) {
        console.log(error);
        return res.status(500).json({ success: false, message: "Internal server error !" })
    }
})


//GET quantity và price qua size, color, idpro
router.get('/details', async (req, res) => {
    const qsize = req.query.size
    const qcolor = req.query.color
    const qid_pro = req.query.idpro
    try {
        const [detail] = await pool.execute(`SELECT * FROM product_detail WHERE id_pro=? AND size=? AND color=? AND deleted=?`, [qid_pro, qsize, qcolor, 0])
        return res.status(200).json({ success: true, detail: detail[0] })
    } catch (error) {
        console.log(error);
        return res.status(500).json({ success: false, message: "Internal server error !" })
    }
})

//Thêm bảng phân loại
router.post("/", verifyTokenAndAdmin, async (req, res) => {
    const { id_pro, size, color, quantity, price, img } = req.body
    try {
        const [result] = await pool.query('INSERT INTO product_detail (id_pro, size, color, quantity, price, img) VALUES (?, ?, ?, ?, ?, ?)',
            [id_pro, size, color, Number(quantity), Number(price), img]);
        return res.status(200).json({ success: true, message: "Thêm mới thông tin sản phẩm thành công", id: result.insertId })
    } catch (error) {
        console.log("error lỗi");
        return res.status(500).json({ success: false, message: "Internal server error !" })
    }
})

router.put("/update/:id", verifyTokenAndAdmin, async (req, res) => {
    const { size, color, quantity, price, img } = req.body

    const values = [];
    if (size) values.push(`size='${size}'`);
    if (color) values.push(`color='${color}'`);
    if (quantity) values.push(`quantity='${Number(quantity)}'`);
    if (price) values.push(`price='${Number(price)}'`);
    if (img) values.push(`img='${img}'`);

    // try {
    //     await pool.execute(
    //         `UPDATE user SET ${values.join(", ")} WHERE id = ?`,
    //         [req.params.id]
    //     );
    //     console.log(req.body);
    //     return res.status(200).json({ success: true, message: "Cập nhật thông tin thành công" })

    try {
        const [result] = await pool.execute(`UPDATE product_detail SET ${values.join(", ")} WHERE id=?`,
            [req.params.id]);
        return res.status(200).json({ success: true, message: "Cập nhật thông tin sản phẩm thành công" })
    } catch (error) {
        console.log("error lỗi");
        return res.status(500).json({ success: false, message: "Internal server error !" })
    }
})

router.put("/delete/:id", verifyTokenAndAdmin, async (req, res) => {
    console.log(req.params.id);
    try {
        const [result] = await pool.execute('UPDATE product_detail SET deleted=? WHERE id=?',
            [1, req.params.id]);
        return res.status(200).json({ success: true, message: "Xoá thông tin sản phẩm thành công" })
    } catch (error) {
        console.log("error lỗi", error);
        return res.status(500).json({ success: false, message: "Internal server error !" })
    }
})
module.exports = router