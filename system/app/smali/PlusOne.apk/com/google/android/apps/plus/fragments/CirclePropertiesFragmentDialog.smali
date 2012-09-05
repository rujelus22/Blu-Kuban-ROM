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
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private isNewCircle()Z
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
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
    .line 56
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
    .line 64
    new-instance v1, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;-><init>()V

    .line 65
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "circle_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "just_following"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 178
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 185
    return-void
.end method

.method public checkPositiveButtonEnabled()V
    .registers 5

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 200
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez v0, :cond_9

    .line 207
    :goto_8
    return-void

    .line 204
    :cond_9
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 205
    .local v1, positiveButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 206
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
    .line 150
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2f

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;

    .line 152
    .local v1, listener:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
    if-nez v1, :cond_11

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .end local v1           #listener:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
    check-cast v1, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;

    .line 156
    .restart local v1       #listener:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
    :cond_11
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->isNewCircle()Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v0, 0x0

    .line 157
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

    .line 161
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #listener:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 162
    return-void

    .line 156
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
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x8

    .line 83
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_a0

    .line 87
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 92
    .local v3, themedContext:Landroid/content/Context;
    :goto_15
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 93
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030016

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 95
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0d0067

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    .line 96
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    const v6, 0x7f0701d0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(I)V

    .line 99
    const v5, 0x7f0d006a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    .line 101
    const v5, 0x7f0d0068

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$1;

    invoke-direct {v6, p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$1;-><init>(Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    if-eqz p1, :cond_ae

    .line 110
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    const-string v6, "name"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    const-string v6, "just_following"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    :cond_6b
    :goto_6b
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->isNewCircle()Z

    move-result v5

    if-eqz v5, :cond_cf

    const v5, 0x7f0701cf

    :goto_77
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 123
    const v5, 0x7f070168

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    const v5, 0x7f070169

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->isNewCircle()Z

    move-result v5

    if-nez v5, :cond_9b

    .line 127
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    const v5, 0x7f0d0069

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_9b
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 89
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #themedContext:Landroid/content/Context;
    .end local v4           #view:Landroid/view/View;
    :cond_a0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x103000b

    invoke-direct {v3, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v3       #themedContext:Landroid/content/Context;
    goto/16 :goto_15

    .line 112
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #view:Landroid/view/View;
    :cond_ae
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->isNewCircle()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, args:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    const-string v6, "name"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    const-string v6, "just_following"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_6b

    .line 120
    .end local v0           #args:Landroid/os/Bundle;
    :cond_cf
    const v5, 0x7f0701ce

    goto :goto_77
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 143
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 144
    const-string v0, "just_following"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onStart()V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->checkPositiveButtonEnabled()V

    .line 171
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->checkPositiveButtonEnabled()V

    .line 193
    return-void
.end method
