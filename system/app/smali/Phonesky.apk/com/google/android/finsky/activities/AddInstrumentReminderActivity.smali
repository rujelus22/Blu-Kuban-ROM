.class public Lcom/google/android/finsky/activities/AddInstrumentReminderActivity;
.super Lcom/google/android/finsky/activities/InstrumentActivity;
.source "AddInstrumentReminderActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->REMINDER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    const-string v4, "addInstrumentReminder"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->createIntent(Ljava/lang/String;IILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/activities/AddInstrumentReminderActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    const-string v1, "instrument_mode"

    sget-object v2, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/InstrumentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AddInstrumentReminderActivity;->removeActionBar()V

    .line 23
    return-void
.end method

.method public onFinished(Lcom/google/android/finsky/billing/BillingFlow;Z)V
    .registers 8
    .parameter "flow"
    .parameter "canceled"

    .prologue
    .line 42
    if-nez p2, :cond_1e

    .line 43
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AddInstrumentReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "billing_flow"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, instrumentFamilyType:I
    if-nez v0, :cond_22

    .line 47
    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/AddInstrumentReminderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, message:Ljava/lang/String;
    :goto_16
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 53
    .end local v0           #instrumentFamilyType:I
    .end local v1           #message:Ljava/lang/String;
    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/activities/InstrumentActivity;->onFinished(Lcom/google/android/finsky/billing/BillingFlow;Z)V

    .line 54
    return-void

    .line 49
    .restart local v0       #instrumentFamilyType:I
    :cond_22
    const v2, 0x7f07002f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/AddInstrumentReminderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #message:Ljava/lang/String;
    goto :goto_16
.end method

.method protected setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 38
    return-void
.end method
