class User < ApplicationRecord
    has_many(:games)
    has_many(:trivium, through: :games)
    has_secure_password()

    
    validate(:fillname,:fillemail,:fillusername,:fillpassword)

    def fillname
       
        if(self.name == nil)
            self.errors.add(:name, "field must be completed")

        end
    end

    def fillemail
    
        if(self.email_address == nil)
            self.errors.add(:email_address, "field must be completed")

        end
    end

    def fillusername
        if(self.user_name == nil)
            self.errors.add(:user_name, "field must be completed")
        end
    end

    def fillpassword
        if(self.password == nil)
            self.errors.add(:password, "field must be completed")
        end
    end


end