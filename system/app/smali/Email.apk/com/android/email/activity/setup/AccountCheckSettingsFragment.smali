.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.super Landroid/app/Fragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    }
.end annotation


# instance fields
.field mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

.field private mAttached:Z

.field private mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field private mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorStringId:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 1051
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->checkITPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onErrorDialogEditButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onSecurityRequiredDialogResultOk(Z)V

    return-void
.end method

.method private checkITPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 6
    .parameter "context"
    .parameter "acc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 961
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, uriStr:Ljava/lang/String;
    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    if-nez p1, :cond_f

    .line 978
    :cond_e
    return-void

    .line 965
    :cond_f
    invoke-static {p1}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 966
    const-string v1, "AccountSetupCheckSettings"

    const-string v2, "Exchange IT Policy has disabled POP/IMAP Email"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v1
.end method

.method private getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    .registers 4

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 362
    .local v1, target:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_b

    .line 363
    check-cast v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .line 367
    .end local v1           #target:Landroid/app/Fragment;
    :goto_a
    return-object v1

    .line 365
    .restart local v1       #target:Landroid/app/Fragment;
    :cond_b
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 366
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_17

    .line 367
    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .end local v0           #activity:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_a

    .line 369
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_17
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method public static newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    .registers 3
    .parameter "mode"
    .parameter "parentFragment"

    .prologue
    .line 170
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;-><init>()V

    .line 171
    .local v0, f:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {v0, p1, p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 172
    return-object v0
.end method

.method private onCheckingDialogCancel()V
    .registers 3

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 398
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 400
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 402
    .local v0, fm:Landroid/app/FragmentManager;
    if-eqz v0, :cond_11

    .line 403
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 405
    :cond_11
    return-void
.end method

.method private onErrorDialogEditButton()V
    .registers 6

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 416
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    :try_start_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_1b

    move-result-object v0

    .line 420
    :goto_5
    if-eqz v0, :cond_11

    .line 421
    iget v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_26

    .line 423
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 429
    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 430
    .local v2, fm:Landroid/app/FragmentManager;
    if-eqz v2, :cond_1a

    .line 431
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 433
    :cond_1a
    return-void

    .line 417
    .end local v2           #fm:Landroid/app/FragmentManager;
    :catch_1b
    move-exception v1

    .line 418
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "AccountCheckSettingsFragment"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 426
    .end local v1           #e:Ljava/lang/Exception;
    :cond_26
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    goto :goto_11
.end method

.method private onSecurityRequiredDialogResultOk(Z)V
    .registers 5
    .parameter "okPressed"

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 443
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    if-eqz p1, :cond_14

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 447
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 448
    .local v1, fm:Landroid/app/FragmentManager;
    if-eqz v1, :cond_13

    .line 449
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 451
    :cond_13
    return-void

    .line 443
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_14
    const/4 v2, 0x2

    goto :goto_7
.end method

.method private recoverAndDismissCheckingDialog()V
    .registers 3

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v1, :cond_14

    .line 377
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 378
    .local v0, fm:Landroid/app/FragmentManager;
    if-eqz v0, :cond_14

    .line 379
    const-string v1, "CheckProgressDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 382
    .end local v0           #fm:Landroid/app/FragmentManager;
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-eqz v1, :cond_20

    .line 383
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->dismiss()V

    .line 384
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_21

    .line 388
    :cond_20
    :goto_20
    return-void

    .line 386
    :catch_21
    move-exception v1

    goto :goto_20
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 197
    const-string v2, "Email"

    const-string v3, "AccountCheckSettingsFragment onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    if-nez v2, :cond_2b

    .line 201
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getTargetRequestCode()I

    move-result v1

    .line 202
    .local v1, checkMode:I
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 204
    .local v0, checkAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_1f

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v2, :cond_34

    .line 205
    :cond_1f
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 206
    if-nez v0, :cond_2c

    .line 207
    const-string v2, "Email"

    const-string v3, "AccountCheckTask checkAccount is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0           #checkAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #checkMode:I
    :cond_2b
    :goto_2b
    return-void

    .line 209
    .restart local v0       #checkAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v1       #checkMode:I
    :cond_2c
    const-string v2, "Email"

    const-string v3, "AccountCheckTask checkAccount.mHostAuthRecv is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 213
    :cond_34
    new-instance v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 214
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->setRetainInstance(Z)V

    .line 184
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 244
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 246
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 257
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 234
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 235
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 226
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    if-eqz v0, :cond_12

    .line 227
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    iget v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorStringId:I

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 229
    :cond_12
    return-void
.end method

.method public reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 12
    .parameter "newState"
    .parameter "errorStringId"
    .parameter "errorMessage"
    .parameter "autoDiscoverResult"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 273
    iput p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 274
    iput p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorStringId:I

    .line 275
    iput-object p3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    .line 276
    iput-object p4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 279
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    if-eqz v5, :cond_3a

    .line 280
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 282
    .local v1, fm:Landroid/app/FragmentManager;
    packed-switch p1, :pswitch_data_ba

    .line 341
    const-string v3, "CheckProgressDialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 343
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v3, :cond_ab

    .line 344
    iget v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-static {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 346
    :try_start_2b
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    const-string v5, "CheckProgressDialog"

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_3a
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_3a} :catch_b7

    .line 355
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_3a
    :goto_3a
    return-void

    .line 286
    .restart local v1       #fm:Landroid/app/FragmentManager;
    :pswitch_3b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 289
    :try_start_3e
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_41} :catch_b3

    .line 293
    :goto_41
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 295
    iput v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    goto :goto_3a

    .line 299
    :pswitch_4b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 301
    const-string v3, "SecurityRequiredDialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3a

    .line 303
    :try_start_56
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    move-result-object v2

    .line 305
    .local v2, securityRequiredDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "SecurityRequiredDialog"

    invoke-virtual {v3, v2, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_69
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_69} :catch_6a

    goto :goto_3a

    .line 308
    .end local v2           #securityRequiredDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    :catch_6a
    move-exception v3

    goto :goto_3a

    .line 315
    :pswitch_6c
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 317
    const-string v3, "ErrorDialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3a

    .line 319
    :try_start_77
    iget v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorStringId:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I[Ljava/lang/String;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    move-result-object v0

    .line 321
    .local v0, errorDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "ErrorDialog"

    invoke-virtual {v3, v0, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_92
    .catch Ljava/lang/IllegalStateException; {:try_start_77 .. :try_end_92} :catch_93

    goto :goto_3a

    .line 322
    .end local v0           #errorDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    :catch_93
    move-exception v3

    goto :goto_3a

    .line 328
    :pswitch_95
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 331
    :try_start_98
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_9b
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_9b} :catch_b5

    .line 335
    :goto_9b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v6, :cond_a9

    :goto_a3
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-interface {v5, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_3a

    :cond_a9
    move v3, v4

    goto :goto_a3

    .line 350
    :cond_ab
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iget v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->updateProgress(I)V

    goto :goto_3a

    .line 290
    :catch_b3
    move-exception v4

    goto :goto_41

    .line 332
    :catch_b5
    move-exception v5

    goto :goto_9b

    .line 347
    :catch_b7
    move-exception v3

    goto :goto_3a

    .line 282
    nop

    :pswitch_data_ba
    .packed-switch 0x4
        :pswitch_3b
        :pswitch_4b
        :pswitch_6c
        :pswitch_6c
        :pswitch_95
    .end packed-switch
.end method
