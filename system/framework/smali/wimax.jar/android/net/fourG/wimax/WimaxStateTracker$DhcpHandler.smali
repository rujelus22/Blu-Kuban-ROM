.class Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field private mCancelCallback:Z

.field private mIsRenewing:Z

.field private mTarget:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/fourG/wimax/WimaxStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 2045
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    .line 2046
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2047
    iput-object p3, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    .line 2048
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    .line 2053
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_3a0

    .line 2160
    :goto_7
    return-void

    .line 2055
    :sswitch_8
    monitor-enter p0

    .line 2057
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 2058
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mIsRenewing:Z

    .line 2059
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_ed

    .line 2060
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$000(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2061
    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpHandler:EVENT_DHCP_START]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "mydhcp"

    const-string v3, "dhcp start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_4c
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    new-instance v3, Landroid/net/DhcpInfoInternal;

    invoke-direct {v3}, Landroid/net/DhcpInfoInternal;-><init>()V

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$402(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;

    .line 2067
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 2068
    const/4 v0, 0x2

    .line 2073
    .local v0, event:I
    :cond_69
    :goto_69
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_8f

    const-string v2, "mydhcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp over "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_8f
    monitor-enter p0

    .line 2076
    :try_start_90
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v2, :cond_e7

    .line 2077
    if-ne v0, v6, :cond_e2

    .line 2078
    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpHandler:EVENT_DHCP_START] mDhcpInfo.leaseDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v4

    iget v4, v4, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v2

    iget v2, v2, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    if-eq v2, v7, :cond_e2

    .line 2080
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v6

    iget v6, v6, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    add-int/lit8 v6, v6, -0x1e

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$000(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2085
    :cond_e2
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2087
    :cond_e7
    monitor-exit p0

    goto/16 :goto_7

    :catchall_ea
    move-exception v2

    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_90 .. :try_end_ec} :catchall_ea

    throw v2

    .line 2059
    .end local v0           #event:I
    :catchall_ed
    move-exception v2

    :try_start_ee
    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v2

    .line 2070
    :cond_f0
    const/4 v0, 0x3

    .line 2071
    .restart local v0       #event:I
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpHandler:EVENT_DHCP_START] DHCP request failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    .line 2091
    .end local v0           #event:I
    :sswitch_117
    const-string v2, "WimaxStateTracker"

    const-string v3, "[DhcpHandler:EVENT_IP_RENEW]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    monitor-enter p0

    .line 2094
    :try_start_11f
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    if-eqz v2, :cond_138

    .line 2095
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_132

    const-string v2, "WimaxStateTracker"

    const-string v3, "[DhcpHandler:EVENT_IP_RENEW] mCancelCallback is true... ignore this"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_132
    monitor-exit p0

    goto/16 :goto_7

    .line 2104
    :catchall_135
    move-exception v2

    monitor-exit p0
    :try_end_137
    .catchall {:try_start_11f .. :try_end_137} :catchall_135

    throw v2

    .line 2098
    :cond_138
    :try_start_138
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mIsRenewing:Z

    if-eqz v2, :cond_14e

    .line 2099
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_14b

    const-string v2, "WimaxStateTracker"

    const-string v3, "[DhcpHandler:EVENT_IP_RENEW] mIsRenewing is true... ignore this"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_14b
    monitor-exit p0

    goto/16 :goto_7

    .line 2103
    :cond_14e
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mIsRenewing:Z

    .line 2104
    monitor-exit p0
    :try_end_152
    .catchall {:try_start_138 .. :try_end_152} :catchall_135

    .line 2106
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v2, v3, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$502(Landroid/net/fourG/wimax/WimaxStateTracker;J)J

    .line 2107
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_18c

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleMessage : DhcpStart is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :cond_18c
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 2110
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$000(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2111
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old IP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_1c6
    new-instance v1, Landroid/net/DhcpInfoInternal;

    invoke-direct {v1}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 2113
    .local v1, renewInfo:Landroid/net/DhcpInfoInternal;
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v2

    if-eqz v2, :cond_2a6

    .line 2114
    const/4 v0, 0x2

    .line 2115
    .restart local v0       #event:I
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_1f8

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New IP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_1f8
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v2

    iget-object v2, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    #calls: Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$600(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    #calls: Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I
    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$600(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_21a

    .line 2117
    const-string v2, "WimaxStateTracker"

    const-string v3, "mnOldIP != nNewIP"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v3, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 2120
    :cond_21a
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v2, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$402(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;

    .line 2121
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_245

    const-string v2, "mydhcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp runDhcpRenew1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :cond_245
    :goto_245
    monitor-enter p0

    .line 2145
    :try_start_246
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v2, :cond_29d

    .line 2146
    if-ne v0, v6, :cond_298

    .line 2147
    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpHandler:EVENT_IP_RENEW] mDhcpInfo.leaseDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v4

    iget v4, v4, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v2

    iget v2, v2, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    if-eq v2, v7, :cond_298

    .line 2149
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v6

    iget v6, v6, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    add-int/lit8 v6, v6, -0x1e

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$000(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2154
    :cond_298
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2156
    :cond_29d
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mIsRenewing:Z

    .line 2157
    monitor-exit p0

    goto/16 :goto_7

    :catchall_2a3
    move-exception v2

    monitor-exit p0
    :try_end_2a5
    .catchall {:try_start_246 .. :try_end_2a5} :catchall_2a3

    throw v2

    .line 2123
    .end local v0           #event:I
    :cond_2a6
    const/4 v0, 0x3

    .line 2124
    .restart local v0       #event:I
    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpHandler:EVENT_IP_RENEW] DHCP request failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v2, v3, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$502(Landroid/net/fourG/wimax/WimaxStateTracker;J)J

    .line 2127
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_2fd

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleMessage : 2nd DhcpStart is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_2fd
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v2

    if-eqz v2, :cond_379

    .line 2130
    const/4 v0, 0x2

    .line 2131
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_32a

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2nd New IP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :cond_32a
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v2

    iget-object v2, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    #calls: Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$600(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    #calls: Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I
    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$600(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_34c

    .line 2133
    const-string v2, "WimaxStateTracker"

    const-string v3, "2nd mnOldIP != nNewIP"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v3, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 2136
    :cond_34c
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v2, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$402(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;

    .line 2137
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_245

    const-string v2, "mydhcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp runDhcpRenew2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;
    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_245

    .line 2139
    :cond_379
    const/4 v0, 0x3

    .line 2140
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_245

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpHandler:EVENT_IP_RENEW] 2nd DHCP request failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_245

    .line 2053
    :sswitch_data_3a0
    .sparse-switch
        0x5 -> :sswitch_8
        0xa -> :sswitch_117
    .end sparse-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .registers 3
    .parameter "cancelCallback"

    .prologue
    .line 2163
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2164
    monitor-exit p0

    return-void

    .line 2163
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
