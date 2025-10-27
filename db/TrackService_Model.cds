namespace track;


using {managed} from '@sap/cds/common';

entity UserMasterData : managed {
    key ID                : UUID;
        FullName          : String;
        Designation       : String;
        AvatarKey         : String;
        AvatarImage       : String;
        HeaderTitle       : String;
        PercentValue      : Integer;
        DisplayValue      : String;
        State             : String;
        Skills            : String;
        Country           : String;
        Language          : String;
        Mobile            : String;
        Experience        : Decimal;
        Qualification     : String;
        Email             : String;
        Password          : String;
        ConfirmPassword   : String;
        Objective         : String;
        // relationship with other details for specific user (1:N)
        transactions      : Composition of many MyTransaction
                                on transactions.user = $self;
        incomeResources   : Composition of many IncomeResource
                                on incomeResources.user = $self;
        contacts          : Composition of many BusinessPartnerContact
                                on contacts.user = $self;
        monthlyExpenses   : Composition of many MonthlyExpense
                                on monthlyExpenses.user = $self;
        yearlyAmounts     : Composition of many YearlyAmount
                                on yearlyAmounts.user = $self;
        expenseCategories : Composition of many ExpenseCategorie
                                on expenseCategories.user = $self;
        notices           : Composition of many Notice
                                on notices.user = $self;
};

entity MyTransaction : managed { // financial transactions of user
    key ID                  : UUID;
        HeaderTitle         : String;
        IncomeResources     : String;
        TransactionType     : String;
        TransactionCategory : String;
        Amount              : Decimal;
        Currency            : String;
        TransactionDate     : Date;
        Description         : String;
        user                : Association to UserMasterData;
};

entity IncomeResource : managed { // income resources of user
    key ID            : UUID;
        JobTitle      : String;
        Organization  : String;
        Location      : String;
        ExpertiseArea : String;
        Experience    : Decimal;
        PayerName     : String;
        Salary        : Decimal;
        Currency      : String;
        user          : Association to UserMasterData;
};

entity BusinessPartnerContact : managed { // business partner contacts of user
    key ID          : UUID;
        Name        : String;
        Email       : String;
        Message     : String;
        Phone       : String(10);
        Location    : String;
        Avatar      : String;
        Designation : String;
        user        : Association to UserMasterData;
};

entity MonthlyExpense : managed { // monthly expenses of user
    key ID          : UUID;
        ExpenseType : String;
        MonthName   : String;
        Amount      : Decimal;
        Currency    : String;
        ExpenseDate : Date;
        Description : String;
        user        : Association to UserMasterData;
};

entity YearlyAmount : managed { // yearly amounts summary of user
    key ID           : UUID;
        Year         : Integer;
        Title        : String;
        Description  : String;
        TotalIncome  : Decimal;
        OtherIncome  : Decimal;
        TotalExpense : Decimal;
        Savings      : Decimal;
        Currency     : String;
        user         : Association to UserMasterData;
};

entity ExpenseCategorie : managed { // expense categories of user
    key ID           : UUID;
        CategoryName : String;
        CategoryType : String;
        Description  : String;
        IconKey      : String;
        user         : Association to UserMasterData;
};

entity Notice : managed { // notices for user like a to-do list
    key ID           : UUID;
        Title        : String;
        Description  : String;
        CategoryName : String;
        user         : Association to UserMasterData;
}
