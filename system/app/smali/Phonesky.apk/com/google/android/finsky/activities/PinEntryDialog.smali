.class public Lcom/google/android/finsky/activities/PinEntryDialog;
.super Landroid/support/v4/app/FragmentActivity;
.source "PinEntryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# instance fields
.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mMatchPin:Ljava/lang/String;

.field private mPinEntryView:Landroid/widget/EditText;

.field private mPinWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 140
    new-instance v0, Lcom/google/android/finsky/activities/PinEntryDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PinEntryDialog$1;-><init>(Lcom/google/android/finsky/activities/PinEntryDialog;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/PinEntryDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->syncOkButtonState()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/PinEntryDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "prompt-string-id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "pin-to-match"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "result-key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "allow-remove-pin"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    return-object v0
.end method

.method private getUserPin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setPinResult(Ljava/lang/String;)V
    .registers 7
    .parameter "resultPin"

    .prologue
    const/4 v4, -0x1

    .line 159
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "result-key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, resultKey:Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v0, result:Landroid/content/Intent;
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v4, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(ILandroid/content/Intent;)V

    .line 167
    .end local v0           #result:Landroid/content/Intent;
    :goto_18
    return-void

    .line 165
    :cond_19
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(I)V

    goto :goto_18
.end method

.method private syncOkButtonState()V
    .registers 4

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getUserPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_12

    const/4 v0, 0x1

    .line 178
    .local v0, enabled:Z
    :goto_c
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    .line 179
    return-void

    .line 177
    .end local v0           #enabled:Z
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801a3

    if-ne v0, v1, :cond_10

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setPinResult(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    .line 132
    :cond_10
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v5, 0x7f0400c9

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "prompt-string-id"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 77
    .local v2, promptId:I
    const-string v5, "pin-to-match"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    .line 78
    const-string v5, "allow-remove-pin"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    .local v0, allowRemovePin:Z
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 82
    const v5, 0x7f0801a1

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    .local v3, promptView:Landroid/widget/TextView;
    const v5, 0x7f0801a2

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    .line 84
    const v5, 0x7f080067

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    .line 86
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v6, 0x7f0701ba

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 88
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v6, 0x7f0701bb

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    .line 89
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v5, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 91
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    if-eqz v0, :cond_7d

    .line 94
    const v5, 0x7f0801a3

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 95
    .local v4, removePinButton:Landroid/widget/Button;
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .end local v4           #removePinButton:Landroid/widget/Button;
    :cond_7d
    if-nez p1, :cond_86

    .line 99
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v6, "pinLock.shown"

    invoke-interface {v5, v8, v8, v6}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_86
    return-void
.end method

.method public onNegativeButtonClick()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v1, "pinLock.canceled"

    invoke-interface {v0, v2, v2, v1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(I)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    .line 124
    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getUserPin()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, userPin:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 108
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v2, "pinLock.failure"

    invoke-interface {v1, v3, v3, v2}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    const v2, 0x7f0701cb

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/PinEntryDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 117
    :goto_2b
    return-void

    .line 114
    :cond_2c
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v2, "pinLock.success"

    invoke-interface {v1, v3, v3, v2}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setPinResult(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    goto :goto_2b
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->syncOkButtonState()V

    .line 138
    return-void
.end method
