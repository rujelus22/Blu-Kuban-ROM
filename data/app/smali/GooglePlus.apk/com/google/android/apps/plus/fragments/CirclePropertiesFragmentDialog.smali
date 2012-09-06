.class public Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
.super Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
.source "CirclePropertiesFragmentDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
    }
.end annotation


# instance fields
.field private mInputTextView:Landroid/widget/TextView;

.field private mJustFollowingCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private isNewCircle()Z
    .registers 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_12

    const-string v1, "circle_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    .registers 2
    .parameter "context"

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;-><init>()V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    .registers 7
    .parameter "context"
    .parameter "circleId"
    .parameter "circleName"
    .parameter "justFollowing"

    .prologue
    .line 61
    new-instance v1, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;-><init>()V

    .line 62
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "circle_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "just_following"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 160
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 167
    return-void
.end method

.method public checkPositiveButtonEnabled()V
    .registers 5

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 182
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez v0, :cond_9

    .line 189
    :goto_8
    return-void

    .line 186
    :cond_9
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 187
    .local v1, positiveButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, trimmedText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    const/4 v3, 0x1

    :goto_23
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_8

    :cond_27
    const/4 v3, 0x0

    goto :goto_23
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 132
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2f

    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;

    .line 134
    .local v1, listener:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
    if-nez v1, :cond_11

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .end local v1           #listener:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
    check-cast v1, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;

    .line 138
    .restart local v1       #listener:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
    :cond_11
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->isNewCircle()Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v0, 0x0

    .line 139
    .local v0, circleId:Ljava/lang/String;
    :goto_18
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;->onCirclePropertiesChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #listener:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 144
    return-void

    .line 138
    .restart local v1       #listener:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "circle_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getDialogContext()Landroid/content/Context;

    move-result-object v3

    .line 81
    .local v3, themedContext:Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 84
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030017

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 86
    .local v4, view:Landroid/view/View;
    const v5, 0x7f090072

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    .line 87
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    const v6, 0x7f08027e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(I)V

    .line 90
    const v5, 0x7f090075

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    .line 92
    const v5, 0x7f090073

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$1;

    invoke-direct {v6, p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$1;-><init>(Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    if-eqz p1, :cond_7f

    .line 101
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    const-string v6, "name"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    const-string v6, "just_following"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    :cond_5f
    :goto_5f
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->isNewCircle()Z

    move-result v5

    if-eqz v5, :cond_a0

    const v5, 0x7f08027d

    :goto_6b
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 114
    const v5, 0x7f080209

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    const v5, 0x7f08020a

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 103
    :cond_7f
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->isNewCircle()Z

    move-result v5

    if-nez v5, :cond_5f

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, args:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    const-string v6, "name"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    const-string v6, "just_following"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5f

    .line 111
    .end local v0           #args:Landroid/os/Bundle;
    :cond_a0
    const v5, 0x7f08027c

    goto :goto_6b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 125
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 126
    const-string v0, "just_following"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onStart()V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->checkPositiveButtonEnabled()V

    .line 153
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->checkPositiveButtonEnabled()V

    .line 175
    return-void
.end method
