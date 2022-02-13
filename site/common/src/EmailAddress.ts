export class EmailAddress {
  private readonly _email: string;

  public constructor(email: string) {
    if (!EmailAddress.isValid(email)) {
      throw new Error(`Invalid email address: ${email}`);
    }

    this._email = email;
  }

  public static isValid(email: string | null | undefined): boolean {
    if (!email) {
      return false;
    }

    const emailPattern = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return emailPattern.test(email.toLowerCase());
  }

  public get email(): string {
    return this._email;
  }
}
