/** source/routes/posts.ts */
import express from "express";
import controller from "../controllers/validates";
const router = express.Router();

router.get("/validate", controller.validateEmailAddress);

export = router;
