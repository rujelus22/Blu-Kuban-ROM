.class public abstract Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "BaseAccountSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$4;,
        Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;,
        Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;
    }
.end annotation


# instance fields
.field private mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

.field private mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

.field private mAddAccountPendingRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mShowOnAttach:Z

.field private mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 66
    new-instance v0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;-><init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 74
    new-instance v0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;-><init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Lcom/google/android/apps/plus/fragments/AccountsListFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mShowOnAttach:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;ILcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleResponse(ILcom/google/android/apps/plus/content/EsAccount;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleError(Lcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method private chooseAccountManually()V
    .registers 3

    .prologue
    .line 480
    invoke-static {p0}, Lcom/google/android/apps/plus/util/AccountsUtil;->getChooseAccountIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 481
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 482
    return-void
.end method

.method private handleError(Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 11
    .parameter "result"

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 313
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 314
    .local v2, exception:Ljava/lang/Exception;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v0, args:Landroid/os/Bundle;
    instance-of v3, v2, Lcom/google/android/apps/plus/api/ServerException;

    if-eqz v3, :cond_87

    .line 316
    check-cast v2, Lcom/google/android/apps/plus/api/ServerException;

    .end local v2           #exception:Ljava/lang/Exception;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/ServerException;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v1

    .line 317
    .local v1, errCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    sget-object v3, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Response$ErrorCode:[I

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a4

    .line 348
    const-string v3, "error_message"

    const v4, 0x7f080058

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v8, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 359
    .end local v1           #errCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    :goto_38
    return-void

    .line 319
    .restart local v1       #errCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    :pswitch_39
    const-string v3, "error_message"

    const v4, 0x7f080057

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, v5, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_38

    .line 326
    :pswitch_49
    const-string v3, "error_message"

    const v4, 0x7f080053

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_38

    .line 333
    :pswitch_5a
    const-string v3, "error_message"

    const v4, 0x7f080054

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_38

    .line 339
    :pswitch_6b
    const-string v3, "error_title"

    const v4, 0x7f08005a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v3, "error_message"

    const v4, 0x7f08005b

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, v8, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_38

    .line 355
    .end local v1           #errCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .restart local v2       #exception:Ljava/lang/Exception;
    :cond_87
    const-string v3, "error_title"

    const v4, 0x7f080059

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v3, "error_message"

    const v4, 0x7f080055

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, v7, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_38

    .line 317
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_39
        :pswitch_49
        :pswitch_5a
        :pswitch_6b
    .end packed-switch
.end method

.method private handleResponse(ILcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"

    .prologue
    .line 291
    if-nez p2, :cond_3

    .line 298
    :goto_2
    return-void

    .line 294
    :cond_3
    invoke-static {p1}, Lcom/google/android/apps/plus/service/EsService;->removeIncompleteOutOfBoxResponse(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    .line 297
    .local v0, oobResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->onAccountSet(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_2
.end method

.method private upgradeAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 539
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/EsService;->upgradeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    .line 540
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(I)V

    .line 541
    return-void
.end method


# virtual methods
.method protected chooseAccount()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_20

    .line 457
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasLoggedInThePast(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p0}, Lcom/google/android/apps/plus/util/AccountsUtil;->getNumAccounts(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 462
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasVisitedOob(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 463
    invoke-static {p0, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->setHasVisitedOob(Landroid/content/Context;Z)V

    .line 464
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->finish()V

    .line 473
    :cond_20
    :goto_20
    return-void

    .line 467
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/util/AccountsUtil;->getAccountName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;->addAccount(Ljava/lang/String;)V

    goto :goto_20

    .line 470
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->chooseAccountManually()V

    goto :goto_20
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 497
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public handleUpgradeFailure()V
    .registers 4

    .prologue
    .line 561
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 562
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "error_title"

    const v2, 0x7f080059

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v1, "error_message"

    const v2, 0x7f080055

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 565
    return-void
.end method

.method public handleUpgradeSuccess(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 549
    .local v0, target:Landroid/content/Intent;
    if-nez v0, :cond_12

    .line 550
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 553
    :cond_12
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 554
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->finish()V

    .line 555
    return-void
.end method

.method protected abstract onAccountSet(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/android/apps/plus/content/EsAccount;)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 270
    packed-switch p1, :pswitch_data_1e

    .line 282
    :goto_3
    return-void

    .line 272
    :pswitch_4
    const/4 v1, -0x1

    if-ne p2, v1, :cond_15

    if-eqz p3, :cond_15

    .line 273
    const-string v1, "authAccount"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, accountName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;->addAccount(Ljava/lang/String;)V

    goto :goto_3

    .line 276
    .end local v0           #accountName:Ljava/lang/String;
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->setResult(I)V

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->finish()V

    goto :goto_3

    .line 270
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 226
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    if-eqz v0, :cond_1e

    .line 227
    check-cast p1, Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->setAccountsAdder(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;)V

    .line 230
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mShowOnAttach:Z

    if-eqz v0, :cond_1e

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->showList()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mShowOnAttach:Z

    .line 235
    :cond_1e
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showAccountList()V

    .line 438
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showAccountList()V

    .line 430
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    if-eqz p1, :cond_2e

    .line 141
    const-string v0, "aa_reqid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 142
    const-string v0, "aa_reqid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    .line 148
    :goto_1a
    const-string v0, "ua_reqid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 149
    const-string v0, "ua_reqid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    .line 155
    :cond_2e
    :goto_2e
    return-void

    .line 145
    :cond_2f
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    goto :goto_1a

    .line 152
    :cond_32
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    goto :goto_2e
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter "dialogId"
    .parameter "args"

    .prologue
    const v6, 0x7f080209

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 366
    if-nez p2, :cond_f

    move-object v3, v2

    .line 367
    .local v3, title:Ljava/lang/String;
    :goto_8
    if-nez p2, :cond_16

    move-object v1, v2

    .line 369
    .local v1, message:Ljava/lang/String;
    :goto_b
    packed-switch p1, :pswitch_data_80

    .line 421
    :goto_e
    :pswitch_e
    return-object v2

    .line 366
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_f
    const-string v4, "error_title"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 367
    .restart local v3       #title:Ljava/lang/String;
    :cond_16
    const-string v4, "error_message"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 375
    .restart local v1       #message:Ljava/lang/String;
    :pswitch_1d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 378
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_e

    .line 384
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_33
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 385
    .local v2, progressDialog:Landroid/app/ProgressDialog;
    const v4, 0x7f080052

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 387
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_e

    .line 392
    .end local v2           #progressDialog:Landroid/app/ProgressDialog;
    :pswitch_49
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 393
    .restart local v2       #progressDialog:Landroid/app/ProgressDialog;
    const v4, 0x7f08005d

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 395
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_e

    .line 400
    .end local v2           #progressDialog:Landroid/app/ProgressDialog;
    :pswitch_5f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 402
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 403
    new-instance v4, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$2;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$2;-><init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)V

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    new-instance v4, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$3;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$3;-><init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_e

    .line 369
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_5f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_33
        :pswitch_49
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 261
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->setIntent(Landroid/content/Intent;)V

    .line 263
    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 217
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 218
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 162
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 166
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_55

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_55

    .line 169
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->dismissDialog(I)V

    .line 170
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_2a

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->showList()V

    .line 173
    :cond_2a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 174
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    if-eqz v0, :cond_53

    .line 175
    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isOutOfBoxError(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 176
    :cond_46
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleResponse(ILcom/google/android/apps/plus/content/EsAccount;)V

    .line 183
    :cond_53
    :goto_53
    iput-object v5, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    .line 187
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_55
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_85

    .line 189
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_85

    .line 190
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->dismissDialog(I)V

    .line 191
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 193
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    if-eqz v0, :cond_83

    .line 194
    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-nez v1, :cond_91

    .line 195
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleUpgradeSuccess(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 201
    :cond_83
    :goto_83
    iput-object v5, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    .line 205
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_8c

    .line 206
    invoke-virtual {p0, v3, v3}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->overridePendingTransition(II)V

    .line 208
    :cond_8c
    return-void

    .line 179
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_8d
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleError(Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_53

    .line 197
    :cond_91
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleUpgradeFailure()V

    goto :goto_83
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 245
    const-string v0, "aa_reqid"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    .line 249
    const-string v0, "ua_reqid"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    :cond_21
    return-void
.end method

.method protected showAccountList()V
    .registers 3

    .prologue
    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 445
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->showList()V

    .line 449
    :goto_b
    return-void

    .line 447
    :cond_c
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->chooseAccountManually()V

    goto :goto_b
.end method

.method protected showAccountSelectionOrUpgradeAccount(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 508
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccountUnsafe(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 509
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_10

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->isAccountUpgradeRequired(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 510
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->upgradeAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 532
    :cond_f
    :goto_f
    return-void

    .line 514
    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_4e

    .line 515
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->setContentView(I)V

    .line 517
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2f

    .line 519
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showTitlebar(Z)V

    .line 522
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 526
    :cond_2f
    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 528
    const v1, 0x7f090045

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f

    .line 529
    :cond_4e
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;

    if-nez v1, :cond_f

    if-nez p1, :cond_f

    .line 530
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->chooseAccount()V

    goto :goto_f
.end method
