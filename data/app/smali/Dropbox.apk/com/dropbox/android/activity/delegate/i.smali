.class final enum Lcom/dropbox/android/activity/delegate/i;
.super Lcom/dropbox/android/activity/delegate/g;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/g;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/h;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {p2}, Lcom/dropbox/android/activity/delegate/x;->b(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 62
    const v0, 0x7f09009d

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    return-object v1
.end method

.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    return-void
.end method
