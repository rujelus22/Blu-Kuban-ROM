.class final enum Lcom/dropbox/android/activity/lock/k;
.super Lcom/dropbox/android/activity/lock/i;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/lock/i;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/lock/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v0

    if-nez v0, :cond_a

    .line 73
    const v0, 0x7f09013c

    .line 75
    :goto_9
    return v0

    :cond_a
    const v0, 0x7f09013d

    goto :goto_9
.end method

.method public final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v0

    if-nez v0, :cond_a

    .line 64
    invoke-static {p1, p2, p3}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V

    .line 68
    :goto_9
    return-void

    .line 66
    :cond_a
    invoke-static {p1, p2, p3}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)Z

    goto :goto_9
.end method
