.class public Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# instance fields
.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Lck;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LBq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LanD;Lck;)V
    .registers 4
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lck;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:LanD;

    .line 36
    iput-object p2, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:Lck;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public a(LBq;)V
    .registers 5
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    if-eqz v0, :cond_1f

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 63
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    :cond_1f
    return-void
.end method

.method public b(LBq;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 76
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    :cond_18
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 43
    const-string v0, "NetworkStatusMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected broadcast received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_24
    return-void

    .line 47
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:Lck;

    invoke-interface {v0, p1}, Lck;->a(Landroid/content/Context;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBq;

    .line 49
    invoke-interface {v0}, LBq;->b()V

    goto :goto_30
.end method
