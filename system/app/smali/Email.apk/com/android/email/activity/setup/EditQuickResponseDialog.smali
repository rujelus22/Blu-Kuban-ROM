.class public Lcom/android/email/activity/setup/EditQuickResponseDialog;
.super Landroid/app/DialogFragment;
.source "EditQuickResponseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

.field private mQuickResponseEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/EditQuickResponseDialog;)Lcom/android/emailcommon/provider/QuickResponse;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    return-object v0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/QuickResponse;J)Lcom/android/email/activity/setup/EditQuickResponseDialog;
    .registers 6
    .parameter "quickResponse"
    .parameter "accountId"

    .prologue
    .line 59
    new-instance v1, Lcom/android/email/activity/setup/EditQuickResponseDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/EditQuickResponseDialog;-><init>()V

    .line 61
    .local v1, dialog:Lcom/android/email/activity/setup/EditQuickResponseDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "accountId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 63
    if-eqz p0, :cond_16

    .line 64
    const-string v2, "quick_response"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    :cond_16
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    return-void

    .line 116
    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 122
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 142
    packed-switch p2, :pswitch_data_34

    .line 172
    :goto_3
    return-void

    .line 144
    :pswitch_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_3

    .line 147
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "accountId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 148
    .local v0, accountId:J
    iget-object v4, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 150
    .local v2, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    if-nez v4, :cond_2b

    .line 151
    new-instance v4, Lcom/android/emailcommon/provider/QuickResponse;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/emailcommon/provider/QuickResponse;-><init>(JLjava/lang/String;)V

    iput-object v4, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    .line 157
    :cond_2b
    new-instance v4, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;-><init>(Lcom/android/email/activity/setup/EditQuickResponseDialog;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_3

    .line 142
    :pswitch_data_34
    .packed-switch -0x2
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 74
    .local v1, context:Landroid/content/Context;
    const/16 v3, 0x3e8

    .line 75
    .local v3, maxLength:I
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "quick_response"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/QuickResponse;

    iput-object v5, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    .line 77
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    .line 78
    if-eqz p1, :cond_7a

    .line 79
    const-string v5, "quick_response_edited_string"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, quickResponseSavedString:Ljava/lang/String;
    if-eqz v4, :cond_2a

    .line 82
    iget-object v5, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .end local v4           #quickResponseSavedString:Ljava/lang/String;
    :cond_2a
    :goto_2a
    const/4 v5, 0x1

    new-array v2, v5, [Landroid/text/InputFilter;

    .line 89
    .local v2, filterArray:[Landroid/text/InputFilter;
    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v2, v5

    .line 90
    iget-object v5, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 92
    iget-object v5, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 93
    iget-object v5, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0805e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080043

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0805e7

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 100
    iget-object v5, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v5

    .line 84
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #filterArray:[Landroid/text/InputFilter;
    :cond_7a
    iget-object v5, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    if-eqz v5, :cond_2a

    .line 85
    iget-object v5, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    invoke-virtual {v6}, Lcom/android/emailcommon/provider/QuickResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 108
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_20

    .line 109
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    :cond_20
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "quick_response_edited_string"

    iget-object v1, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 127
    return-void
.end method
