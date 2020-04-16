class User < ApplicationRecord
    has_many(:games)
    has_many(:trivium, through: :games)
    has_secure_password()

    validate(:fillname,:fillemail,:fillusername,:fillpassword)

    def fillname
        if(self.name.length <= 0)
            self.errors.add(:name, "field must be completed")
        end
    end

    def fillemail
        if(self.email_address.length <= 0)
            self.errors.add(:email_address, "field must be completed")
        end
    end

    def fillusername
        if(self.user_name.length <= 0)
            self.errors.add(:user_name, "field must be completed")
        end
    end

    def fillpassword
        if(self.password.length <= 0)
            self.errors.add(:password, "field must be completed")
        end
    end

end