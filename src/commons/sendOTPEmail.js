const nodemailer = require("nodemailer");
require('dotenv').config();


const transporter = nodemailer.createTransport({
    service: "gmail",
    auth: {
        user: "duongvanphan300103@gmail.com",
        pass: process.env.PASS_APP,
    },
    tls: {
        rejectUnauthorized: false,
    },
});


const generateOTP = () => {
    return Math.floor(100000 + Math.random() * 900000);
};


const sendOTPEmail = (recipientEmail) => {
    const otp = generateOTP();

    const mailOptions = {
        from: "duongvanphan300103@gmail.com",
        to: recipientEmail,
        subject: "Your OTP Code",
        text: `Your OTP code is: ${otp}`,
    };


    transporter.sendMail(mailOptions, (error, info) => {
        if (error) {
            console.log("Error occurred: " + error);
        } else {
            console.log("Email sent: " + info.response);
        }
    });
    return otp;
};
module.exports = sendOTPEmail;

// sendOTPEmail("duongvanphanmoon3001@gmail.com");
