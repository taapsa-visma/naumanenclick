export class EmailAddress {
  public static isValid(email: string | null | undefined): boolean {
    if (!email) {
      return false
    }

    const regexp = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

    return regexp.test(email.toLowerCase())
  }
}
  