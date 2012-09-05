.class public abstract Lcom/google/android/finsky/activities/InstrumentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "InstrumentActivity.java"

# interfaces
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

.field private mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    .line 114
    sget-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/InstrumentActivity;)Lcom/google/android/finsky/billing/InstrumentFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/InstrumentActivity;Lcom/google/android/finsky/billing/InstrumentFactory;)Lcom/google/android/finsky/billing/InstrumentFactory;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/InstrumentActivity;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/InstrumentActivity;->startOrResumeFlow(Landroid/os/Bundle;)V

    return-void
.end method

.method private startOrResumeFlow(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f08003a

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "billing_flow"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 227
    .local v0, instrumentFamilyType:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v3, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->UPDATE:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v2, v3, :cond_4e

    .line 228
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "update_address_header"

    iget-object v4, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/billing/InstrumentFactory;->getUpdateAddressText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 231
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    iget-object v3, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    invoke-virtual {v2, v0, p0, p0, v3}, Lcom/google/android/finsky/billing/InstrumentFactory;->updateAddress(ILcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 240
    .end local v1           #title:Landroid/widget/TextView;
    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-nez v2, :cond_6d

    .line 241
    const-string v2, "Couldn\'t instantiate BillingFlow for FOP type %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 252
    :goto_4d
    return-void

    .line 234
    :cond_4e
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v3, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v2, v3, :cond_38

    .line 235
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 236
    .restart local v1       #title:Landroid/widget/TextView;
    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    iget-object v3, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    invoke-virtual {v2, v0, p0, p0, v3}, Lcom/google/android/finsky/billing/InstrumentFactory;->create(ILcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    goto :goto_38

    .line 245
    .end local v1           #title:Landroid/widget/TextView;
    :cond_6d
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 246
    const v2, 0x7f08003f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 247
    if-nez p1, :cond_84

    .line 248
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    goto :goto_4d

    .line 250
    :cond_84
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    goto :goto_4d
.end method

.method private stopFlow()V
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 271
    return-void
.end method

.method private useProgressDialog()Z
    .registers 3

    .prologue
    .line 380
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
    .line 313
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v1, :cond_5

    .line 322
    :goto_4
    return-void

    .line 316
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 317
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 318
    if-eqz p2, :cond_16

    .line 319
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 321
    :cond_16
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4
.end method

.method public hideProgress()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 356
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mNeedsHideProgress:Z

    .line 357
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->useProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 358
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v0, :cond_14

    .line 359
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v0, :cond_15

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mNeedsHideProgress:Z

    .line 370
    :cond_14
    :goto_14
    return-void

    .line 363
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    goto :goto_14

    .line 367
    :cond_1e
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_1b

    .line 215
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->back()V

    .line 223
    :goto_11
    return-void

    .line 218
    :cond_12
    const-string v0, "Cannot interrupt the current flow."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    .line 221
    :cond_1b
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v2, 0x7f040012

    invoke-static {p0, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    .line 136
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->setContentView(Landroid/view/View;)V

    .line 137
    const v2, 0x7f08003e

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 140
    const-string v2, "Invalid account supplied in the intent: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 144
    :cond_41
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "authAccount"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ui_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, uiModeString:Ljava/lang/String;
    if-eqz v1, :cond_78

    .line 147
    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 148
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    if-ne v2, v3, :cond_78

    .line 149
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    const v3, 0x7f08003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    const v3, 0x7f08003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "instrument_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    .line 156
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "extra_paramters"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_paramters"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 158
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "ui_mode"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "referrer_url"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "referrer_url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "referrer_list_cookie"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "referrer_list_cookie"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-eqz p1, :cond_df

    .line 164
    const-string v2, "flow_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSavedFlowState:Landroid/os/Bundle;

    .line 165
    const-string v2, "progress_dialog"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 167
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v2, :cond_df

    .line 170
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    .line 171
    iput-object v7, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 175
    :cond_df
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/finsky/activities/InstrumentActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/InstrumentActivity$1;-><init>(Lcom/google/android/finsky/activities/InstrumentActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 209
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->stopFlow()V

    .line 210
    return-void
.end method

.method public onError(Lcom/google/android/finsky/billing/BillingFlow;Ljava/lang/String;)V
    .registers 6
    .parameter "flow"
    .parameter "error"

    .prologue
    .line 401
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    .local v0, result:Landroid/content/Intent;
    const-string v1, "billing_flow_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const-string v1, "billing_flow_error_message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->setResult(ILandroid/content/Intent;)V

    .line 405
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 406
    return-void
.end method

.method public onFinished(Lcom/google/android/finsky/billing/BillingFlow;Z)V
    .registers 8
    .parameter "flow"
    .parameter "canceled"

    .prologue
    const/4 v4, 0x0

    .line 387
    if-nez p2, :cond_26

    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v3, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v2, v3, :cond_26

    .line 388
    const-string v2, "Successfully added an instrument, disabling reminder."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingPreferences;->getStopAddInstrumentReminder(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 392
    .end local v0           #accountName:Ljava/lang/String;
    :cond_26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 393
    .local v1, result:Landroid/content/Intent;
    const-string v2, "billing_flow_error"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    const-string v2, "billing_flow_canceled"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/android/finsky/activities/InstrumentActivity;->setResult(ILandroid/content/Intent;)V

    .line 396
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 397
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 193
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 190
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->onBackPressed()V

    .line 191
    const/4 v0, 0x1

    goto :goto_b

    .line 188
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 201
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mNeedsHideProgress:Z

    if-eqz v0, :cond_a

    .line 202
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->hideProgress()V

    .line 204
    :cond_a
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    .line 257
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 258
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v1, :cond_19

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    .line 261
    const-string v1, "flow_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 263
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_19
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v1, :cond_24

    .line 264
    const-string v1, "progress_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 266
    :cond_24
    return-void
.end method

.method public persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 335
    return-void
.end method

.method protected removeActionBar()V
    .registers 2

    .prologue
    .line 274
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    .line 275
    .local v0, bar:Lcom/google/android/finsky/layout/CustomActionBar;
    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->hide()V

    .line 276
    return-void
.end method

.method public restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 339
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
    .line 299
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v2, :cond_5

    .line 309
    :goto_4
    return-void

    .line 302
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 303
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 304
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1a

    .line 305
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 307
    :cond_1a
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 308
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

    .line 281
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v1, :cond_6

    .line 295
    :goto_5
    return-void

    .line 284
    :cond_6
    const/4 v1, -0x1

    if-eq p2, v1, :cond_27

    .line 285
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/activities/InstrumentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/InstrumentActivity;->setTitle(Ljava/lang/String;)V

    .line 289
    :goto_10
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 290
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f08003e

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 291
    if-eqz p3, :cond_23

    .line 292
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 294
    :cond_23
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_5

    .line 287
    .end local v0           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_27
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public showProgress(I)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->useProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 346
    invoke-static {p1}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->newInstance(I)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 347
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "progress_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 352
    :goto_17
    return-void

    .line 349
    :cond_18
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17
.end method
