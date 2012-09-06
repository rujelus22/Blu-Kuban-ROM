.class final enum Lcom/dropbox/android/activity/aK;
.super Lcom/dropbox/android/activity/aI;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/aI;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/aH;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/LoginOrNewAcctActivity;)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 172
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 176
    const v1, 0x7f09001a

    invoke-virtual {p1, v1}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 179
    return-object v0
.end method
