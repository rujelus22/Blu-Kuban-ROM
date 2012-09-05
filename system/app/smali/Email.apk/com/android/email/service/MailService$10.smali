.class final Lcom/android/email/service/MailService$10;
.super Lcom/android/email/SingleRunningTask;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/email/SingleRunningTask",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1411
    invoke-direct {p0, p1}, Lcom/android/email/SingleRunningTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected runInternal(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    .line 1414
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.android.email"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1416
    .local v1, accountManagerAccounts:[Landroid/accounts/Account;
    invoke-static {p1}, Lcom/android/email/service/MailService;->getPopImapAccountList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1418
    .local v6, providerAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Account;>;"
    sget-boolean v7, Lcom/android/email/Email;->SNC_RESTORE_ACCOUNT_FLOW_UNDERPROCESS:Z

    if-nez v7, :cond_1a

    .line 1419
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {p1, v6, v1, v7, v8}, Lcom/android/email/service/MailService;->reconcileAccountsWithAccountManager(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;ZLandroid/content/ContentResolver;)V

    .line 1422
    :cond_1a
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_6f

    .line 1423
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_21
    if-ge v3, v4, :cond_42

    aget-object v0, v2, v3

    .line 1424
    .local v0, accountManagerAccount:Landroid/accounts/Account;
    const-string v7, "MS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " accountManagerAccounts "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1427
    .end local v0           #accountManagerAccount:Landroid/accounts/Account;
    :cond_42
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1428
    .local v5, providerAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-string v7, "MS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " providerAccount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 1432
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #len$:I
    .end local v5           #providerAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_6f
    return-void
.end method

.method protected bridge synthetic runInternal(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1411
    check-cast p1, Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/service/MailService$10;->runInternal(Landroid/content/Context;)V

    return-void
.end method
