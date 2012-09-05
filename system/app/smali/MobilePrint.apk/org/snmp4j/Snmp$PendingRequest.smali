.class Lorg/snmp4j/Snmp$PendingRequest;
.super Ljava/util/TimerTask;
.source "Snmp.java"

# interfaces
.implements Lorg/snmp4j/mp/PduHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/Snmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingRequest"
.end annotation


# instance fields
.field private volatile cancelled:Z

.field private volatile finished:Z

.field private key:Lorg/snmp4j/mp/PduHandle;

.field protected listener:Lorg/snmp4j/event/ResponseListener;

.field private maxRequestStatus:I

.field protected pdu:Lorg/snmp4j/PDU;

.field private volatile pendingRetry:Z

.field private requestStatus:I

.field private volatile responseReceived:Z

.field protected retryCount:I

.field protected target:Lorg/snmp4j/Target;

.field private final this$0:Lorg/snmp4j/Snmp;

.field protected transport:Lorg/snmp4j/TransportMapping;

.field protected userObject:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/snmp4j/Snmp;Lorg/snmp4j/Snmp$PendingRequest;)V
    .registers 5
    .parameter
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 1526
    iput-object p1, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1502
    iput v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->requestStatus:I

    .line 1505
    const/4 v0, 0x2

    iput v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->maxRequestStatus:I

    .line 1507
    iput-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->finished:Z

    .line 1508
    iput-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->responseReceived:Z

    .line 1509
    iput-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->pendingRetry:Z

    .line 1510
    iput-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->cancelled:Z

    .line 1527
    iget-object v0, p2, Lorg/snmp4j/Snmp$PendingRequest;->userObject:Ljava/lang/Object;

    iput-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->userObject:Ljava/lang/Object;

    .line 1528
    iget-object v0, p2, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    iput-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    .line 1529
    iget v0, p2, Lorg/snmp4j/Snmp$PendingRequest;->retryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->retryCount:I

    .line 1530
    iget-object v0, p2, Lorg/snmp4j/Snmp$PendingRequest;->pdu:Lorg/snmp4j/PDU;

    iput-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->pdu:Lorg/snmp4j/PDU;

    .line 1531
    iget-object v0, p2, Lorg/snmp4j/Snmp$PendingRequest;->target:Lorg/snmp4j/Target;

    iput-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->target:Lorg/snmp4j/Target;

    .line 1532
    iget v0, p2, Lorg/snmp4j/Snmp$PendingRequest;->requestStatus:I

    iput v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->requestStatus:I

    .line 1533
    iget-boolean v0, p2, Lorg/snmp4j/Snmp$PendingRequest;->responseReceived:Z

    iput-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->responseReceived:Z

    .line 1534
    iget-object v0, p2, Lorg/snmp4j/Snmp$PendingRequest;->transport:Lorg/snmp4j/TransportMapping;

    iput-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->transport:Lorg/snmp4j/TransportMapping;

    .line 1535
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/Snmp;Lorg/snmp4j/event/ResponseListener;Ljava/lang/Object;Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;)V
    .registers 9
    .parameter
    .parameter "listener"
    .parameter "userObject"
    .parameter "pdu"
    .parameter "target"
    .parameter "transport"

    .prologue
    const/4 v1, 0x0

    .line 1517
    iput-object p1, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1502
    iput v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->requestStatus:I

    .line 1505
    const/4 v0, 0x2

    iput v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->maxRequestStatus:I

    .line 1507
    iput-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->finished:Z

    .line 1508
    iput-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->responseReceived:Z

    .line 1509
    iput-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->pendingRetry:Z

    .line 1510
    iput-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->cancelled:Z

    .line 1518
    iput-object p3, p0, Lorg/snmp4j/Snmp$PendingRequest;->userObject:Ljava/lang/Object;

    .line 1519
    iput-object p2, p0, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    .line 1520
    invoke-interface {p5}, Lorg/snmp4j/Target;->getRetries()I

    move-result v0

    iput v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->retryCount:I

    .line 1521
    iput-object p4, p0, Lorg/snmp4j/Snmp$PendingRequest;->pdu:Lorg/snmp4j/PDU;

    .line 1522
    invoke-interface {p5}, Lorg/snmp4j/Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/Target;

    iput-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->target:Lorg/snmp4j/Target;

    .line 1523
    iput-object p6, p0, Lorg/snmp4j/Snmp$PendingRequest;->transport:Lorg/snmp4j/TransportMapping;

    .line 1524
    return-void
