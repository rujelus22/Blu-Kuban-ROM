.class public Lcom/google/googlenav/friend/history/LocationHistoryIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/google/googlenav/friend/history/s;
    .registers 4
    .parameter

    .prologue
    .line 44
    invoke-static {p1}, LaT/b;->a(Landroid/content/Context;)LaT/b;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/google/googlenav/friend/history/s;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/friend/history/s;-><init>(Landroid/content/Context;LaT/b;)V

    return-object v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/history/LocationHistoryIntentReceiver;->a(Landroid/content/Context;)Lcom/google/googlenav/friend/history/s;

    move-result-object v0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 28
    const-string v1, "signedin"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 40
    :cond_18
    :goto_18
    return-void

    .line 33
    :cond_19
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "signedin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 35
    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/s;->a()V

    goto :goto_18
.end method
