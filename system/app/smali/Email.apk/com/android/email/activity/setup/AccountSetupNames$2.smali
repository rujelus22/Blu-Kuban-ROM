.class Lcom/android/email/activity/setup/AccountSetupNames$2;
.super Ljava/lang/Object;
.source "AccountSetupNames.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .registers 2
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 478
    const/4 v7, 0x0

    .line 479
    .local v7, sncProfileUpdated:Z
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 480
    .local v1, accounts:[Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v1, :cond_22

    .line 481
    move-object v2, v1

    .local v2, arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_c
    if-ge v4, v5, :cond_22

    aget-object v0, v2, v4

    .line 482
    .local v0, a:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    const-string v9, "SNC_PROFILE_BACKEDUP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 484
    const/4 v7, 0x1

    .line 485
    const-string v8, "AccountSetupNames"

    const-string v9, "Already EXchange profile backed up in SNC Server"

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .end local v0           #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_22
    if-nez v7, :cond_38

    .line 491
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    if-eqz v8, :cond_3c

    .line 493
    const-string v8, "AccountSetupNames"

    const-string v9, "Unified account is already created"

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    #calls: Lcom/android/email/activity/setup/AccountSetupNames;->updateExchangeProfile()V
    invoke-static {v8}, Lcom/android/email/activity/setup/AccountSetupNames;->access$100(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 504
    :cond_38
    :goto_38
    return-void

    .line 481
    .restart local v0       #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 496
    .end local v0           #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3c
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 497
    .local v6, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-string v8, "AccountSetupNames"

    const-string v9, "Exchange Profile will be backed up later"

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v8, "SNC_PROFILE_TOBE_BACKEDUP"

    iput-object v8, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 499
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 500
    .local v3, cv:Landroid/content/ContentValues;
    const-string v8, "compatibilityUuid"

    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-virtual {v6, v8, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_38
.end method
