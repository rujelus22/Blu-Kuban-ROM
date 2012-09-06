.class final enum Lcom/dropbox/android/activity/lock/m;
.super Lcom/dropbox/android/activity/lock/i;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/lock/i;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/lock/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I
    .registers 4
    .parameter

    .prologue
    .line 114
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v0

    if-nez v0, :cond_a

    .line 115
    const v0, 0x7f09013f

    .line 119
    :goto_9
    return v0

    .line 116
    :cond_a
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 117
    const v0, 0x7f090140

    goto :goto_9

    .line 119
    :cond_15
    const v0, 0x7f090141

    goto :goto_9
.end method

.method public final a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v0

    if-nez v0, :cond_11

    .line 101
    invoke-static {p1, p2, p3}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    if-eqz v0, :cond_10

    .line 103
    invoke-static {p1, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    .line 110
    :cond_10
    :goto_10
    return-void

    .line 105
    :cond_11
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1b

    .line 106
    invoke-static {p1, p2, p3}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V

    goto :goto_10

    .line 108
    :cond_1b
    invoke-static {p1, p2, p3}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)Z

    goto :goto_10
.end method
