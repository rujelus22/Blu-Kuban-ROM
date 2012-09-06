.class Lcom/android/server/WimaxService$4;
.super Landroid/content/BroadcastReceiver;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WimaxService;


# direct methods
.method constructor <init>(Lcom/android/server/WimaxService;)V
    .registers 2
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1008
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1011
    const-string v6, "WimaxService"

    const-string v7, "ACTION_SCREEN_ON"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    .line 1013
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getLinkState()Z

    .line 1181
    :cond_20
    :goto_20
    return-void

    .line 1015
    :cond_21
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 1016
    const-string v6, "WimaxService"

    const-string v7, "ACTION_SCREEN_OFF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    goto :goto_20

    .line 1026
    :cond_3b
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    const-string v6, "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 1027
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_57

    const-string v6, "WimaxService"

    const-string v7, "-----------ACTION_WIMAX_DHCP_RENEW------------"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_57
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1029
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyIpRenew()V

    goto :goto_20

    .line 1031
    :cond_6a
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 1032
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_81

    const-string v6, "WimaxService"

    const-string v7, "ACTION_BATTERY_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_81
    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1035
    .local v4, nPluggedType:I
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_d6

    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[nPluggedType] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getWimaxMode() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v8}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " m_nPluggedType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v8}, Lcom/android/server/WimaxService;->access$800(Lcom/android/server/WimaxService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mbUSBTethered : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/WimaxService;->access$900()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_d6
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #setter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v6, v4}, Lcom/android/server/WimaxService;->access$802(Lcom/android/server/WimaxService;I)I

    goto/16 :goto_20

    .line 1039
    .end local v4           #nPluggedType:I
    :cond_dd
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b8

    .line 1040
    const-string v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1041
    .local v3, nApState:I
    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WIFI_AP_STATE_CHANGED_ACTION = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    packed-switch v3, :pswitch_data_3f8

    .line 1058
    :pswitch_108
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "WimaxService"

    const-string v7, "discard - WIFI_AP_STATE_CHANGED_ACTION intent."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1046
    :pswitch_119
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_156

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_156

    .line 1047
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "WimaxService"

    const-string v7, "discard - WIFI_AP_STATE_CHANGED_ACTION intent."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1052
    :pswitch_13c
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_156

    .line 1053
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "WimaxService"

    const-string v7, "discard - WIFI_AP_STATE_CHANGED_ACTION intent. current mode is wimax tethered."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1063
    :cond_156
    iget-object v7, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v8, 0x2

    const/16 v6, 0xd

    if-ne v3, v6, :cond_195

    const/4 v6, 0x1

    :goto_15e
    invoke-virtual {v7, v8, v6}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1064
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_18e

    .line 1065
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1066
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_19f

    .line 1067
    const/16 v6, 0xd

    if-ne v3, v6, :cond_197

    .line 1068
    const-string v6, "WimaxService"

    const-string v7, "it will be start scan to re-connect as backhaul mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :goto_188
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    .line 1180
    .end local v3           #nApState:I
    :cond_18e
    :goto_18e
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #calls: Lcom/android/server/WimaxService;->updateWimaxStatus()V
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)V

    goto/16 :goto_20

    .line 1063
    .restart local v3       #nApState:I
    :cond_195
    const/4 v6, 0x0

    goto :goto_15e

    .line 1070
    :cond_197
    const-string v6, "WimaxService"

    const-string v7, "it will be start scan to re-connect as normal mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_188

    .line 1075
    :cond_19f
    const/16 v6, 0xd

    if-ne v3, v6, :cond_1b0

    .line 1076
    const-string v6, "WimaxService"

    const-string v7, "it will be disconnect to re-connect as backhaul mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :goto_1aa
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->disconnect()Z

    goto :goto_18e

    .line 1078
    :cond_1b0
    const-string v6, "WimaxService"

    const-string v7, "it will be disconnect to re-connect as normal mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1aa

    .line 1083
    .end local v3           #nApState:I
    :cond_1b8
    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3bb

    .line 1084
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_1cf

    const-string v6, "WimaxService"

    const-string v7, "ConnectivityManager.ACTION_TETHER_STATE_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_1cf
    const-string v6, "activeArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1086
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_20f

    .line 1087
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_20c

    const-string v7, "WimaxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Active_tether["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_20c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d6

    .line 1089
    :cond_20f
    const/4 v5, 0x0

    .line 1090
    .local v5, usbTethered:Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2a2

    const/4 v5, 0x1

    .line 1093
    :goto_217
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_23b

    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mbUSBTethered = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/WimaxService;->access$900()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_23b
    invoke-static {}, Lcom/android/server/WimaxService;->access$900()Z

    move-result v6

    if-eq v6, v5, :cond_20

    .line 1099
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_250

    const-string v6, "WimaxService"

    const-string v7, "ACTION_TETHER_STATE_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_250
    invoke-static {v5}, Lcom/android/server/WimaxService;->access$902(Z)Z

    .line 1102
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_273

    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "usbTethered = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_273
    invoke-static {}, Lcom/android/server/WimaxService;->access$900()Z

    move-result v6

    if-eqz v6, :cond_320

    .line 1105
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_288

    const-string v6, "WimaxService"

    const-string v7, "Tethering option is checked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_288
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_2a5

    .line 1107
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "WimaxService"

    const-string v7, "discard - already tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1091
    :cond_2a2
    const/4 v5, 0x0

    goto/16 :goto_217

    .line 1109
    :cond_2a5
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$800(Lcom/android/server/WimaxService;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_20

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_20

    .line 1110
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1111
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1112
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_2e0

    .line 1113
    const-string v6, "WimaxService"

    const-string v7, "it will connect as tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_20

    .line 1115
    :cond_2e0
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_312

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_312

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_312

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_312

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_20

    .line 1120
    :cond_312
    const-string v6, "WimaxService"

    const-string v7, "it will disconnect for re-connecting as tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_20

    .line 1126
    :cond_320
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_32f

    const-string v6, "WimaxService"

    const-string v7, "Tethering option is unchecked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_32f
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_3aa

    .line 1128
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_20

    .line 1129
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1130
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1131
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_36a

    .line 1132
    const-string v6, "WimaxService"

    const-string v7, "it will connect as normal mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_20

    .line 1134
    :cond_36a
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_39c

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_39c

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_39c

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_39c

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_20

    .line 1139
    :cond_39c
    const-string v6, "WimaxService"

    const-string v7, "it will disconnect for re-connecting as normal mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_20

    .line 1144
    :cond_3aa
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "WimaxService"

    const-string v7, "discard - already NOT tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1167
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v5           #usbTethered:Z
    :cond_3bb
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1168
    const-string v6, "WimaxService"

    const-string v7, "@@@@@ ACTION_SHUTDOWN @@@@@"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3dc

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_18e

    .line 1170
    :cond_3dc
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_3ec

    .line 1171
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1173
    :cond_3ec
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    goto/16 :goto_20

    .line 1043
    nop

    :pswitch_data_3f8
    .packed-switch 0xb
        :pswitch_119
        :pswitch_108
        :pswitch_13c
        :pswitch_119
    .end packed-switch
.end method
