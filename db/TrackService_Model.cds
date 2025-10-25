using {managed} from '@sap/cds/common';

entity Users : managed {
    key ID              : UUID;
        FullName        : String;
        Designation     : String;
        AvatarKey       : String;
        AvatarImage     : String;
        HeaderTitle     : String;
        PercentValue    : Integer;
        DisplayValue    : String;
        State           : String;
        Skills          : String;
        Country         : String;
        Language        : String;
        Mobile          : String;
        Experience      : Decimal;
        Qualification   : String;
        Email           : String;
        Password        : String;
        ConfirmPassword : String;
        Objective       : String;
};

entity Transactions : managed {
    key ID                  : UUID;
        HeaderTitle         : String;
        IncomeResources     : String;
        TransactionType     : String;
        TransactionCategory : String;
        Amount              : Decimal;
        Currency            : String;
        TransactionDate     : Date;
        Description         : String;
};

entity IncomeResources : managed {
    key ID            : UUID;
        JobTitle      : String;
        Organization  : String;
        Location      : String;
        ExpertiseArea : String;
        Experience    : Decimal;
        PayerName     : String;
        Salary        : Decimal;
        Currency      : String;
};

entity BusinessPartnerContacts : managed {
    key ID          : UUID;
        Name        : String;
        Email       : String;
        Message     : String;
        Phone       : String(10);
        Location    : String;
        Avatar      : String;
        Designation : String;
};

entity MonthlyExpenses : managed {
    key ID          : UUID;
        ExpenseType : String;
        MonthName   : String;
        Amount      : Decimal;
        Currency    : String;
        ExpenseDate : Date;
        Description : String;
};

entity YearlyAmounts : managed {
    key ID           : UUID;
        Year         : Integer;
        Title        : String;
        Description  : String;
        TotalIncome  : Decimal;
        OtherIncome  : Decimal;
        TotalExpense : Decimal;
        Savings      : Decimal;
        Currency     : String;
};

entity ExpenseCategories : managed {
    key ID           : UUID;
        CategoryName : String;
        CategoryType : String;
        Description  : String;
        IconKey      : String;
};

entity Notice : managed {
    key ID           : UUID;
        Title        : String;
        Description  : String;
        CategoryName : String;
}
