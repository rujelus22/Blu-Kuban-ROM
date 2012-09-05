.class final Lcom/android/common/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/common/NetworkConnectivityListener;


# direct methods
.method synthetic constructor <init>(Lcom/android/common/NetworkConnectivityListener;)V
    .registers 3
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/common/a;-><init>(Lcom/android/common/NetworkConnectivityListener;B)V

    return-void
.end method

.method private constructor <init>(Lcom/android/common/NetworkConnectivityListener;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {v0}, Lcom/android/common/NetworkConnectivityListener;->a(Lcom/android/common/NetworkConnectivityListener;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 69
    :cond_15
    const-string v0, "NetworkConnectivityListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceived() called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {v2}, Lcom/android/common/NetworkConnectivityListener;->b(Lcom/android/common/NetworkConnectivityListener;)Lcom/android/common/NetworkConnectivityListener$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_41
    return-void

    .line 73
    :cond_42
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_b4

    .line 77
    iget-object v0, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    sget-object v1, Lcom/android/common/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/android/common/NetworkConnectivityListener$State;

    invoke-static {v0, v1}, Lcom/android/common/NetworkConnectivityListener;->a(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$State;)Lcom/android/common/NetworkConnectivityListener$State;

    .line 82
    :goto_51
    iget-object v1, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/android/common/NetworkConnectivityListener;->a(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 84
    iget-object v1, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    const-string v0, "otherNetwork"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/android/common/NetworkConnectivityListener;->b(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 87
    iget-object v0, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/NetworkConnectivityListener;->a(Lcom/android/common/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    const-string v1, "isFailover"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/NetworkConnectivityListener;->a(Lcom/android/common/NetworkConnectivityListener;Z)Z

    .line 98
    iget-object v0, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {v0}, Lcom/android/common/NetworkConnectivityListener;->c(Lcom/android/common/NetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 99
    :goto_8f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Handler;

    .line 101
    iget-object v0, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {v0}, Lcom/android/common/NetworkConnectivityListener;->c(Lcom/android/common/NetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 102
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8f

    .line 79
    :cond_b4
    iget-object v0, p0, Lcom/android/common/a;->a:Lcom/android/common/NetworkConnectivityListener;

    sget-object v1, Lcom/android/common/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/common/NetworkConnectivityListener$State;

    invoke-static {v0, v1}, Lcom/android/common/NetworkConnectivityListener;->a(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$State;)Lcom/android/common/NetworkConnectivityListener$State;

    goto :goto_51
.end method
