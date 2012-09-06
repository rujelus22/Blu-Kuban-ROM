.class final enum Lcom/dropbox/android/activity/lock/g;
.super Lcom/dropbox/android/activity/lock/c;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/lock/c;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/lock/a;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 214
    invoke-static {p1}, Lcom/dropbox/android/util/b;->c(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Landroid/app/Dialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 210
    return-void
.end method
