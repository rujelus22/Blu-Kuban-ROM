.class public Lcom/google/android/apps/plus/fragments/EditFragmentDialog;
.super Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
.source "EditFragmentDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mInputTextView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/apps/plus/fragments/EditFragmentDialog;
    .registers 10
    .parameter "title"
    .parameter "message"
    .parameter "hint"
    .parameter "positiveButtonText"
    .parameter "negativeButtonText"
    .parameter "cancelable"
    .parameter "allowEmptyInput"

    .prologue
    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, args:Landroid/os/Bundle;
    if-eqz p0, :cond_c

    .line 53
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_c
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "hint"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-eqz p3, :cond_1d

    .line 60
    const-string v2, "positive"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1d
    if-eqz p4, :cond_24

    .line 64
    const-string v2, "negative"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_24
    const-string v2, "allow_empty"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    new-instance v1, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;-><init>()V

    .line 70
    .local v1, frag:Lcom/google/android/apps/plus/fragments/EditFragmentDialog;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 145
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 152
    return-void
.end method

.method public checkPositiveButtonEnabled()V
    .registers 6

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 167
    .local v1, dialog:Landroid/app/AlertDialog;
    if-nez v1, :cond_9

    .line 177
    :cond_8
    :goto_8
    return-void

    .line 171
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "allow_empty"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 173
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 174
    .local v2, positiveButton:Landroid/widget/Button;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, trimmedText:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    const/4 v4, 0x1

    :goto_2f
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_8

    :cond_33
    const/4 v4, 0x0

    goto :goto_2f
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 121
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 84
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0300a9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 85
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0d0186

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->mInputTextView:Landroid/widget/EditText;

    .line 86
    const-string v4, "allow_empty"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 87
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    :cond_39
    if-eqz p1, :cond_8c

    .line 90
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->mInputTextView:Landroid/widget/EditText;

    const-string v5, "message"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_46
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->mInputTextView:Landroid/widget/EditText;

    const-string v5, "hint"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 97
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 98
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 101
    :cond_65
    const-string v4, "positive"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 102
    const-string v4, "positive"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    :cond_76
    const-string v4, "negative"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 106
    const-string v4, "negative"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    :cond_87
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 92
    :cond_8c
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->mInputTextView:Landroid/widget/EditText;

    const-string v5, "message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 128
    const-string v0, "message"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onStart()V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->checkPositiveButtonEnabled()V

    .line 138
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->checkPositiveButtonEnabled()V

    .line 160
    return-void
.end method
