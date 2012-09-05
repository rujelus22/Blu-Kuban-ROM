.class public Lcom/sec/android/app/kieswifi/UpnpManager;
.super Ljava/lang/Object;
.source "UpnpManager.java"

# interfaces
.implements Lcom/samsung/sample/networkstate/INetworstateEventListener;


# static fields
.field private static volatile mInstance:Lcom/sec/android/app/kieswifi/UpnpManager;


# instance fields
.field private activityDestroyListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/kieswifi/ui/IActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field isStarted:Z

.field private isWifiSettingsLaunched:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentApName:Ljava/lang/String;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

.field private selectedServer:Lcom/samsung/api/DeviceItem;

.field public warningActivity:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->mCurrentApName:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 35
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 39
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->warningActivity:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    .line 41
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->selectedServer:Lcom/samsung/api/DeviceItem;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->isStarted:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/kieswifi/UpnpManager;->mInstance:Lcom/sec/android/app/kieswifi/UpnpManager;

    if-nez v0, :cond_13

    .line 54
    const-class v1, Lcom/sec/android/app/kieswifi/UpnpManager;

    monitor-enter v1

    .line 55
    :try_start_7
    sget-object v0, Lcom/sec/android/app/kieswifi/UpnpManager;->mInstance:Lcom/sec/android/app/kieswifi/UpnpManager;

    if-nez v0, :cond_12

    .line 56
    new-instance v0, Lcom/sec/android/app/kieswifi/UpnpManager;

    invoke-direct {v0}, Lcom/sec/android/app/kieswifi/UpnpManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/kieswifi/UpnpManager;->mInstance:Lcom/sec/android/app/kieswifi/UpnpManager;

    .line 57
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 59
    :cond_13
    sget-object v0, Lcom/sec/android/app/kieswifi/UpnpManager;->mInstance:Lcom/sec/android/app/kieswifi/UpnpManager;

    return-object v0

    .line 57
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getIpFromInt(I)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method private startUpnpManager(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "ipaddr"
    .parameter "apName"

    .prologue
    const/4 v3, 0x1

    .line 150
    iget-boolean v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->isStarted:Z

    if-ne v1, v3, :cond_6

    .line 161
    :goto_5
    return-void

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v1, :cond_21

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 155
    .local v0, manager:Landroid/net/wifi/WifiManager;
    const-string v1, "mlock"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 158
    .end local v0           #manager:Landroid/net/wifi/WifiManager;
    :cond_21
    invoke-virtual {p0, p2}, Lcom/sec/android/app/kieswifi/UpnpManager;->setCurrentAPName(Ljava/lang/String;)V

    .line 159
    const-string v1, "========= startUpnpManager========== "

    invoke-static {v3, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 160
    iput-boolean v3, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->isStarted:Z

    goto :goto_5
.end method

.method private stopUpnpManager()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-boolean v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->isStarted:Z

    if-nez v0, :cond_6

    .line 179
    :cond_5
    :goto_5
    return-void

    .line 171
    :cond_6
    :try_start_6
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/UpnpManager;->setCurrentAPName(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->isStarted:Z
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_1a

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 176
    iput-object v2, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    goto :goto_5

    .line 174
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v1, :cond_26

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 176
    iput-object v2, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    :cond_26
    throw v0
.end method


# virtual methods
.method public declared-synchronized addActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 114
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpnpManager : add ActivityDestroy listener - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2c

    .line 120
    :cond_2a
    monitor-exit p0

    return-void

    .line 114
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public eventOccured(I)V
    .registers 13
    .parameter "event"

    .prologue
    const/16 v10, 0x2f2

    const/4 v9, 0x1

    .line 182
    iget-object v7, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 183
    .local v6, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 186
    .local v2, connectionInfo:Landroid/net/wifi/WifiInfo;
    const/4 v4, 0x0

    .line 187
    .local v4, ipAddr:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 188
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/kieswifi/UpnpManager;->getIpFromInt(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    :cond_20
    :goto_20
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, apName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_f2

    .line 254
    :cond_27
    :goto_27
    return-void

    .line 189
    .end local v0           #apName:Ljava/lang/String;
    :cond_28
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 190
    const-string v4, "192.168.43.1"

    goto :goto_20

    .line 196
    .restart local v0       #apName:Ljava/lang/String;
    :pswitch_31
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->stopUpnpManager()V

    .line 197
    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/kieswifi/UpnpManager;->startUpnpManager(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/16 v7, 0x2f4

    invoke-virtual {p0, v7}, Lcom/sec/android/app/kieswifi/UpnpManager;->notifyToActivity(I)V

    goto :goto_27

    .line 202
    :pswitch_3d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UpnpManager : Network Connected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->warningActivity:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 203
    iget-object v7, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->warningActivity:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    if-eqz v7, :cond_5e

    .line 204
    iget-object v7, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->warningActivity:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->finishSelf()V

    .line 207
    :cond_5e
    const/4 v1, 0x0

    .line 209
    .local v1, bWifiConnected:Z
    :cond_5f
    :goto_5f
    if-nez v1, :cond_ad

    .line 210
    iget-object v7, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 211
    .local v5, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 212
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifi is not connected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 215
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 231
    .end local v5           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_ad
    if-eqz v1, :cond_27

    .line 236
    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/kieswifi/UpnpManager;->startUpnpManager(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/16 v7, 0x2f3

    invoke-virtual {p0, v7}, Lcom/sec/android/app/kieswifi/UpnpManager;->notifyToActivity(I)V

    goto/16 :goto_27

    .line 221
    .restart local v5       #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_b9
    const-wide/16 v7, 0x12c

    :try_start_bb
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_be
    .catch Ljava/lang/InterruptedException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_5f

    .line 222
    :catch_bf
    move-exception v3

    .line 223
    .local v3, ie:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5f

    .line 225
    .end local v3           #ie:Ljava/lang/InterruptedException;
    :cond_c4
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5f

    .line 226
    const-string v7, "WifiApEnabled"

    invoke-static {v9, v7}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 227
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 228
    const/4 v1, 0x1

    goto :goto_5f

    .line 241
    .end local v1           #bWifiConnected:Z
    .end local v5           #mWifiManager:Landroid/net/wifi/WifiManager;
    :pswitch_d9
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->stopUpnpManager()V

    .line 242
    invoke-virtual {p0, v10}, Lcom/sec/android/app/kieswifi/UpnpManager;->notifyToActivity(I)V

    .line 243
    const-string v7, "START_WARNING_ACTIVITY : UpnpManager"

    invoke-static {v9, v7}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_27

    .line 246
    :pswitch_e6
    const-string v7, "UpnpManager : Network Connected :EVENT_NETWORK_CONNECTED_INIT_TIME "

    invoke-static {v9, v7}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_27

    .line 249
    :pswitch_ed
    invoke-virtual {p0, v10}, Lcom/sec/android/app/kieswifi/UpnpManager;->notifyToActivity(I)V

    goto/16 :goto_27

    .line 194
    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_3d
        :pswitch_31
        :pswitch_e6
        :pswitch_ed
    .end packed-switch
.end method

.method public getCurrentApName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->mCurrentApName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkState()I
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    if-nez v0, :cond_6

    .line 83
    const/4 v0, -0x1

    .line 85
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->getStateType()I

    move-result v0

    goto :goto_5
.end method

.method public getServer()Lcom/samsung/api/DeviceItem;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->selectedServer:Lcom/samsung/api/DeviceItem;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    if-nez v0, :cond_f

    .line 65
    new-instance v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 66
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0, p0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->addEventListener(Lcom/samsung/sample/networkstate/INetworstateEventListener;)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->stopWorker()V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->startWorker()V

    .line 69
    return-void
.end method

.method public isWifiSettingsLaunched()Z
    .registers 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->isWifiSettingsLaunched:Z

    return v0
.end method

.method public declared-synchronized notifyToActivity(I)V
    .registers 8
    .parameter "code"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/kieswifi/ui/IActivityListener;

    .line 130
    .local v2, listener:Lcom/sec/android/app/kieswifi/ui/IActivityListener;
    if-eqz v2, :cond_7

    .line 131
    invoke-interface {v2, p1}, Lcom/sec/android/app/kieswifi/ui/IActivityListener;->notifyActivityEvent(I)V

    .line 132
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpnpManager : Notify to activity - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_44
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_3d} :catch_3e

    goto :goto_7

    .line 135
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/sec/android/app/kieswifi/ui/IActivityListener;
    :catch_3e
    move-exception v0

    .line 136
    .local v0, e:Ljava/util/ConcurrentModificationException;
    :try_start_3f
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_44

    .line 138
    .end local v0           #e:Ljava/util/ConcurrentModificationException;
    :cond_42
    monitor-exit p0

    return-void

    .line 129
    :catchall_44
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 123
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpnpManager : remove ActivityDestroy listener - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 125
    monitor-exit p0

    return-void

    .line 123
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public selectServer(Lcom/samsung/api/DeviceItem;)Z
    .registers 4
    .parameter "device"

    .prologue
    .line 91
    if-eqz p1, :cond_4

    .line 92
    :try_start_2
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->selectedServer:Lcom/samsung/api/DeviceItem;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_b

    .line 98
    :cond_4
    :goto_4
    const/4 v1, 0x1

    return v1

    .line 93
    :catch_6
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 95
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_b
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public setCurrentAPName(Ljava/lang/String;)V
    .registers 2
    .parameter "ssid"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->mCurrentApName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setWifiSettingsLaunched(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->isWifiSettingsLaunched:Z

    .line 262
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->stopUpnpManager()V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    if-eqz v0, :cond_d

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->stopWorker()V

    .line 76
    :cond_d
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/UpnpManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 78
    sput-object v1, Lcom/sec/android/app/kieswifi/UpnpManager;->mInstance:Lcom/sec/android/app/kieswifi/UpnpManager;

    .line 79
    return-void
.end method
