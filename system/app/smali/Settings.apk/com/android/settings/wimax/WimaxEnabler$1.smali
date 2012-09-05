.class Lcom/android/settings/wimax/WimaxEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxEnabler;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x8

    const/4 v3, 0x1

    const/4 v7, 0x4

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 108
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v4, "4g_state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "4G_previous_state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStatusChanged(II)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$000(Lcom/android/settings/wimax/WimaxEnabler;II)V

    .line 135
    :cond_22
    :goto_22
    return-void

    .line 111
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 114
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v3, "WimaxState"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/fourG/wimax/WimaxState;

    #setter for: Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v4, v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$102(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/fourG/wimax/WimaxState;)Landroid/net/fourG/wimax/WimaxState;

    .line 115
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v4, "WimaxStateDetail"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I
    invoke-static {v3, v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$202(Lcom/android/settings/wimax/WimaxEnabler;I)I

    .line 116
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v3

    if-eqz v3, :cond_7d

    const-string v3, "WimaxEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received WimaxState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mWimaxState:I
    invoke-static {v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$400(Lcom/android/settings/wimax/WimaxEnabler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extraStateDetail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I
    invoke-static {v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$200(Lcom/android/settings/wimax/WimaxEnabler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_7d
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$100(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    const-string v5, "WimaxStateDetail"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$500(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/fourG/wimax/WimaxState;I)V

    goto :goto_22

    .line 118
    :cond_8f
    const-string v5, "android.net.wimax.WIMAX_AUTH_ERROR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 119
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const-string v3, "WimaxEnabler"

    const-string v5, "Received broadcast WIMAX_AUTH_ERROR"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_a6
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v5, "auth_error"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->handleErrorAuth(I)V
    invoke-static {v3, v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$600(Lcom/android/settings/wimax/WimaxEnabler;I)V

    goto/16 :goto_22

    .line 121
    :cond_b3
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 122
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v5, "state"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z
    invoke-static {v3, v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$702(Lcom/android/settings/wimax/WimaxEnabler;Z)Z

    .line 123
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z
    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$700(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v4

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->handleAirplaneMode(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$800(Lcom/android/settings/wimax/WimaxEnabler;Z)V

    goto/16 :goto_22

    .line 124
    :cond_d3
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 125
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 126
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_114

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_114

    :goto_eb
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$902(Z)Z

    .line 127
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "WimaxEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi connected ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/wimax/WimaxEnabler;->access$900()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :cond_114
    move v3, v4

    .line 126
    goto :goto_eb

    .line 128
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_116
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 129
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 130
    .local v2, state:I
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z
    invoke-static {v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v5

    if-eqz v5, :cond_144

    const-string v5, "WimaxEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wi-Fi state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_144
    if-ne v2, v3, :cond_22

    .line 132
    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$902(Z)Z

    goto/16 :goto_22
.end method
