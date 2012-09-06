.class final enum Lcom/dropbox/android/activity/lock/l;
.super Lcom/dropbox/android/activity/lock/i;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/lock/i;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/lock/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I
    .registers 3
    .parameter

    .prologue
    .line 93
    const v0, 0x7f09013b

    return v0
.end method

.method public final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {p1, p2, p3}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    if-eqz v0, :cond_12

    .line 85
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/a;->a(Z)V

    .line 87
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    .line 89
    :cond_12
    return-void
.end method
