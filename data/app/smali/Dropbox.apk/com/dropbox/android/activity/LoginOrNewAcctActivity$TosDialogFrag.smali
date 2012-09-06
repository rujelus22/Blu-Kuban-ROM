.class public Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;
.super Lcom/dropbox/android/util/DialogFragmentBase;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/dropbox/android/util/DialogFragmentBase;-><init>()V

    return-void
.end method

.method public static a(Lcom/dropbox/android/activity/aN;)Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;
    .registers 4
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;

    invoke-direct {v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;-><init>()V

    .line 108
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string v2, "account_details"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->f(Landroid/os/Bundle;)V

    .line 111
    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->V:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->V:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->V:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    .line 116
    new-instance v0, Lcom/dropbox/android/activity/aO;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/aO;-><init>(Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;)V

    .line 125
    new-instance v1, Lcom/dropbox/android/activity/aP;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/aP;-><init>(Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;)V

    .line 136
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 138
    const v3, 0x7f090028

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    const v0, 0x7f090029

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    const v0, 0x7f090026

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 142
    const v0, 0x7f090027

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
