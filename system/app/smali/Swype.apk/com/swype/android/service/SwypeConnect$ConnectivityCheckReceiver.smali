.class public Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SwypeConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/service/SwypeConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectivityCheckReceiver"
.end annotation


# static fields
.field public static final filter:Landroid/content/IntentFilter; = null

.field public static final filterSpec:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# instance fields
.field private checkCtx:Landroid/content/Context;

.field private listener:Lcom/swype/android/service/SwypeConnect$ConnectionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;->filter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/swype/android/service/SwypeConnect$ConnectionListener;)V
    .registers 3
    .parameter "ctx"
    .parameter "l"

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;->checkCtx:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;->listener:Lcom/swype/android/service/SwypeConnect$ConnectionListener;

    .line 169
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 173
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    const-string v0, "isFailover"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 175
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 176
    const-string v1, "otherNetwork"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 178
    const-string v4, "Swype"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectivityCheckReceiver.onReceive(), Reason :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", FailOver :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Current Network Info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", OtherNetwork Info :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;->listener:Lcom/swype/android/service/SwypeConnect$ConnectionListener;

    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;->checkCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/swype/android/service/SwypeConnect;->checkInternetStatus(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/swype/android/service/SwypeConnect$ConnectionListener;->onConnectionChanged(Z)V

    .line 183
    return-void
.end method
