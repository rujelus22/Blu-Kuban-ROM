.class final enum Lcom/dropbox/android/activity/lock/d;
.super Lcom/dropbox/android/activity/lock/c;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/lock/c;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/lock/a;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 189
    const v1, 0x7f09000e

    new-instance v2, Lcom/dropbox/android/activity/lock/e;

    invoke-direct {v2, p0, p1}, Lcom/dropbox/android/activity/lock/e;-><init>(Lcom/dropbox/android/activity/lock/d;Lcom/dropbox/android/activity/lock/LockCodeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 196
    new-instance v1, Lcom/dropbox/android/activity/lock/f;

    invoke-direct {v1, p0, p1}, Lcom/dropbox/android/activity/lock/f;-><init>(Lcom/dropbox/android/activity/lock/d;Lcom/dropbox/android/activity/lock/LockCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Landroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method
