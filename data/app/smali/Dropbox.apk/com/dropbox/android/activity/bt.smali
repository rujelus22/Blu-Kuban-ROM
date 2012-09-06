.class final enum Lcom/dropbox/android/activity/bt;
.super Lcom/dropbox/android/activity/bs;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/bs;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/bp;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/TextEditActivity;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    .line 83
    new-instance v0, Lcom/dropbox/android/activity/bu;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/android/activity/bu;-><init>(Lcom/dropbox/android/activity/bt;Lcom/dropbox/android/activity/TextEditActivity;)V

    .line 89
    new-instance v1, Lcom/dropbox/android/activity/bv;

    invoke-direct {v1, p0, p1}, Lcom/dropbox/android/activity/bv;-><init>(Lcom/dropbox/android/activity/bt;Lcom/dropbox/android/activity/TextEditActivity;)V

    .line 102
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 104
    const v3, 0x7f090169

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v1, 0x7f09016a

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    const v0, 0x7f090167

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 108
    const v0, 0x7f090168

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
