.class public abstract Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "BaseAccountSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$2;,
        Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;,
        Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;
    }
.end annotation


# instance fields
.field private mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

.field private mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

.field private mPendingRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 60
    new-instance v0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;-><init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 67
    new-instance v0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;-><init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Lcom/google/android/apps/plus/fragments/AccountsListFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;ILcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleResponse(ILcom/google/android/apps/plus/content/EsAccount;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleError(Lcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method private handleError(Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 10
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 246
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 247
    .local v2, exception:Ljava/lang/Exception;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v0, args:Landroid/os/Bundle;
    instance-of v3, v2, Lcom/google/android/apps/plus/api/ServerException;

    if-eqz v3, :cond_6b

    .line 249
    check-cast v2, Lcom/google/android/apps/plus/api/ServerException;

    .end local v2           #exception:Ljava/lang/Exception;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/ServerException;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v1

    .line 250
    .local v1, errCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    sget-object v3, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$2;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Response$ErrorCode:[I

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_88

    .line 272
    const-string v3, "error_message"

    const v4, 0x7f070046

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 283
    .end local v1           #errCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    :goto_38
    return-void

    .line 252
    .restart local v1       #errCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    :pswitch_39
    const-string v3, "error_message"

    const v4, 0x7f070045

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, v5, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_38

    .line 259
    :pswitch_49
    const-string v3, "error_message"

    const v4, 0x7f070041

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_38

    .line 266
    :pswitch_5a
    const-string v3, "error_message"

    const v4, 0x7f070042

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_38

    .line 279
    .end local v1           #errCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .restart local v2       #exception:Ljava/lang/Exception;
    :cond_6b
    const-string v3, "error_title"

    const v4, 0x7f070047

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v3, "error_message"

    const v4, 0x7f070043

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, v7, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_38

    .line 250
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_39
        :pswitch_49
        :pswitch_5a
    .end packed-switch
.end method

.method private handleResponse(ILcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"

    .prologue
    .line 224
    if-nez p2, :cond_3

    .line 231
    :goto_2
    return-void

    .line 227
    :cond_3
    invoke-static {p1}, Lcom/google/android/apps/plus/service/EsService;->removeIncompleteOutOfBoxResponse(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    .line 230
    .local v0, oobResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->onAccountSet(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_2
.end method


# virtual methods
.method protected chooseAccount()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 351
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_22

    .line 352
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasLoggedInThePast(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {p0}, Lcom/google/android/apps/plus/util/AccountsUtil;->getNumAccounts(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 354
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(I)V

    .line 355
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    invoke-static {p0, v3}, Lcom/google/android/apps/plus/util/AccountsUtil;->getAccountName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;->addAccount(Ljava/lang/String;)V

    .line 361
    :cond_22
    :goto_22
    return-void

    .line 357
    :cond_23
    invoke-static {p0}, Lcom/google/android/apps/plus/util/AccountsUtil;->getChooseAccountIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 358
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_22
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 376
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected abstract onAccountSet(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/android/apps/plus/content/EsAccount;)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 202
    packed-switch p1, :pswitch_data_22

    .line 215
    :goto_3
    return-void

    .line 204
    :pswitch_4
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1a

    if-eqz p3, :cond_1a

    .line 205
    const-string v1, "authAccount"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, accountName:Ljava/lang/String;
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(I)V

    .line 207
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;->addAccount(Ljava/lang/String;)V

    goto :goto_3

    .line 209
    .end local v0           #accountName:Ljava/lang/String;
    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->finish()V

    goto :goto_3

    .line 202
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 168
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    if-eqz v0, :cond_12

    .line 169
    check-cast p1, Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->setAccountsAdder(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;)V

    .line 172
    :cond_12
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showAccountList()V

    .line 333
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showAccountList()V

    .line 325
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    if-eqz p1, :cond_19

    .line 111
    const-string v0, "reqid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 112
    const-string v0, "reqid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 117
    :cond_19
    :goto_19
    return-void

    .line 114
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    goto :goto_19
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter "dialogId"
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 290
    if-nez p2, :cond_c

    move-object v3, v2

    .line 291
    .local v3, title:Ljava/lang/String;
    :goto_5
    if-nez p2, :cond_13

    move-object v1, v2

    .line 293
    .local v1, message:Ljava/lang/String;
    :goto_8
    packed-switch p1, :pswitch_data_4a

    .line 316
    :goto_b
    :pswitch_b
    return-object v2

    .line 290
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_c
    const-string v4, "error_title"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 291
    .restart local v3       #title:Ljava/lang/String;
    :cond_13
    const-string v4, "error_message"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 299
    .restart local v1       #message:Ljava/lang/String;
    :pswitch_1a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 302
    const v4, 0x7f070168

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_b

    .line 308
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_33
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 309
    .local v2, progressDialog:Landroid/app/ProgressDialog;
    const v4, 0x7f070040

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 311
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_b

    .line 293
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_33
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->setIntent(Landroid/content/Intent;)V

    .line 195
    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 160
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 124
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_55

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_55

    .line 131
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->dismissDialog(I)V

    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_29

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->showList()V

    .line 135
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 136
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    if-eqz v0, :cond_52

    .line 137
    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isOutOfBoxError(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 138
    :cond_45
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleResponse(ILcom/google/android/apps/plus/content/EsAccount;)V

    .line 144
    :cond_52
    :goto_52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 148
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_5c

    .line 149
    invoke-virtual {p0, v3, v3}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->overridePendingTransition(II)V

    .line 151
    :cond_5c
    return-void

    .line 140
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_5d
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleError(Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_52
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 182
    const-string v0, "reqid"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    :cond_12
    return-void
.end method

.method protected showAccountList()V
    .registers 3

    .prologue
    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 340
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->showList()V

    .line 344
    :goto_b
    return-void

    .line 342
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->chooseAccount()V

    goto :goto_b
.end method

.method protected showAccountSelectionOnCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_41

    .line 388
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->setContentView(I)V

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_22

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showTitlebar(Z)V

    .line 395
    const v0, 0x7f020087

    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 399
    :cond_22
    const v0, 0x7f0d0033

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 401
    const v0, 0x7f0d0034

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 405
    :cond_40
    :goto_40
    return-void

    .line 402
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_40

    if-nez p1, :cond_40

    .line 403
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->chooseAccount()V

    goto :goto_40
.end method
