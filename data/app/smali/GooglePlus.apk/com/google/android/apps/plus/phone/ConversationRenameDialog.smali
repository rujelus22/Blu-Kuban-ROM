.class public Lcom/google/android/apps/plus/phone/ConversationRenameDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ConversationRenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6
    .parameter "name"
    .parameter "conversationRowId"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 110
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 115
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 81
    packed-switch p2, :pswitch_data_3c

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 106
    :cond_6
    :goto_6
    return-void

    .line 83
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 84
    .local v1, activity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 85
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_6

    .line 86
    sget-object v7, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_RENAME:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v0, v7}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    .line 90
    .local v4, dialogFromFragment:Landroid/app/Dialog;
    if-eqz v4, :cond_6

    .line 91
    const v7, 0x7f090097

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 93
    .local v5, input:Landroid/widget/EditText;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, newName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "row_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 95
    .local v2, conversationRowId:J
    invoke-static {v1, v0, v2, v3, v6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setConversationName(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I

    goto :goto_6

    .line 81
    nop

    :pswitch_data_3c
    .packed-switch -0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 54
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 56
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030024

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 58
    .local v3, groupRenameLayout:Landroid/view/View;
    const v6, 0x7f090097

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 60
    .local v5, input:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v6, 0x7f080231

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080232

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080233

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 72
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 76
    return-object v2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 122
    .local v0, dialogFromFragment:Landroid/app/AlertDialog;
    if-eqz v0, :cond_1f

    .line 123
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 125
    .local v1, saveButton:Landroid/widget/Button;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, trimmedText:Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_20

    const/4 v3, 0x1

    :goto_1c
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    .end local v1           #saveButton:Landroid/widget/Button;
    .end local v2           #trimmedText:Ljava/lang/CharSequence;
    :cond_1f
    return-void

    .line 126
    .restart local v1       #saveButton:Landroid/widget/Button;
    .restart local v2       #trimmedText:Ljava/lang/CharSequence;
    :cond_20
    const/4 v3, 0x0

    goto :goto_1c
.end method
