const functions = require("firebase-functions");
const admin = require("firebase-admin");
const auth = require("firebase-auth");

var serviceAccount = require("./happyeat-d2f8d-firebase-adminsdk-4rzjd-580aed05c1.json");

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});

// // Create and deploy your first functions
// // https://firebase.google.com/docs/functions/get-started
//
exports.createCustomToken = functions.https.onRequest(async (request, response) => {
    const user = request.body;

    const uid = 'kakao:${user.uid}';

    const updateParam = {
        email: user.email,
        photo: user.photoUrl,
        displayName: user.displayName
    };

    try{
        await admin.auth().updateUser(uid, updateParam);
    }
    catch(e){
        updateParam['uid'] = uid;
        await admin.auth().createUser(updateParam);
    }

    const token = await admin.auth().createCustomToken(uid);

    response.send(token);
});
