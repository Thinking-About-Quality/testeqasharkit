def gerar_email():
    from faker import Faker
    fake = Faker()
    print(fake.email())
    return fake.email()

