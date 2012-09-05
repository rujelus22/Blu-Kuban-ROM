.class Lorg/snmp4j/Snmp$NotificationDispatcher;
.super Ljava/lang/Object;
.source "Snmp.java"

# interfaces
.implements Lorg/snmp4j/CommandResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/Snmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationDispatcher"
.end annotation


# instance fields
.field private notificationListeners:Ljava/util/Hashtable;

.field private notificationTransports:Ljava/util/Hashtable;

.field private final this$0:Lorg/snmp4j/Snmp;


# direct methods
.method protected constructor <init>(Lorg/snmp4j/Snmp;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0xa

    .line 1773
    iput-object p1, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->this$0:Lorg/snmp4j/Snmp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1770
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->notificationListeners:Ljava/util/Hashtable;

    .line 1771
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->notificationTransports:Ljava/util/Hashtable;

    .line 1774
    return-void
.end method


# virtual methods
.method public declared-synchronized addNotificationListener(Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/CommandResponder;)V
    .registers 5
    .parameter "listenAddress"
    .parameter "transport"
    .parameter "listener"

    .prologue
    .line 1779
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->notificationListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    iget-object v0, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->notificationTransports:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1781
    monitor-exit p0

    return-void

    .line 1779
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeAll()V
    .registers 5

    .prologue
    .line 1807
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->notificationTransports:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 1808
    iget-object v3, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->notificationListeners:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1809
    .local v1, it:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1810
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/TransportMapping;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_36

    .line 1812
    .local v2, tm:Lorg/snmp4j/TransportMapping;
    :try_start_1c
    invoke-interface {v2}, Lorg/snmp4j/TransportMapping;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_36
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_10

    .line 1814
    :catch_20
    move-exception v0

    .line 1815
    .local v0, ex:Ljava/io/IOException;
    :try_start_21
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 1816
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1817
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_36

    goto :goto_10

    .line 1807
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #tm:Lorg/snmp4j/TransportMapping;
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1821
    .restart local v1       #it:Ljava/util/Iterator;
    :cond_39
    :try_start_39
    iget-object v3, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->notificationListeners:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    .line 1822
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized processPdu(Lorg/snmp4j/CommandResponderEvent;)V
    .registers 7
    .parameter "event"

    .prologue
    .line 1825
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->notificationTransports:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getTransportMapping()Lorg/snmp4j/TransportMapping;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/CommandResponder;

    .line 1827
    .local v0, listener:Lorg/snmp4j/CommandResponder;
    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getPDU()Lorg/snmp4j/PDU;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getPDU()Lorg/snmp4j/PDU;

    move-result-object v2

    invoke-virtual {v2}, Lorg/snmp4j/PDU;->getType()I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_5d

    move-result v2

    const/16 v3, -0x5a

    if-ne v2, v3, :cond_22

    .line 1831
    :try_start_1f
    invoke-virtual {p0, p1}, Lorg/snmp4j/Snmp$NotificationDispatcher;->sendInformResponse(Lorg/snmp4j/CommandResponderEvent;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_5d
    .catch Lorg/snmp4j/MessageException; {:try_start_1f .. :try_end_22} :catch_29

    .line 1840
    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    .line 1841
    :try_start_24
    invoke-interface {v0, p1}, Lorg/snmp4j/CommandResponder;->processPdu(Lorg/snmp4j/CommandResponderEvent;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_5d

    .line 1843
    :cond_27
    monitor-exit p0

    return-void

    .line 1833
    :catch_29
    move-exception v1

    .line 1834
    .local v1, mex:Lorg/snmp4j/MessageException;
    :try_start_2a
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1835
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Failed to send response on INFORM PDU event ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/snmp4j/MessageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_2a .. :try_end_5c} :catchall_5d

    goto :goto_22

    .line 1825
    .end local v0           #listener:Lorg/snmp4j/CommandResponder;
    .end local v1           #mex:Lorg/snmp4j/MessageException;
    :catchall_5d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeNotificationListener(Lorg/snmp4j/smi/Address;)Z
    .registers 5
    .parameter "listenAddress"

    .prologue
    .line 1786
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->notificationListeners:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/TransportMapping;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_37

    .line 1788
    .local v1, tm:Lorg/snmp4j/TransportMapping;
    if-nez v1, :cond_e

    .line 1789
    const/4 v2, 0x0

    .line 1803
    :goto_c
    monitor-exit p0

    return v2

    .line 1791
    :cond_e
    :try_start_e
    iget-object v2, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v2}, Lorg/snmp4j/Snmp;->access$900(Lorg/snmp4j/Snmp;)Lorg/snmp4j/MessageDispatcher;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/TransportMapping;->removeTransportListener(Lorg/snmp4j/transport/TransportListener;)V

    .line 1792
    iget-object v2, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->notificationTransports:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_37

    .line 1795
    :try_start_1c
    invoke-interface {v1}, Lorg/snmp4j/TransportMapping;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_37
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21

    .line 1803
    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    goto :goto_c

    .line 1797
    :catch_21
    move-exception v0

    .line 1798
    .local v0, ex:Ljava/io/IOException;
    :try_start_22
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 1799
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1800
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_37

    goto :goto_1f

    .line 1786
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #tm:Lorg/snmp4j/TransportMapping;
    :catchall_37
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected sendInformResponse(Lorg/snmp4j/CommandResponderEvent;)V
    .registers 11
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/MessageException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1854
    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getPDU()Lorg/snmp4j/PDU;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/PDU;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/snmp4j/PDU;

    .line 1855
    .local v5, responsePDU:Lorg/snmp4j/PDU;
    const/16 v0, -0x5e

    invoke-virtual {v5, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 1856
    invoke-virtual {v5, v1}, Lorg/snmp4j/PDU;->setErrorStatus(I)V

    .line 1857
    invoke-virtual {v5, v1}, Lorg/snmp4j/PDU;->setErrorIndex(I)V

    .line 1858
    iget-object v0, p0, Lorg/snmp4j/Snmp$NotificationDispatcher;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v0}, Lorg/snmp4j/Snmp;->access$900(Lorg/snmp4j/Snmp;)Lorg/snmp4j/MessageDispatcher;

    move-result-object v0

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getMessageProcessingModel()I

    move-result v1

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getSecurityModel()I

    move-result v2

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getSecurityName()[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getSecurityLevel()I

    move-result v4

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getMaxSizeResponsePDU()I

    move-result v6

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getStateReference()Lorg/snmp4j/mp/StateReference;

    move-result-object v7

    new-instance v8, Lorg/snmp4j/mp/StatusInformation;

    invoke-direct {v8}, Lorg/snmp4j/mp/StatusInformation;-><init>()V

    invoke-interface/range {v0 .. v8}, Lorg/snmp4j/MessageDispatcher;->returnResponsePdu(II[BILorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/mp/StatusInformation;)I

    .line 1866
    return-void
.end method
