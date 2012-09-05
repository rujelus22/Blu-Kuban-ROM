.class public Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;
.super Landroid/content/BroadcastReceiver;
.source "HeartbeatAlarm.java"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field private mContext:Landroid/content/Context;

.field private mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

.field private mHeartbeatAlarmIntent:Landroid/content/Intent;

.field private mHeartbeatAlarmSender:Landroid/app/PendingIntent;

.field private mHeartbeatInterval:J

.field private final mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

.field private mNextAlarmTime:J

.field private mResetConnectionTs:J

.field private mTimer:J

.field private mUseWifiHeartbeatInterval:Z

.field private mWaitingForAck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;)V
    .registers 9
    .parameter "context"
    .parameter "alarmManager"
    .parameter "endpoint"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    .line 78
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 79
    new-instance v0, Lorg/jivesoftware/smack/packet/HeartbeatStat;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jivesoftware/smack/packet/HeartbeatStat;-><init>(ZJLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    .line 80
    return-void
.end method

.method private asyncResetConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .registers 4
    .parameter "connection"

    .prologue
    .line 264
    new-instance v0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm$1;

    const-string v1, "reset-XMPP-connection"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm$1;-><init>(Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm$1;->start()V

    .line 270
    return-void
.end method

.method private cancelAlarm()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mNextAlarmTime:J

    .line 183
    return-void
.end method

.method private computeHeartbeatInterval()J
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 151
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 152
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getDefaultHeartbeatInterval()I

    move-result v7

    int-to-long v2, v7

    .line 155
    .local v2, retVal:J
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getHeartbeatInterval()J

    move-result-wide v4

    .line 156
    .local v4, serverInterval:J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_1d

    cmp-long v7, v2, v4

    if-lez v7, :cond_1d

    .line 157
    move-wide v2, v4

    .line 160
    :cond_1d
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mUseWifiHeartbeatInterval:Z

    .line 163
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v1

    .line 165
    .local v1, lastNetworkType:I
    if-ne v1, v9, :cond_3c

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getWifiHeartbeatInterval()I

    move-result v6

    .line 168
    .local v6, wifiHeartbeatInterval:I
    int-to-long v7, v6

    cmp-long v7, v2, v7

    if-lez v7, :cond_3c

    .line 169
    int-to-long v2, v6

    .line 170
    iput-boolean v9, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mUseWifiHeartbeatInterval:Z

    .line 174
    .end local v6           #wifiHeartbeatInterval:I
    :cond_3c
    return-wide v2
.end method

.method private getHeartbeatAckInterval()I
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getHeartbeatAckTimeout()I

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 387
    const-string v0, "GTalkService/c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HeartbeatAlarm] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method private resetHeartbeatAlarm()V
    .registers 1

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->cancelAlarm()V

    .line 293
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->setAlarm()V

    .line 294
    return-void
.end method

.method private setAlarm()V
    .registers 8

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mTimer:J

    .line 125
    .local v0, oldTimer:J
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mWaitingForAck:Z

    if-eqz v2, :cond_21

    .line 126
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->getHeartbeatAckInterval()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mTimer:J

    .line 133
    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mTimer:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mNextAlarmTime:J

    .line 134
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mNextAlarmTime:J

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 137
    return-void

    .line 128
    :cond_21
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->computeHeartbeatInterval()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatInterval:J

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mTimer:J

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->getHeartbeatStat()Lorg/jivesoftware/smack/packet/HeartbeatStat;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatInterval:J

    iput-wide v3, v2, Lorg/jivesoftware/smack/packet/HeartbeatStat;->interval:J

    goto :goto_d
.end method


# virtual methods
.method public clearAlarm()V
    .registers 2

    .prologue
    .line 189
    monitor-enter p0

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    if-eqz v0, :cond_29

    .line 191
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_e

    const-string v0, "clearAlarm"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 193
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->cancelAlarm()V

    .line 194
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    .line 196
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmSender:Landroid/app/PendingIntent;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mWaitingForAck:Z

    .line 203
    :cond_27
    :goto_27
    monitor-exit p0

    .line 204
    return-void

    .line 200
    :cond_29
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_27

    .line 201
    const-string v0, "clearAlarm: alarm not set!"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->log(Ljava/lang/String;)V

    goto :goto_27

    .line 203
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 13
    .parameter "out"

    .prologue
    const-wide/16 v9, 0x0

    const-wide/16 v7, 0x3e8

    .line 364
    const-string v4, "Heartbeat"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    const-string v4, "---------"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Heartbeat interval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatInterval:J

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "heartbeat type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mUseWifiHeartbeatInterval:Z

    if-eqz v4, :cond_cf

    const-string v4, "wifi"

    :goto_3c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current timer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mTimer:J

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WaitingForAck: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mWaitingForAck:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 372
    .local v2, now:J
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mNextAlarmTime:J

    sub-long/2addr v4, v2

    div-long v0, v4, v7

    .line 373
    .local v0, diff:J
    cmp-long v4, v0, v9

    if-lez v4, :cond_d3

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next heartbeat alarm will trigger in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    :goto_a3
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mResetConnectionTs:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_ce

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Heartbeat reset connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mResetConnectionTs:J

    sub-long v5, v2, v5

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ago"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    :cond_ce
    return-void

    .line 367
    .end local v0           #diff:J
    .end local v2           #now:J
    :cond_cf
    const-string v4, "cell"

    goto/16 :goto_3c

    .line 377
    .restart local v0       #diff:J
    .restart local v2       #now:J
    :cond_d3
    const-string v4, "No heartbeat alarm set"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a3
.end method

.method public getHeartbeatStat()Lorg/jivesoftware/smack/packet/HeartbeatStat;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    return-object v0
.end method

.method public initStat(Lorg/jivesoftware/smack/packet/HeartbeatConfig;)V
    .registers 6
    .parameter "config"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->timeout:Z

    .line 345
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->ip:Ljava/lang/String;

    .line 348
    if-eqz p1, :cond_4a

    .line 349
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server sent heartbeat config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 351
    :cond_26
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    iget-object v1, p1, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->ip:Ljava/lang/String;

    iput-object v1, v0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->ip:Ljava/lang/String;

    .line 353
    iget-object v0, p1, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    if-eqz v0, :cond_3b

    .line 354
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    iget-object v1, p1, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setUploadHeartbeatStat(Z)V

    .line 357
    :cond_3b
    iget-wide v0, p1, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4a

    .line 358
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    iget-wide v1, p1, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setHeartbeatInterval(J)V

    .line 361
    :cond_4a
    return-void
.end method

.method public markPacketReception()V
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    if-eqz v0, :cond_e

    .line 314
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mWaitingForAck:Z

    if-eqz v0, :cond_b

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mWaitingForAck:Z

    .line 317
    :cond_b
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->resetHeartbeatAlarm()V

    .line 319
    :cond_e
    return-void
.end method

.method public markPacketTransmission()V
    .registers 1

    .prologue
    .line 336
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 215
    new-instance v1, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v2, "HeartbeatAlarm"

    invoke-direct {v1, v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    const-string v3, "HeartbeatAlarm"

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->acquireSimpleWakeLock(Ljava/lang/String;)V

    .line 220
    :try_start_e
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 222
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 223
    :cond_1d
    const-string v2, "GTalkService"

    const-string v3, "Ignoring attempt to send heartbeat on dead connection."

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_8c

    .line 258
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 259
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    const-string v3, "HeartbeatAlarm"

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->releaseSimpleWakeLock(Ljava/lang/String;)V

    .line 261
    :goto_2e
    return-void

    .line 227
    :cond_2f
    :try_start_2f
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mWaitingForAck:Z

    if-eqz v2, :cond_88

    .line 228
    const-string v2, "reset connection, heartbeat timeout!"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setConnectionError(I)Z

    .line 234
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    new-instance v3, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 239
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v0

    .line 242
    .local v0, lastNetworkType:I
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatInterval:J

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getHostIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/gsf/gtalkservice/LogTag;->logHeartbeatReset(IILjava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->getHeartbeatStat()Lorg/jivesoftware/smack/packet/HeartbeatStat;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/jivesoftware/smack/packet/HeartbeatStat;->timeout:Z

    .line 249
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->asyncResetConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mResetConnectionTs:J

    .line 252
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->clearAlarm()V

    .line 253
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mWaitingForAck:Z
    :try_end_7d
    .catchall {:try_start_2f .. :try_end_7d} :catchall_8c

    .line 258
    .end local v0           #lastNetworkType:I
    :goto_7d
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 259
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    const-string v3, "HeartbeatAlarm"

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->releaseSimpleWakeLock(Ljava/lang/String;)V

    goto :goto_2e

    .line 255
    :cond_88
    :try_start_88
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->sendHeartbeatToServer()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_7d

    .line 258
    :catchall_8c
    move-exception v2

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 259
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    const-string v4, "HeartbeatAlarm"

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->releaseSimpleWakeLock(Ljava/lang/String;)V

    throw v2
.end method

.method public sendHeartbeatToServer()V
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_5

    .line 283
    :goto_4
    return-void

    .line 278
    :cond_5
    const-string v0, "sent heartbeat to server"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendHeartbeat()V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mWaitingForAck:Z

    .line 282
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->resetHeartbeatAlarm()V

    goto :goto_4
.end method

.method public setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 89
    return-void
.end method

.method public startAlarm()V
    .registers 5

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mResetConnectionTs:J

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    if-eqz v0, :cond_12

    .line 98
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_11

    const-string v0, "startAlarm: already started, bail"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 117
    :cond_11
    :goto_11
    return-void

    .line 102
    :cond_12
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_1b

    const-string v0, "startAlarm"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 104
    :cond_1b
    monitor-enter p0

    .line 105
    const/4 v0, 0x0

    :try_start_1d
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mWaitingForAck:Z

    .line 107
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.intent.action.MCS_HEARTBEAT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.intent.action.MCS_HEARTBEAT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->mHeartbeatAlarmSender:Landroid/app/PendingIntent;

    .line 115
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->setAlarm()V

    .line 116
    monitor-exit p0

    goto :goto_11

    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_45

    throw v0
.end method