.end method

.method static access$000(Lorg/snmp4j/Snmp$PendingRequest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1491
    iget v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->maxRequestStatus:I

    return v0
.end method

.method static access$002(Lorg/snmp4j/Snmp$PendingRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1491
    iput p1, p0, Lorg/snmp4j/Snmp$PendingRequest;->maxRequestStatus:I

    return p1
.end method

.method static access$100(Lorg/snmp4j/Snmp$PendingRequest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1491
    iget-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->finished:Z

    return v0
.end method

.method static access$500(Lorg/snmp4j/Snmp$PendingRequest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1491
    iget v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->requestStatus:I

    return v0
.end method

.method static access$508(Lorg/snmp4j/Snmp$PendingRequest;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 1491
    iget v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->requestStatus:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->requestStatus:I

    return v0
.end method

.method static access$602(Lorg/snmp4j/Snmp$PendingRequest;Lorg/snmp4j/mp/PduHandle;)Lorg/snmp4j/mp/PduHandle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1491
    iput-object p1, p0, Lorg/snmp4j/Snmp$PendingRequest;->key:Lorg/snmp4j/mp/PduHandle;

    return-object p1
.end method


# virtual methods
.method public cancel()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1684
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->cancelled:Z

    .line 1685
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    .line 1688
    .local v0, result:Z
    iget-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->pendingRetry:Z

    if-nez v1, :cond_18

    .line 1689
    iput-object v2, p0, Lorg/snmp4j/Snmp$PendingRequest;->key:Lorg/snmp4j/mp/PduHandle;

    .line 1690
    iput-object v2, p0, Lorg/snmp4j/Snmp$PendingRequest;->pdu:Lorg/snmp4j/PDU;

    .line 1691
    iput-object v2, p0, Lorg/snmp4j/Snmp$PendingRequest;->target:Lorg/snmp4j/Target;

    .line 1692
    iput-object v2, p0, Lorg/snmp4j/Snmp$PendingRequest;->transport:Lorg/snmp4j/TransportMapping;

    .line 1693
    iput-object v2, p0, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    .line 1694
    iput-object v2, p0, Lorg/snmp4j/Snmp$PendingRequest;->userObject:Ljava/lang/Object;

    .line 1696
    :cond_18
    return v0
.end method

.method public getMaxRequestStatus()I
    .registers 2

    .prologue
    .line 1670
    iget v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->maxRequestStatus:I

    return v0
.end method

.method public isResponseReceived()Z
    .registers 2

    .prologue
    .line 1674
    iget-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->responseReceived:Z

    return v0
.end method

.method public declared-synchronized pduHandleAssigned(Lorg/snmp4j/mp/PduHandle;Ljava/lang/Object;)V
    .registers 11
    .parameter "handle"
    .parameter "pdu"

    .prologue
    .line 1546
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->key:Lorg/snmp4j/mp/PduHandle;

    if-nez v3, :cond_8b

    .line 1547
    iput-object p1, p0, Lorg/snmp4j/Snmp$PendingRequest;->key:Lorg/snmp4j/mp/PduHandle;

    .line 1551
    iget-object v2, p0, Lorg/snmp4j/Snmp$PendingRequest;->target:Lorg/snmp4j/Target;

    .line 1552
    .local v2, t:Lorg/snmp4j/Target;
    if-eqz v2, :cond_8b

    iget-boolean v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->cancelled:Z

    if-nez v3, :cond_8b

    .line 1553
    iget-object v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v3}, Lorg/snmp4j/Snmp;->access$400(Lorg/snmp4j/Snmp;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    invoke-virtual {p0, p1}, Lorg/snmp4j/Snmp$PendingRequest;->registerRequest(Lorg/snmp4j/mp/PduHandle;)V

    .line 1555
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1556
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Running pending "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    instance-of v3, v3, Lorg/snmp4j/Snmp$SyncResponseListener;

    if-eqz v3, :cond_8d

    const-string v3, "sync"

    :goto_3c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, " request with handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, " and retry count left "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v5, p0, Lorg/snmp4j/Snmp$PendingRequest;->retryCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1562
    :cond_5d
    iget-object v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v3}, Lorg/snmp4j/Snmp;->access$700(Lorg/snmp4j/Snmp;)Lorg/snmp4j/TimeoutModel;

    move-result-object v3

    invoke-interface {v2}, Lorg/snmp4j/Target;->getRetries()I

    move-result v4

    iget v5, p0, Lorg/snmp4j/Snmp$PendingRequest;->retryCount:I

    sub-int/2addr v4, v5

    invoke-interface {v2}, Lorg/snmp4j/Target;->getRetries()I

    move-result v5

    invoke-interface {v2}, Lorg/snmp4j/Target;->getTimeout()J

    move-result-wide v6

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/snmp4j/TimeoutModel;->getRetryTimeout(IIJ)J

    move-result-wide v0

    .line 1566
    .local v0, delay:J
    iget-boolean v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->finished:Z

    if-nez v3, :cond_90

    iget-boolean v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->responseReceived:Z

    if-nez v3, :cond_90

    iget-boolean v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->cancelled:Z
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_9a

    if-nez v3, :cond_90

    .line 1568
    :try_start_82
    iget-object v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v3}, Lorg/snmp4j/Snmp;->access$800(Lorg/snmp4j/Snmp;)Lorg/snmp4j/util/CommonTimer;

    move-result-object v3

    invoke-interface {v3, p0, v0, v1}, Lorg/snmp4j/util/CommonTimer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_9a
    .catch Ljava/lang/IllegalStateException; {:try_start_82 .. :try_end_8b} :catch_9d

    .line 1579
    .end local v0           #delay:J
    .end local v2           #t:Lorg/snmp4j/Target;
    :cond_8b
    :goto_8b
    monitor-exit p0

    return-void

    .line 1556
    .restart local v2       #t:Lorg/snmp4j/Target;
    :cond_8d
    :try_start_8d
    const-string v3, "async"

    goto :goto_3c

    .line 1575
    .restart local v0       #delay:J
    :cond_90
    iget-object v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v3}, Lorg/snmp4j/Snmp;->access$400(Lorg/snmp4j/Snmp;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_9a

    goto :goto_8b

    .line 1546
    .end local v0           #delay:J
    .end local v2           #t:Lorg/snmp4j/Target;
    :catchall_9a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1570
    .restart local v0       #delay:J
    .restart local v2       #t:Lorg/snmp4j/Target;
    :catch_9d
    move-exception v3

    goto :goto_8b
.end method

.method protected registerRequest(Lorg/snmp4j/mp/PduHandle;)V
    .registers 2
    .parameter "handle"

    .prologue
    .line 1539
    return-void
.end method

.method public responseReceived()V
    .registers 2

    .prologue
    .line 1542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->responseReceived:Z

    .line 1543
    return-void
.end method

.method public declared-synchronized run()V
    .registers 16

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1585
    monitor-enter p0

    :try_start_3
    iget-object v9, p0, Lorg/snmp4j/Snmp$PendingRequest;->key:Lorg/snmp4j/mp/PduHandle;

    .line 1586
    .local v9, m_key:Lorg/snmp4j/mp/PduHandle;
    iget-object v3, p0, Lorg/snmp4j/Snmp$PendingRequest;->pdu:Lorg/snmp4j/PDU;

    .line 1587
    .local v3, m_pdu:Lorg/snmp4j/PDU;
    iget-object v11, p0, Lorg/snmp4j/Snmp$PendingRequest;->target:Lorg/snmp4j/Target;

    .line 1588
    .local v11, m_target:Lorg/snmp4j/Target;
    iget-object v12, p0, Lorg/snmp4j/Snmp$PendingRequest;->transport:Lorg/snmp4j/TransportMapping;

    .line 1589
    .local v12, m_transport:Lorg/snmp4j/TransportMapping;
    iget-object v10, p0, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    .line 1590
    .local v10, m_listener:Lorg/snmp4j/event/ResponseListener;
    iget-object v5, p0, Lorg/snmp4j/Snmp$PendingRequest;->userObject:Ljava/lang/Object;

    .line 1592
    .local v5, m_userObject:Ljava/lang/Object;
    if-eqz v9, :cond_17

    if-eqz v3, :cond_17

    if-eqz v11, :cond_17

    if-nez v10, :cond_65

    .line 1594
    :cond_17
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1595
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PendingRequest canceled key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", pdu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", transport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_105

    .line 1657
    :cond_63
    :goto_63
    monitor-exit p0

    return-void

    .line 1603
    :cond_65
    :try_start_65
    iget-object v2, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v2}, Lorg/snmp4j/Snmp;->access$400(Lorg/snmp4j/Snmp;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_105
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_6c} :catch_db
    .catch Ljava/lang/Error; {:try_start_65 .. :try_end_6c} :catch_10e

    .line 1604
    :try_start_6c
    iget-boolean v4, p0, Lorg/snmp4j/Snmp$PendingRequest;->finished:Z

    if-nez v4, :cond_108

    iget v4, p0, Lorg/snmp4j/Snmp$PendingRequest;->retryCount:I

    if-lez v4, :cond_108

    iget-boolean v4, p0, Lorg/snmp4j/Snmp$PendingRequest;->responseReceived:Z

    if-nez v4, :cond_108

    :goto_78
    iput-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->pendingRetry:Z

    .line 1606
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_6c .. :try_end_7b} :catchall_10b

    .line 1607
    :try_start_7b
    iget-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->pendingRetry:Z
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_105
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_7d} :catch_db
    .catch Ljava/lang/Error; {:try_start_7b .. :try_end_7d} :catch_10e

    if-eqz v0, :cond_138

    .line 1609
    :try_start_7f
    new-instance v13, Lorg/snmp4j/Snmp$PendingRequest;

    iget-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-direct {v13, v0, p0}, Lorg/snmp4j/Snmp$PendingRequest;-><init>(Lorg/snmp4j/Snmp;Lorg/snmp4j/Snmp$PendingRequest;)V

    .line 1610
    .local v13, nextRetry:Lorg/snmp4j/Snmp$PendingRequest;
    iget-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-virtual {v0, v3, v11, v12, v13}, Lorg/snmp4j/Snmp;->sendMessage(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;

    .line 1611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->pendingRetry:Z
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_105
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_8e} :catch_8f
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_8e} :catch_db
    .catch Ljava/lang/Error; {:try_start_7f .. :try_end_8e} :catch_10e

    goto :goto_63

    .line 1613
    .end local v13           #nextRetry:Lorg/snmp4j/Snmp$PendingRequest;
    :catch_8f
    move-exception v6

    .line 1614
    .local v6, ex:Ljava/io/IOException;
    :try_start_90
    iget-object v8, p0, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    .line 1615
    .local v8, l:Lorg/snmp4j/event/ResponseListener;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->finished:Z

    .line 1616
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to send SNMP message to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 1619
    iget-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v0}, Lorg/snmp4j/Snmp;->access$900(Lorg/snmp4j/Snmp;)Lorg/snmp4j/MessageDispatcher;

    move-result-object v0

    invoke-interface {v11}, Lorg/snmp4j/Target;->getVersion()I

    move-result v1

    invoke-interface {v0, v1, v9}, Lorg/snmp4j/MessageDispatcher;->releaseStateReference(ILorg/snmp4j/mp/PduHandle;)V

    .line 1621
    if-eqz v8, :cond_63

    .line 1622
    iget-object v14, p0, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    new-instance v0, Lorg/snmp4j/event/ResponseEvent;

    iget-object v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/snmp4j/event/ResponseEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/PDU;Lorg/snmp4j/PDU;Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-interface {v14, v0}, Lorg/snmp4j/event/ResponseListener;->onResponse(Lorg/snmp4j/event/ResponseEvent;)V
    :try_end_da
    .catchall {:try_start_90 .. :try_end_da} :catchall_105
    .catch Ljava/lang/RuntimeException; {:try_start_90 .. :try_end_da} :catch_db
    .catch Ljava/lang/Error; {:try_start_90 .. :try_end_da} :catch_10e

    goto :goto_63

    .line 1647
    .end local v6           #ex:Ljava/io/IOException;
    .end local v8           #l:Lorg/snmp4j/event/ResponseListener;
    :catch_db
    move-exception v6

    .line 1648
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_dc
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to process pending request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1650
    throw v6
    :try_end_105
    .catchall {:try_start_dc .. :try_end_105} :catchall_105

    .line 1585
    .end local v3           #m_pdu:Lorg/snmp4j/PDU;
    .end local v5           #m_userObject:Ljava/lang/Object;
    .end local v6           #ex:Ljava/lang/RuntimeException;
    .end local v9           #m_key:Lorg/snmp4j/mp/PduHandle;
    .end local v10           #m_listener:Lorg/snmp4j/event/ResponseListener;
    .end local v11           #m_target:Lorg/snmp4j/Target;
    .end local v12           #m_transport:Lorg/snmp4j/TransportMapping;
    :catchall_105
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v3       #m_pdu:Lorg/snmp4j/PDU;
    .restart local v5       #m_userObject:Ljava/lang/Object;
    .restart local v9       #m_key:Lorg/snmp4j/mp/PduHandle;
    .restart local v10       #m_listener:Lorg/snmp4j/event/ResponseListener;
    .restart local v11       #m_target:Lorg/snmp4j/Target;
    .restart local v12       #m_transport:Lorg/snmp4j/TransportMapping;
    :cond_108
    move v0, v1

    .line 1604
    goto/16 :goto_78

    .line 1606
    :catchall_10b
    move-exception v0

    :try_start_10c
    monitor-exit v2
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    :try_start_10d
    throw v0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_105
    .catch Ljava/lang/RuntimeException; {:try_start_10d .. :try_end_10e} :catch_db
    .catch Ljava/lang/Error; {:try_start_10d .. :try_end_10e} :catch_10e

    .line 1652
    :catch_10e
    move-exception v7

    .line 1653
    .local v7, er:Ljava/lang/Error;
    :try_start_10f
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to process pending request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Lorg/snmp4j/log/LogAdapter;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1655
    throw v7
    :try_end_138
    .catchall {:try_start_10f .. :try_end_138} :catchall_105

    .line 1627
    .end local v7           #er:Ljava/lang/Error;
    :cond_138
    :try_start_138
    iget-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->finished:Z

    if-nez v0, :cond_18f

    .line 1628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->finished:Z

    .line 1629
    iget-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v0}, Lorg/snmp4j/Snmp;->access$400(Lorg/snmp4j/Snmp;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    iget-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->cancelled:Z

    if-nez v0, :cond_63

    .line 1632
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_174

    .line 1633
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Request timed out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v9}, Lorg/snmp4j/mp/PduHandle;->getTransactionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1635
    :cond_174
    iget-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v0}, Lorg/snmp4j/Snmp;->access$900(Lorg/snmp4j/Snmp;)Lorg/snmp4j/MessageDispatcher;

    move-result-object v0

    invoke-interface {v11}, Lorg/snmp4j/Target;->getVersion()I

    move-result v1

    invoke-interface {v0, v1, v9}, Lorg/snmp4j/MessageDispatcher;->releaseStateReference(ILorg/snmp4j/mp/PduHandle;)V

    .line 1637
    new-instance v0, Lorg/snmp4j/event/ResponseEvent;

    iget-object v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/event/ResponseEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/PDU;Lorg/snmp4j/PDU;Ljava/lang/Object;)V

    invoke-interface {v10, v0}, Lorg/snmp4j/event/ResponseListener;->onResponse(Lorg/snmp4j/event/ResponseEvent;)V

    goto/16 :goto_63

    .line 1644
    :cond_18f
    iget-object v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v0}, Lorg/snmp4j/Snmp;->access$400(Lorg/snmp4j/Snmp;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_198
    .catchall {:try_start_138 .. :try_end_198} :catchall_105
    .catch Ljava/lang/RuntimeException; {:try_start_138 .. :try_end_198} :catch_db
    .catch Ljava/lang/Error; {:try_start_138 .. :try_end_198} :catch_10e

    goto/16 :goto_63
.end method

.method public setFinished()Z
    .registers 3

    .prologue
    .line 1660
    iget-boolean v0, p0, Lorg/snmp4j/Snmp$PendingRequest;->finished:Z

    .line 1661
    .local v0, currentState:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->finished:Z

    .line 1662
    return v0
.end method

.method public setMaxRequestStatus(I)V
    .registers 2
    .parameter "maxRequestStatus"

    .prologue
    .line 1666
    iput p1, p0, Lorg/snmp4j/Snmp$PendingRequest;->maxRequestStatus:I

    .line 1667
    return-void
.end method
