.class final enum Lcom/dropbox/android/activity/lock/j;
.super Lcom/dropbox/android/activity/lock/i;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/lock/i;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/lock/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I
    .registers 3
    .parameter

    .prologue
    .line 56
    const v0, 0x7f09013b

    return v0
.end method

.method public final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-static {p1, p2, p3}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    if-eqz v0, :cond_a

    .line 50
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    .line 52
    :cond_a
    return-void
.end method
