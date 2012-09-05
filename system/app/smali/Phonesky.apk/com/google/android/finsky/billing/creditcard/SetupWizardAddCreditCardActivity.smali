.class public Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;
.super Lcom/google/android/finsky/activities/InstrumentActivity;
.source "SetupWizardAddCreditCardActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "billing_flow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v1, "ui_mode"

    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->EXTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "instrument_mode"

    sget-object v2, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 35
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/InstrumentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mMainView:Landroid/view/View;

    const/high16 v2, 0x77

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/Compat;->viewSetSystemUiVisibility(Landroid/view/View;I)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->removeActionBar()V

    .line 44
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v2, "referrer_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_51

    .line 45
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v2, "referrer_url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "externalPackage?pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_51
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v2, "cardholder_name"

    const-string v3, "cardholder_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .registers 5
    .parameter "title"

    .prologue
    .line 54
    const-string v0, "Swallowing title: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method
