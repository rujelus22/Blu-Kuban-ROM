.class Lcom/samsung/wimax/DM/DM$1;
.super Landroid/content/BroadcastReceiver;
.source "DM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/DM/DM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/DM/DM;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/DM/DM;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/wimax/DM/DM$1;->this$0:Lcom/samsung/wimax/DM/DM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wimax.NET_4G_HANDOVER_COMPLETE_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 78
    const-string v2, "newBSID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    .line 79
    .local v1, wimax4GInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$1;->this$0:Lcom/samsung/wimax/DM/DM;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getBSID()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/wimax/DM/DM;->handleBSIDChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/wimax/DM/DM;->access$000(Lcom/samsung/wimax/DM/DM;Ljava/lang/String;)V

    .line 118
    .end local v1           #wimax4GInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    :goto_1e
    return-void

    .line 82
    :cond_1f
    const-string v2, "android.net.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 85
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$1;->this$0:Lcom/samsung/wimax/DM/DM;

    const-string v3, "newRSSI"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/samsung/wimax/DM/DM;->handleSignalChanged(I)V
    invoke-static {v2, v3}, Lcom/samsung/wimax/DM/DM;->access$100(Lcom/samsung/wimax/DM/DM;I)V

    goto :goto_1e

    .line 88
    :cond_33
    const-string v2, "android.net.wimax.FREQUENCY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 90
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$1;->this$0:Lcom/samsung/wimax/DM/DM;

    const-string v3, "newFrequency"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/samsung/wimax/DM/DM;->handleFrequencyChanged(I)V
    invoke-static {v2, v3}, Lcom/samsung/wimax/DM/DM;->access$200(Lcom/samsung/wimax/DM/DM;I)V

    goto :goto_1e

    .line 93
    :cond_47
    const-string v2, "android.net.wimax.WIMAX_DHCP_TIME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 95
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$1;->this$0:Lcom/samsung/wimax/DM/DM;

    const-string v3, "newDHCPTime"

    const/16 v4, 0x3e8

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/samsung/wimax/DM/DM;->handledDHCPDuration(I)V
    invoke-static {v2, v3}, Lcom/samsung/wimax/DM/DM;->access$300(Lcom/samsung/wimax/DM/DM;I)V

    goto :goto_1e

    .line 99
    :cond_5d
    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 101
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$1;->this$0:Lcom/samsung/wimax/DM/DM;

    const-string v3, "WimaxRadioInfo"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/samsung/wimax/DM/DM;->handleDeviceTemperature(I)V
    invoke-static {v2, v3}, Lcom/samsung/wimax/DM/DM;->access$400(Lcom/samsung/wimax/DM/DM;I)V

    goto :goto_1e

    .line 104
    :cond_71
    const-string v2, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 106
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$1;->this$0:Lcom/samsung/wimax/DM/DM;

    const-string v3, "newSignalLevel"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/samsung/wimax/DM/DM;->handleSignalLevelChanged(I)V
    invoke-static {v2, v3}, Lcom/samsung/wimax/DM/DM;->access$500(Lcom/samsung/wimax/DM/DM;I)V

    goto :goto_1e

    .line 116
    :cond_85
    const-string v2, "WiMAX_DM_APP"

    const-string v3, "BROADCAST RECEIVED.... ELSE>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method
