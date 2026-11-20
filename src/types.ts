export type TxType = 'deposit'|'withdrawal'|'transfer_in'|'transfer_out';
export type Tx = {id:string; branchId:string; employeeId:string; type:TxType; operator:string; accountType:'cash'|'electronic'; amount:number; commission:number; customerPhone?:string; reference?:string; counterparty?:string; note?:string; createdAt:string; syncStatus:'pending'|'synced'};
export const typeLabels:Record<TxType,string>={deposit:'Dépôt',withdrawal:'Retrait',transfer_in:'Transfert reçu',transfer_out:'Transfert envoyé'};
