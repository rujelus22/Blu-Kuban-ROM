.class Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;
.super Landroid/content/BroadcastReceiver;
.source "GCommApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/GCommApp;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 109
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 111
    .local v0, info:Landroid/net/NetworkInfo;
    const-string v3, "Connectivity change: network %s in state %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const-string v3, "noConnectivity"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 117
    .local v1, noConnectivity:Z
    if-eqz v1, :cond_2b

    .line 118
    const-string v3, "No connectivity"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 121
    :cond_2b
    const-string v3, "otherNetwork"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 123
    .local v2, otherNetwork:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4f

    .line 124
    const-string v3, "Other network is %s in state %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_4f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$000(Lcom/google/android/apps/plus/hangout/GCommApp;)I

    move-result v4

    if-ne v3, v4, :cond_72

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkSubtype:I
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$100(Lcom/google/android/apps/plus/hangout/GCommApp;)I

    move-result v4

    if-ne v3, v4, :cond_72

    #calls: Lcom/google/android/apps/plus/hangout/GCommApp;->isNetworkAvailable(Landroid/net/NetworkInfo;)Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$200(Landroid/net/NetworkInfo;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 132
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->raiseNetworkError()V

    .line 135
    :cond_72
    return-void
.end method
