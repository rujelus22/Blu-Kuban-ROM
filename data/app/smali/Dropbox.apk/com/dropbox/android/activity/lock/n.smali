.class final enum Lcom/dropbox/android/activity/lock/n;
.super Lcom/dropbox/android/activity/lock/i;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/lock/i;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/lock/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I
    .registers 3
    .parameter

    .prologue
    .line 137
    const v0, 0x7f09013e

    return v0
.end method

.method public final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-static {p1, p2, p3}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)Z

    move-result v0

    .line 128
    if-eqz v0, :cond_12

    .line 129
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v0

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/a;->b(Z)V

    .line 131
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    .line 133
    :cond_12
    return-void
.end method
