import express from 'express';
const sendOTPEmail = require("../commons/sendOTPEmail");
const router = express.Router();
router.post("/", (req, res) => {
    const { email } = req.body;
    const otp = sendOTPEmail(email);
    console.log("otp :" + otp);
    res.json({ code: otp });
});
export default router;