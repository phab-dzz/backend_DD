const openai = require("../config/openaiConfig.js");
const Aiassitance = async (prompt) => {

    try {
        const response = await openai.chat.completions.create({
            model: "gpt-3.5-turbo",
            messages: [
                {
                    role: "system",
                    content: "You are a helpful assistant specialized in providing recommendations and information about books and podcasts related to personal development. Please only respond to questions within this scope."

                },
                {
                    role: "user",
                    content: prompt
                }
            ]
        });
        return response.data.choices[0].message.content;
    } catch (err) {
        console.log(err);
        return "I am sorry, I am unable to process your request at the moment";
    }


}
module.exports = { Aiassitance };
