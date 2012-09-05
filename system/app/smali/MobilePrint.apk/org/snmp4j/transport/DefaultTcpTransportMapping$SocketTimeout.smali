.class Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;
.super Ljava/util/TimerTask;
.source "DefaultTcpTransportMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/transport/DefaultTcpTransportMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketTimeout"
.end annotation


# instance fields
.field private entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

.field private final this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;


# direct methods
.method public constructor <init>(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;)V
    .registers 3
    .parameter
    .parameter "entry"

    .prologue
    .line 519
    iput-object p1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 520
    iput-object p2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    .line 521
    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 3

    .prologue
    .line 558
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    .line 560
    .local v0, result:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    .line 561
    return v0
.end method

.method public run()V
    .registers 10

    .prologue
    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 528
    .local v1, now:J
    iget-object v3, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$100(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Lorg/snmp4j/util/CommonTimer;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    invoke-virtual {v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getLastUse()J

    move-result-wide v3

    sub-long v3, v1, v3

    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v5}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$200(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_9f

    .line 530
    :cond_1e
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 531
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Socket has not been used for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    invoke-virtual {v5}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getLastUse()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " micro seconds, closing it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 535
    :cond_50
    iget-object v3, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$300(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    invoke-virtual {v4}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :try_start_5f
    iget-object v4, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    monitor-enter v4
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_96

    .line 538
    :try_start_62
    iget-object v3, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    invoke-virtual {v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 539
    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_93

    .line 540
    :try_start_6c
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Socket to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    invoke-virtual {v5}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " closed due to timeout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->info(Ljava/lang/Object;)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_92} :catch_96

    .line 555
    :goto_92
    return-void

    .line 539
    :catchall_93
    move-exception v3

    :try_start_94
    monitor-exit v4
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw v3
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_96} :catch_96

    .line 543
    :catch_96
    move-exception v0

    .line 544
    .local v0, ex:Ljava/io/IOException;
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    goto :goto_92

    .line 548
    .end local v0           #ex:Ljava/io/IOException;
    :cond_9f
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 549
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Scheduling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    invoke-virtual {v5}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getLastUse()J

    move-result-wide v5

    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v7}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$200(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)J

    move-result-wide v7

    add-long/2addr v5, v7

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 552
    :cond_d1
    iget-object v3, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$100(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Lorg/snmp4j/util/CommonTimer;

    move-result-object v3

    new-instance v4, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;

    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    invoke-direct {v4, v5, v6}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;-><init>(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;)V

    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    invoke-virtual {v5}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getLastUse()J

    move-result-wide v5

    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v7}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$200(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)J

    move-result-wide v7

    add-long/2addr v5, v7

    sub-long/2addr v5, v1

    invoke-interface {v3, v4, v5, v6}, Lorg/snmp4j/util/CommonTimer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_92
.end method
