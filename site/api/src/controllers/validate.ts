import { EmailAddress } from '@naumanenclick/common'
import { Request, Response } from 'express'

const validateEmailAddress = async (req: Request, res: Response) => {
  const email: string = req.query.email as string
  const emailaddress: boolean = EmailAddress.isValid(email)
  return res.status(200).json({
    message: emailaddress,
  })
};

export default { validateEmailAddress }
