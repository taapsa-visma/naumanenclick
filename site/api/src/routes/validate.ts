import express from 'express'
import controller from '../controllers/validate'

const router = express.Router()

router.post('/validate', controller.validateEmailAddress)

export = router