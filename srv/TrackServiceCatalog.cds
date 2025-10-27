using { UserMasterData ,Transaction,IncomeResource,BusinessPartnerContact,MonthlyExpense,YearlyAmount,ExpenseCategorie,Notice } from '../db/TrackService_Model';

service TrackServiceCatalog @(path:'trackService') {

    entity Users as projection on UserMasterData;
    entity Transactions as projection on Transaction;
    entity IncomeResources as projection on IncomeResource;
    entity BusinessPartnerContacts as projection on BusinessPartnerContact;
    entity MonthlyExpenses as projection on MonthlyExpense;
    entity YearlyAmounts as projection on YearlyAmount;
    entity ExpenseCategories as projection on ExpenseCategorie;
    entity Notices as projection on Notice;

}
