.class public Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;
.super Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;
.source "MarkAllReadConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ARG_TITLE:Ljava/lang/String; = "reader:title"


# instance fields
.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "data"
    .parameter "title"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "reader:data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    const-string v1, "reader:title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method private getContext(Landroid/app/AlertDialog$Builder;)Landroid/content/Context;
    .registers 4
    .parameter "builder"

    .prologue
    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getPrompt()Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 79
    const v0, 0x7f0d00fe

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    :goto_f
    return-object v0

    :cond_10
    const v0, 0x7f0d00fd

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->mTitle:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->mData:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 128
    sget-object v2, Lcom/google/android/apps/reader/preference/ReaderPreference;->CONFIRM_MARK_AS_READ:Lcom/google/android/apps/reader/preference/ReaderPreference;

    if-nez p2, :cond_13

    const/4 v3, 0x1

    :goto_f
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/apps/reader/preference/ReaderPreference;->putBoolean(Landroid/content/Context;Lcom/google/android/accounts/Account;Z)Z

    .line 129
    return-void

    .line 128
    :cond_13
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, resultCode:I
    packed-switch p2, :pswitch_data_1e

    .line 115
    :goto_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 117
    .local v3, target:Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_15

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->getTargetRequestCode()I

    move-result v1

    .line 119
    .local v1, requestCode:I
    const/4 v0, 0x0

    .line 120
    .local v0, data:Landroid/content/Intent;
    invoke-virtual {v3, v1, v2, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    .end local v0           #data:Landroid/content/Intent;
    .end local v1           #requestCode:I
    :cond_15
    return-void

    .line 111
    .end local v3           #target:Landroid/support/v4/app/Fragment;
    :pswitch_16
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->markAllAsRead(J)V

    .line 112
    const/4 v2, -0x1

    goto :goto_4

    .line 109
    nop

    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_16
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, arguments:Landroid/os/Bundle;
    const-string v1, "reader:title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->mTitle:Ljava/lang/CharSequence;

    .line 75
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 88
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->getContext(Landroid/app/AlertDialog$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    const v1, 0x7f030022

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 92
    const v0, 0x102000b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    const v1, 0x1020001

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 94
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    const v0, 0x7f0d00f8

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 99
    const v0, 0x7f0d00ff

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    const v0, 0x7f0d0100

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 103
    return-object v0
.end method
