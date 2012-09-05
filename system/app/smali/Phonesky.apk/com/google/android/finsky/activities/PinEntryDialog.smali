.class public Lcom/google/android/finsky/activities/PinEntryDialog;
.super Landroid/support/v4/app/FragmentActivity;
.source "PinEntryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMatchPin:Ljava/lang/String;

.field private mOkButton:Landroid/widget/Button;

.field private mPinEntryView:Landroid/widget/EditText;

.field private mPinWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 126
    new-instance v0, Lcom/google/android/finsky/activities/PinEntryDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PinEntryDialog$1;-><init>(Lcom/google/android/finsky/activities/PinEntryDialog;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/PinEntryDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
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
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/PinEntryDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "prompt-string-id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const-string v1, "pin-to-match"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "result-key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "allow-remove-pin"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    return-object v0
.end method

.method private getUserPin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
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

    .line 145
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "result-key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, resultKey:Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, result:Landroid/content/Intent;
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v4, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(ILandroid/content/Intent;)V

    .line 153
    .end local v0           #result:Landroid/content/Intent;
    :goto_18
    return-void

    .line 151
    :cond_19
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(I)V

    goto :goto_18
.end method

.method private syncOkButtonState()V
    .registers 4

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getUserPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_12

    const/4 v0, 0x1

    .line 164
    .local v0, enabled:Z
    :goto_c
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    return-void

    .line 163
    .end local v0           #enabled:Z
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 96
    .local v1, viewId:I
    sparse-switch v1, :sswitch_data_40

    .line 118
    :goto_7
    return-void

    .line 98
    :sswitch_8
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    goto :goto_7

    .line 102
    :sswitch_10
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getUserPin()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, userPin:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 105
    iget-object v2, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    const v3, 0x7f070192

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_7

    .line 110
    :cond_30
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setPinResult(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    goto :goto_7

    .line 114
    .end local v0           #userPin:Ljava/lang/String;
    :sswitch_37
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/PinEntryDialog;->setPinResult(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    goto :goto_7

    .line 96
    nop

    :sswitch_data_40
    .sparse-switch
        0x7f080083 -> :sswitch_10
        0x7f080084 -> :sswitch_8
        0x7f08014b -> :sswitch_37
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v6, 0x7f04009a

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/PinEntryDialog;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 71
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "prompt-string-id"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 72
    .local v3, promptId:I
    const-string v6, "pin-to-match"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    .line 73
    const-string v6, "allow-remove-pin"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    .local v0, allowRemovePin:Z
    const v6, 0x7f080149

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 77
    .local v4, promptView:Landroid/widget/TextView;
    const v6, 0x7f08014a

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    .line 78
    const v6, 0x7f080083

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mOkButton:Landroid/widget/Button;

    .line 79
    const v6, 0x7f080084

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 81
    .local v1, cancelButton:Landroid/widget/Button;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v6, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v6, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    if-eqz v0, :cond_6e

    .line 87
    const v6, 0x7f08014b

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 88
    .local v5, removePinButton:Landroid/widget/Button;
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .end local v5           #removePinButton:Landroid/widget/Button;
    :cond_6e
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 123
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->syncOkButtonState()V

    .line 124
    return-void
.end method
