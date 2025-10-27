using { track as db} from '../db/TrackService_Model';

service TrackServiceCatalog @(path:'trackService') {

    entity Users as projection on db.UserMasterData;
    entity Transactions as projection on db.MyTransaction;
    entity IncomeResources as projection on db.IncomeResource;
    entity BusinessPartnerContacts as projection on db.BusinessPartnerContact;
    entity MonthlyExpenses as projection on db.MonthlyExpense;
    entity YearlyAmounts as projection on db.YearlyAmount;
    entity ExpenseCategories as projection on db.ExpenseCategorie;
    entity Notices as projection on db.Notice;

}
