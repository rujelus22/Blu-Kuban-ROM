.class public abstract Lcom/google/android/finsky/activities/InstrumentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "InstrumentActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/billing/BillingFlowContext;
.implements Lcom/google/android/finsky/billing/BillingFlowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/InstrumentActivity$Mode;
    }
.end annotation


# instance fields
.field protected mBillingFlowParameters:Landroid/os/Bundle;

.field protected mFragmentContainer:Landroid/view/ViewGroup;

.field private mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

.field private mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

.field protected mMainView:Landroid/view/View;

.field private mNeedsHideProgress:Z

.field private mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

.field private mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

.field private mSaveInstanceStateCalled:Z

.field protected mSavedFlowState:Landroid/os/Bundle;

.field protected mTitleView:Landroid/widget/TextView;

.field protected mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    .line 129
    sget-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/InstrumentActivity;)Lcom/google/android/finsky/billing/InstrumentFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/InstrumentActivity;Lcom/google/android/finsky/billing/InstrumentFactory;)Lcom/google/android/finsky/billing/InstrumentFactory;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/InstrumentActivity;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/InstrumentActivity;->startOrResumeFlow(Landroid/os/Bundle;)V

    return-void
.end method

.method private startOrResumeFlow(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "billing_flow"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, instrumentFamilyType:I
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v2, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->UPDATE:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v1, v2, :cond_3e

    .line 266
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v2, "update_address_header"

    iget-object v3, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/billing/InstrumentFactory;->getUpdateAddressText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p0, p0, v2}, Lcom/google/android/finsky/billing/InstrumentFactory;->updateAddress(ILcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 274
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-nez v1, :cond_4f

    .line 275
    const-string v1, "Couldn\'t instantiate BillingFlow for FOP type %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 286
    :goto_3d
    return-void

    .line 270
    :cond_3e
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v2, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v1, v2, :cond_28

    .line 271
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p0, p0, v2}, Lcom/google/android/finsky/billing/InstrumentFactory;->create(ILcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    goto :goto_28

    .line 279
    :cond_4f
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 280
    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    if-nez p1, :cond_68

    .line 282
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    goto :goto_3d

    .line 284
    :cond_68
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    goto :goto_3d
.end method

.method private stopFlow()V
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 305
    return-void
.end method

.method private useProgressDialog()Z
    .registers 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    if-eq v0, v1, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public hideFragment(Landroid/support/v4/app/Fragment;Z)V
    .registers 5
    .parameter "fragment"
    .parameter "addToBackStack"

    .prologue
    .line 347
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v1, :cond_5

    .line 356
    :goto_4
    return-void

    .line 350
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 351
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 352
    if-eqz p2, :cond_16

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 355
    :cond_16
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4
.end method

.method public hideProgress()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 393
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mNeedsHideProgress:Z

    .line 394
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->useProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 395
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v0, :cond_14

    .line 396
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v0, :cond_15

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mNeedsHideProgress:Z

    .line 407
    :cond_14
    :goto_14
    return-void

    .line 400
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    goto :goto_14

    .line 404
    :cond_1e
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_1b

    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->back()V

    .line 261
    :goto_11
    return-void

    .line 256
    :cond_12
    const-string v0, "Cannot interrupt the current flow."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    .line 259
    :cond_1b
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f08002f

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v2, 0x7f040010

    invoke-static {p0, v2, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    .line 151
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mTitleView:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->setContentView(Landroid/view/View;)V

    .line 153
    const v2, 0x7f080033

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 156
    const-string v2, "Invalid account supplied in the intent: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 160
    :cond_4e
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "authAccount"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ui_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, uiModeString:Ljava/lang/String;
    if-eqz v1, :cond_82

    .line 163
    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 164
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    if-ne v2, v3, :cond_82

    .line 165
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "instrument_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    .line 171
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v3, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v2, v3, :cond_11a

    .line 172
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mTitleView:Landroid/widget/TextView;

    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :cond_9e
    :goto_9e
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "extra_paramters"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_paramters"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "ui_mode"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "entry_point_menu"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "entry_point_menu"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "referrer_url"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "referrer_url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "referrer_list_cookie"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "referrer_list_cookie"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-eqz p1, :cond_108

    .line 187
    const-string v2, "flow_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSavedFlowState:Landroid/os/Bundle;

    .line 188
    const-string v2, "progress_dialog"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 190
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v2, :cond_108

    .line 193
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    .line 194
    iput-object v8, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 198
    :cond_108
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/finsky/activities/InstrumentActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/InstrumentActivity$1;-><init>(Lcom/google/android/finsky/activities/InstrumentActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void

    .line 173
    :cond_11a
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v3, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->UPDATE:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v2, v3, :cond_9e

    .line 174
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 246
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 247
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->stopFlow()V

    .line 248
    return-void
.end method

.method public onError(Lcom/google/android/finsky/billing/BillingFlow;Ljava/lang/String;)V
    .registers 6
    .parameter "flow"
    .parameter "error"

    .prologue
    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 455
    .local v0, result:Landroid/content/Intent;
    const-string v1, "billing_flow_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    const-string v1, "billing_flow_error_message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->setResult(ILandroid/content/Intent;)V

    .line 458
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 459
    return-void
.end method

.method public onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V
    .registers 11
    .parameter "flow"
    .parameter "canceled"
    .parameter "flowResult"

    .prologue
    const/4 v6, -0x1

    .line 424
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v3, result:Landroid/content/Intent;
    const-string v4, "billing_flow_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    const-string v4, "billing_flow_canceled"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    if-nez p2, :cond_56

    if-eqz p3, :cond_56

    const-string v4, "redeemed_offer_message_html"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 430
    const-string v4, "redeemed_offer_message_html"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, redeemedOfferHtml:Ljava/lang/String;
    const-string v4, "redeemed_offer_message_html"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->showRedeemedOfferDialog()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 434
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070197

    invoke-static {v4, v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(Ljava/lang/String;II)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    .line 436
    .local v1, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 437
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "result_intent"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 438
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 439
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "redeemed_promo_offer"

    invoke-virtual {v1, v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 446
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .end local v2           #redeemedOfferHtml:Ljava/lang/String;
    :goto_55
    return-void

    .line 444
    :cond_56
    invoke-virtual {p0, v6, v3}, Lcom/google/android/finsky/activities/InstrumentActivity;->setResult(ILandroid/content/Intent;)V

    .line 445
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    goto :goto_55
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 474
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 230
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 227
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->onBackPressed()V

    .line 228
    const/4 v0, 0x1

    goto :goto_b

    .line 225
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 5
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 465
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 466
    const-string v1, "result_intent"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 467
    .local v0, result:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->setResult(ILandroid/content/Intent;)V

    .line 468
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 470
    .end local v0           #result:Landroid/content/Intent;
    :cond_12
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 236
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    .line 239
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mNeedsHideProgress:Z

    if-eqz v0, :cond_d

    .line 240
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->hideProgress()V

    .line 242
    :cond_d
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 290
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    .line 291
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 292
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v1, :cond_19

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    .line 295
    const-string v1, "flow_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 297
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_19
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v1, :cond_24

    .line 298
    const-string v1, "progress_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 300
    :cond_24
    return-void
.end method

.method public persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 369
    return-void
.end method

.method protected removeActionBar()V
    .registers 2

    .prologue
    .line 308
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    .line 309
    .local v0, bar:Lcom/google/android/finsky/layout/CustomActionBar;
    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->hide()V

    .line 310
    return-void
.end method

.method public restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected abstract setTitle(Ljava/lang/String;)V
.end method

.method public showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .registers 6
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 333
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v2, :cond_5

    .line 343
    :goto_4
    return-void

    .line 336
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 337
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 338
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1a

    .line 339
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 341
    :cond_1a
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 342
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;IZ)V
    .registers 7
    .parameter "fragment"
    .parameter "title"
    .parameter "addToBackStack"

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v1, :cond_6

    .line 329
    :goto_5
    return-void

    .line 318
    :cond_6
    const/4 v1, -0x1

    if-eq p2, v1, :cond_27

    .line 319
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/activities/InstrumentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/InstrumentActivity;->setTitle(Ljava/lang/String;)V

    .line 323
    :goto_10
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 324
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f080033

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 325
    if-eqz p3, :cond_23

    .line 326
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 328
    :cond_23
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_5

    .line 321
    .end local v0           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_27
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public showProgress(I)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v0, :cond_5

    .line 389
    :goto_4
    return-void

    .line 382
    :cond_5
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->useProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 383
    invoke-static {p1}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->newInstance(I)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 384
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "progress_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_4

    .line 386
    :cond_1d
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected showRedeemedOfferDialog()Z
    .registers 2

    .prologue
    .line 449
    const/4 v0, 0x1

    return v0
.end method
