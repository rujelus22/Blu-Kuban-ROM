.class public Lcom/wssnps/database/smlAcccountItem;
.super Ljava/lang/Object;
.source "smlAcccountItem.java"


# static fields
.field private static AccountCnt:I

.field private static AccountId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput v0, Lcom/wssnps/database/smlAcccountItem;->AccountId:I

    .line 12
    sput v0, Lcom/wssnps/database/smlAcccountItem;->AccountCnt:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static smlGetCurrentAccountSize()Ljava/lang/String;
    .registers 6

    .prologue
    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, strResult:Ljava/lang/String;
    const/4 v2, 0x0

    .line 24
    .local v2, recordCount:I
    sget-object v4, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v4, :cond_24

    .line 39
    :goto_23
    return-object v3

    .line 26
    :cond_24
    sget-object v4, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 27
    .local v0, account:[Landroid/accounts/Account;
    array-length v2, v0

    .line 29
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    array-length v4, v0

    if-ge v1, v4, :cond_60

    .line 31
    aget-object v4, v0, v1

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "vnd.sec.contact.phone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5d

    aget-object v4, v0, v1

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5d

    aget-object v4, v0, v1

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5d

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 29
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 35
    :cond_60
    sput v2, Lcom/wssnps/database/smlAcccountItem;->AccountCnt:I

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    goto :goto_23
.end method

.method public static smlPimAdapterGetAccountLoad(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "szIndex"

    .prologue
    const/4 v10, 0x0

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, strResult:Ljava/lang/String;
    const/4 v4, 0x0

    .line 47
    .local v4, strEncodedVCard:Ljava/lang/String;
    const/4 v1, 0x0

    .line 48
    .local v1, contactItem:Lcom/wssnps/database/smlContactItem;
    const/4 v2, 0x0

    .line 49
    .local v2, nId:I
    sget-object v7, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v7, :cond_27

    move-object v6, v5

    .line 84
    .end local v5           #strResult:Ljava/lang/String;
    .local v6, strResult:Ljava/lang/String;
    :goto_26
    return-object v6

    .line 52
    .end local v6           #strResult:Ljava/lang/String;
    .restart local v5       #strResult:Ljava/lang/String;
    :cond_27
    sget-object v7, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 54
    .local v0, account:[Landroid/accounts/Account;
    new-instance v1, Lcom/wssnps/database/smlContactItem;

    .end local v1           #contactItem:Lcom/wssnps/database/smlContactItem;
    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem;-><init>()V

    .line 55
    .restart local v1       #contactItem:Lcom/wssnps/database/smlContactItem;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 58
    .local v3, nIndex:I
    add-int/lit8 v2, v3, -0x1

    .line 60
    if-nez v2, :cond_82

    .line 62
    iget-object v7, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    const-string v8, "vnd.sec.contact.phone"

    iput-object v8, v7, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    .line 63
    iget-object v7, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    const-string v8, "vnd.sec.contact.phone"

    iput-object v8, v7, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    .line 78
    :goto_56
    sget v7, Lcom/wssnps/database/smlAcccountItem;->AccountCnt:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/wssnps/database/smlAcccountItem;->AccountCnt:I

    .line 79
    sget v7, Lcom/wssnps/database/smlAcccountItem;->AccountCnt:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_63

    .line 80
    sput v10, Lcom/wssnps/database/smlAcccountItem;->AccountId:I

    .line 81
    :cond_63
    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 84
    .end local v5           #strResult:Ljava/lang/String;
    .restart local v6       #strResult:Ljava/lang/String;
    goto :goto_26

    .line 67
    .end local v6           #strResult:Ljava/lang/String;
    .restart local v5       #strResult:Ljava/lang/String;
    :cond_82
    if-eqz v0, :cond_87

    array-length v7, v0

    if-gtz v7, :cond_89

    :cond_87
    move-object v6, v5

    .line 68
    .end local v5           #strResult:Ljava/lang/String;
    .restart local v6       #strResult:Ljava/lang/String;
    goto :goto_26

    .line 70
    .end local v6           #strResult:Ljava/lang/String;
    .restart local v5       #strResult:Ljava/lang/String;
    :cond_89
    add-int/lit8 v2, v2, -0x1

    .line 71
    :goto_8b
    sget v7, Lcom/wssnps/database/smlAcccountItem;->AccountId:I

    aget-object v7, v0, v7

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "vnd.sec.contact.phone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_bc

    sget v7, Lcom/wssnps/database/smlAcccountItem;->AccountId:I

    aget-object v7, v0, v7

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.google"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_bc

    sget v7, Lcom/wssnps/database/smlAcccountItem;->AccountId:I

    aget-object v7, v0, v7

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.android.exchange"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_bc

    .line 72
    sget v7, Lcom/wssnps/database/smlAcccountItem;->AccountId:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlAcccountItem;->AccountId:I

    goto :goto_8b

    .line 74
    :cond_bc
    iget-object v7, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    sget v8, Lcom/wssnps/database/smlAcccountItem;->AccountId:I

    aget-object v8, v0, v8

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v8, v7, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    .line 75
    iget-object v7, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    sget v8, Lcom/wssnps/database/smlAcccountItem;->AccountId:I

    add-int/lit8 v9, v8, 0x1

    sput v9, Lcom/wssnps/database/smlAcccountItem;->AccountId:I

    aget-object v8, v0, v8

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v8, v7, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    goto :goto_56
.end method
