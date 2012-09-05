.class public Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;
.super Landroid/app/ListActivity;
.source "AccountSetupSncRestoreOptions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;,
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;,
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mNextClick:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectedListItem:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mList:Ljava/util/List;

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mAccountId:J

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    .line 367
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->createProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setDefaultAccount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getProfileResponse(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    return-void
.end method

.method public static actionDisplayAccounts(Landroid/app/Activity;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "ConfiguredAccounts"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method private addExchangeAccount()V
    .registers 3

    .prologue
    .line 380
    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "Adding ExchangeAccount"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionRestoreExchangeAccount(Landroid/app/Activity;)V

    .line 382
    return-void
.end method

.method private createProgressDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 385
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 386
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0805a0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 388
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 390
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$2;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 398
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 399
    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "Created Progress dialog"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private getProfileResponse(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .registers 13
    .parameter "status"
    .parameter "profile"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 315
    const-string v3, "AccountSetupSncRestoreOptions"

    const-string v4, "getProfileResponse"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iput-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    .line 318
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_19

    .line 319
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 320
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 322
    :cond_19
    if-eqz p1, :cond_ba

    .line 323
    const-string v3, "status_code"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 324
    .local v1, resultCode:I
    const-string v3, "status_text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, errorMessage:Ljava/lang/String;
    const-string v3, "AccountSetupSncRestoreOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileResponse - resultCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-nez v1, :cond_d2

    .line 328
    if-eqz p2, :cond_be

    .line 329
    sput-object p2, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    .line 330
    const-string v3, "AccountSetupSncRestoreOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exchange settings "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retrived from server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v3, "AccountSetupSncRestoreOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileResponse - resultCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exchange settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retrived from server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, toastString:Ljava/lang/String;
    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 337
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->addExchangeAccount()V

    .line 352
    .end local v0           #errorMessage:Ljava/lang/String;
    .end local v1           #resultCode:I
    .end local v2           #toastString:Ljava/lang/String;
    :cond_ba
    :goto_ba
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->finish()V

    .line 353
    return-void

    .line 339
    .restart local v0       #errorMessage:Ljava/lang/String;
    .restart local v1       #resultCode:I
    :cond_be
    const-string v3, "AccountSetupSncRestoreOptions"

    const-string v4, "No Exchange Account Backed up from the SNC Server: mAccount - -1"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v3, "No Exchange settings backed up"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 343
    invoke-static {p0, v8, v9}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    goto :goto_ba

    .line 346
    :cond_d2
    const-string v3, "AccountSetupSncRestoreOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileResponse failure - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve Exchange Settings : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 349
    invoke-static {p0, v8, v9}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    goto :goto_ba
.end method

.method private setDefaultAccount()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 233
    const-string v4, "AccountSetupSncRestoreOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultAccount: Selected Item ::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v4, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mList:Ljava/util/List;

    iget v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 235
    .local v3, userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAccountIdFromUserEndpointId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 237
    .local v1, accountId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v1

    if-nez v4, :cond_3b

    .line 239
    const-string v4, "AccountSetupSncRestoreOptions"

    const-string v5, "######Account is INVALID from SNC Module ########"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_3a
    return-void

    .line 242
    :cond_3b
    iput-wide v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mAccountId:J

    .line 243
    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 246
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const/4 v4, 0x6

    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 247
    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    .line 248
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 249
    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 250
    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 255
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    goto :goto_3a
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .prologue
    .line 357
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 358
    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setDefaultAccount()V

    .line 360
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 95
    const-string v1, "AccountSetupSncRestoreOptions"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ConfiguredAccounts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mList:Ljava/util/List;

    .line 101
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    .line 102
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 104
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mList:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

    .line 133
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 134
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 261
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 150
    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 152
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 153
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_86

    .line 309
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 311
    :goto_c
    return v1

    .line 275
    :sswitch_d
    const-string v2, "AccountSetupSncRestoreOptions"

    const-string v3, "User Pressed Next"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    .line 277
    const-string v1, "Select an account"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 278
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_c

    .line 280
    :cond_28
    iget-boolean v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    if-ne v2, v1, :cond_38

    .line 281
    const-string v1, "AccountSetupSncRestoreOptions"

    const-string v2, "User pressed the next button more than once"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_c

    .line 284
    :cond_38
    iput-boolean v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    .line 285
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->createProgressDialog()V

    .line 286
    const/4 v2, 0x5

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v0

    .line 288
    .local v0, mType:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/Controller;->getUserProfile(I)V

    .line 289
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setDefaultAccount()V

    goto :goto_c

    .line 292
    .end local v0           #mType:I
    :sswitch_4f
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setDefaultAccount()V

    .line 293
    sget-boolean v2, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    if-eq v2, v1, :cond_5a

    sget-boolean v2, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    if-ne v2, v1, :cond_68

    .line 294
    :cond_5a
    const-string v2, "AccountSetupSncRestoreOptions"

    const-string v3, "Going back to AccountSetupActivity, since its from SetupWizard"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    .line 306
    :goto_64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->finish()V

    goto :goto_c

    .line 297
    :cond_68
    sget-boolean v2, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    if-ne v2, v1, :cond_7a

    .line 298
    const-string v2, "AccountSetupSncRestoreOptions"

    const-string v3, "Going back to AccountSetupActivity, since its from account manager"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->finish()V

    goto :goto_64

    .line 303
    :cond_7a
    const-string v2, "AccountSetupSncRestoreOptions"

    const-string v3, "User Pressed Add account"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionNewAccount(Landroid/app/Activity;)V

    goto :goto_64

    .line 273
    nop

    :sswitch_data_86
    .sparse-switch
        0x7f10002d -> :sswitch_d
        0x7f1002e5 -> :sswitch_4f
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 138
    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 140
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 144
    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 146
    return-void
.end method
