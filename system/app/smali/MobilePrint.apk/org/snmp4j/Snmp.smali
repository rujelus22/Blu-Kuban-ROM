.class public Lorg/snmp4j/Snmp;
.super Ljava/lang/Object;
.source "Snmp.java"

# interfaces
.implements Lorg/snmp4j/Session;
.implements Lorg/snmp4j/CommandResponder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/Snmp$NotificationDispatcher;,
        Lorg/snmp4j/Snmp$SyncResponseListener;,
        Lorg/snmp4j/Snmp$AsyncRequestKey;,
        Lorg/snmp4j/Snmp$AsyncPendingRequest;,
        Lorg/snmp4j/Snmp$PendingRequest;,
        Lorg/snmp4j/Snmp$ReportProcessor;,
        Lorg/snmp4j/Snmp$ReportHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_REQUEST_STATUS:I = 0x2

.field private static final ENGINE_ID_DISCOVERY_MAX_REQUEST_STATUS:I

.field static class$org$snmp4j$Snmp:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private asyncRequests:Ljava/util/Map;

.field private transient commandResponderListeners:Ljava/util/Vector;

.field private messageDispatcher:Lorg/snmp4j/MessageDispatcher;

.field private notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

.field private pendingRequests:Ljava/util/Map;

.field private reportHandler:Lorg/snmp4j/Snmp$ReportHandler;

.field private timeoutModel:Lorg/snmp4j/TimeoutModel;

.field private timer:Lorg/snmp4j/util/CommonTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 140
    sget-object v0, Lorg/snmp4j/Snmp;->class$org$snmp4j$Snmp:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.Snmp"

    invoke-static {v0}, Lorg/snmp4j/Snmp;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/Snmp;->class$org$snmp4j$Snmp:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/Snmp;->class$org$snmp4j$Snmp:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x32

    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->asyncRequests:Ljava/util/Map;

    .line 166
    new-instance v0, Lorg/snmp4j/DefaultTimeoutModel;

    invoke-direct {v0}, Lorg/snmp4j/DefaultTimeoutModel;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->timeoutModel:Lorg/snmp4j/TimeoutModel;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    .line 172
    new-instance v0, Lorg/snmp4j/Snmp$ReportProcessor;

    invoke-direct {v0, p0}, Lorg/snmp4j/Snmp$ReportProcessor;-><init>(Lorg/snmp4j/Snmp;)V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->reportHandler:Lorg/snmp4j/Snmp$ReportHandler;

    .line 206
    new-instance v0, Lorg/snmp4j/MessageDispatcherImpl;

    invoke-direct {v0}, Lorg/snmp4j/MessageDispatcherImpl;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    .line 207
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/MessageDispatcher;)V
    .registers 4
    .parameter "messageDispatcher"

    .prologue
    const/16 v1, 0x32

    .line 340
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->asyncRequests:Ljava/util/Map;

    .line 166
    new-instance v0, Lorg/snmp4j/DefaultTimeoutModel;

    invoke-direct {v0}, Lorg/snmp4j/DefaultTimeoutModel;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->timeoutModel:Lorg/snmp4j/TimeoutModel;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    .line 172
    new-instance v0, Lorg/snmp4j/Snmp$ReportProcessor;

    invoke-direct {v0, p0}, Lorg/snmp4j/Snmp$ReportProcessor;-><init>(Lorg/snmp4j/Snmp;)V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->reportHandler:Lorg/snmp4j/Snmp$ReportHandler;

    .line 341
    iput-object p1, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    .line 342
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p0}, Lorg/snmp4j/MessageDispatcher;->addCommandResponder(Lorg/snmp4j/CommandResponder;)V

    .line 343
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/TransportMapping;)V
    .registers 5
    .parameter "messageDispatcher"
    .parameter "transportMapping"

    .prologue
    const/16 v1, 0x32

    .line 294
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->asyncRequests:Ljava/util/Map;

    .line 166
    new-instance v0, Lorg/snmp4j/DefaultTimeoutModel;

    invoke-direct {v0}, Lorg/snmp4j/DefaultTimeoutModel;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->timeoutModel:Lorg/snmp4j/TimeoutModel;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    .line 172
    new-instance v0, Lorg/snmp4j/Snmp$ReportProcessor;

    invoke-direct {v0, p0}, Lorg/snmp4j/Snmp$ReportProcessor;-><init>(Lorg/snmp4j/Snmp;)V

    iput-object v0, p0, Lorg/snmp4j/Snmp;->reportHandler:Lorg/snmp4j/Snmp$ReportHandler;

    .line 295
    iput-object p1, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    .line 296
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p0}, Lorg/snmp4j/MessageDispatcher;->addCommandResponder(Lorg/snmp4j/CommandResponder;)V

    .line 297
    if-eqz p2, :cond_30

    .line 298
    invoke-virtual {p0, p2}, Lorg/snmp4j/Snmp;->addTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 300
    :cond_30
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/TransportMapping;)V
    .registers 2
    .parameter "transportMapping"

    .prologue
    .line 250
    invoke-direct {p0}, Lorg/snmp4j/Snmp;-><init>()V

    .line 251
    invoke-virtual {p0}, Lorg/snmp4j/Snmp;->initMessageDispatcher()V

    .line 252
    if-eqz p1, :cond_b

    .line 253
    invoke-virtual {p0, p1}, Lorg/snmp4j/Snmp;->addTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 255
    :cond_b
    return-void
.end method

.method static access$1000(Lorg/snmp4j/Snmp;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lorg/snmp4j/Snmp;->asyncRequests:Ljava/util/Map;

    return-object v0
.end method

.method static access$300()Lorg/snmp4j/log/LogAdapter;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    return-object v0
.end method

.method static access$400(Lorg/snmp4j/Snmp;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    return-object v0
.end method

.method static access$700(Lorg/snmp4j/Snmp;)Lorg/snmp4j/TimeoutModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lorg/snmp4j/Snmp;->timeoutModel:Lorg/snmp4j/TimeoutModel;

    return-object v0
.end method

.method static access$800(Lorg/snmp4j/Snmp;)Lorg/snmp4j/util/CommonTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lorg/snmp4j/Snmp;->timer:Lorg/snmp4j/util/CommonTimer;

    return-object v0
.end method

.method static access$900(Lorg/snmp4j/Snmp;)Lorg/snmp4j/MessageDispatcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 140
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private declared-synchronized createPendingTimer()V
    .registers 2

    .prologue
    .line 947
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/Snmp;->timer:Lorg/snmp4j/util/CommonTimer;

    if-nez v0, :cond_f

    .line 948
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getTimerFactory()Lorg/snmp4j/util/TimerFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/util/TimerFactory;->createTimer()Lorg/snmp4j/util/CommonTimer;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/Snmp;->timer:Lorg/snmp4j/util/CommonTimer;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 950
    :cond_f
    monitor-exit p0

    return-void

    .line 947
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getMPv3()Lorg/snmp4j/mp/MPv3;
    .registers 4

    .prologue
    .line 1148
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/snmp4j/Snmp;->getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/mp/MPv3;

    .line 1149
    .local v0, mpv3:Lorg/snmp4j/mp/MPv3;
    if-nez v0, :cond_11

    .line 1150
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "MPv3 not available"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1152
    :cond_11
    return-object v0
.end method

.method private send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;I)Lorg/snmp4j/event/ResponseEvent;
    .registers 25
    .parameter "pdu"
    .parameter "target"
    .parameter "transport"
    .parameter "maxRequestStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/PDU;->isConfirmedPdu()Z

    move-result v5

    if-nez v5, :cond_14

    .line 882
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v5}, Lorg/snmp4j/Snmp;->sendMessage(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;

    .line 883
    const/4 v5, 0x0

    .line 943
    :goto_13
    return-object v5

    .line 885
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/snmp4j/Snmp;->timer:Lorg/snmp4j/util/CommonTimer;

    if-nez v5, :cond_1d

    .line 886
    invoke-direct/range {p0 .. p0}, Lorg/snmp4j/Snmp;->createPendingTimer()V

    .line 888
    :cond_1d
    new-instance v6, Lorg/snmp4j/Snmp$SyncResponseListener;

    invoke-direct {v6}, Lorg/snmp4j/Snmp$SyncResponseListener;-><init>()V

    .line 889
    .local v6, syncResponse:Lorg/snmp4j/Snmp$SyncResponseListener;
    const/4 v15, 0x0

    .line 890
    .local v15, retryRequest:Lorg/snmp4j/Snmp$PendingRequest;
    monitor-enter v6

    .line 891
    const/4 v13, 0x0

    .line 892
    .local v13, handle:Lorg/snmp4j/mp/PduHandle;
    :try_start_25
    new-instance v4, Lorg/snmp4j/Snmp$PendingRequest;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lorg/snmp4j/Snmp$PendingRequest;-><init>(Lorg/snmp4j/Snmp;Lorg/snmp4j/event/ResponseListener;Ljava/lang/Object;Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;)V

    .line 894
    .local v4, request:Lorg/snmp4j/Snmp$PendingRequest;
    move/from16 v0, p4

    invoke-static {v4, v0}, Lorg/snmp4j/Snmp$PendingRequest;->access$002(Lorg/snmp4j/Snmp$PendingRequest;I)I

    .line 895
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/snmp4j/Snmp;->sendMessage(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;

    move-result-object v13

    .line 896
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/snmp4j/Snmp;->timeoutModel:Lorg/snmp4j/TimeoutModel;

    invoke-interface/range {p2 .. p2}, Lorg/snmp4j/Target;->getRetries()I

    move-result v7

    invoke-interface/range {p2 .. p2}, Lorg/snmp4j/Target;->getTimeout()J

    move-result-wide v8

    invoke-interface {v5, v7, v8, v9}, Lorg/snmp4j/TimeoutModel;->getRequestTimeout(IJ)J

    move-result-wide v18

    .line 899
    .local v18, totalTimeout:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_58
    .catchall {:try_start_25 .. :try_end_58} :catchall_121

    move-result-wide v7

    add-long v16, v7, v18

    .line 901
    .local v16, stopTime:J
    :goto_5b
    :try_start_5b
    invoke-virtual {v6}, Lorg/snmp4j/Snmp$SyncResponseListener;->getResponse()Lorg/snmp4j/event/ResponseEvent;

    move-result-object v5

    if-nez v5, :cond_d4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v7, v16

    if-gez v5, :cond_d4

    .line 903
    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_124
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_6e} :catch_6f

    goto :goto_5b

    .line 912
    :catch_6f
    move-exception v14

    .line 913
    .local v14, iex:Ljava/lang/InterruptedException;
    :try_start_70
    sget-object v5, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5, v14}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 915
    invoke-virtual {v4}, Lorg/snmp4j/Snmp$PendingRequest;->setFinished()Z

    .line 916
    invoke-virtual {v4}, Lorg/snmp4j/Snmp$PendingRequest;->cancel()Z

    .line 917
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/snmp4j/Snmp$PendingRequest;

    move-object v15, v0

    .line 918
    if-eqz v15, :cond_8f

    .line 919
    invoke-virtual {v15}, Lorg/snmp4j/Snmp$PendingRequest;->setFinished()Z

    .line 920
    invoke-virtual {v15}, Lorg/snmp4j/Snmp$PendingRequest;->cancel()Z

    .line 922
    :cond_8f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_96
    .catchall {:try_start_70 .. :try_end_96} :catchall_124

    .line 925
    :try_start_96
    invoke-static {v4}, Lorg/snmp4j/Snmp$PendingRequest;->access$100(Lorg/snmp4j/Snmp$PendingRequest;)Z

    move-result v5

    if-nez v5, :cond_b0

    .line 927
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/snmp4j/Snmp$PendingRequest;

    move-object v15, v0

    .line 928
    if-eqz v15, :cond_b0

    .line 929
    invoke-virtual {v15}, Lorg/snmp4j/Snmp$PendingRequest;->setFinished()Z

    .line 930
    invoke-virtual {v15}, Lorg/snmp4j/Snmp$PendingRequest;->cancel()Z

    .line 934
    .end local v14           #iex:Ljava/lang/InterruptedException;
    :cond_b0
    :goto_b0
    monitor-exit v6
    :try_end_b1
    .catchall {:try_start_96 .. :try_end_b1} :catchall_121

    .line 935
    if-eqz v15, :cond_b9

    .line 936
    invoke-virtual {v15}, Lorg/snmp4j/Snmp$PendingRequest;->setFinished()Z

    .line 937
    invoke-virtual {v15}, Lorg/snmp4j/Snmp$PendingRequest;->cancel()Z

    .line 939
    :cond_b9
    invoke-virtual {v6}, Lorg/snmp4j/Snmp$SyncResponseListener;->getResponse()Lorg/snmp4j/event/ResponseEvent;

    move-result-object v5

    if-nez v5, :cond_ce

    .line 940
    new-instance v7, Lorg/snmp4j/event/ResponseEvent;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lorg/snmp4j/event/ResponseEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/PDU;Lorg/snmp4j/PDU;Ljava/lang/Object;)V

    invoke-static {v6, v7}, Lorg/snmp4j/Snmp$SyncResponseListener;->access$202(Lorg/snmp4j/Snmp$SyncResponseListener;Lorg/snmp4j/event/ResponseEvent;)Lorg/snmp4j/event/ResponseEvent;

    .line 943
    :cond_ce
    invoke-static {v6}, Lorg/snmp4j/Snmp$SyncResponseListener;->access$200(Lorg/snmp4j/Snmp$SyncResponseListener;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v5

    goto/16 :goto_13

    .line 905
    :cond_d4
    :try_start_d4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/snmp4j/Snmp$PendingRequest;

    move-object v15, v0

    .line 906
    sget-object v5, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_100

    .line 907
    sget-object v5, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Removed pending request with handle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 909
    :cond_100
    invoke-virtual {v4}, Lorg/snmp4j/Snmp$PendingRequest;->setFinished()Z

    .line 910
    invoke-virtual {v4}, Lorg/snmp4j/Snmp$PendingRequest;->cancel()Z
    :try_end_106
    .catchall {:try_start_d4 .. :try_end_106} :catchall_124
    .catch Ljava/lang/InterruptedException; {:try_start_d4 .. :try_end_106} :catch_6f

    .line 925
    :try_start_106
    invoke-static {v4}, Lorg/snmp4j/Snmp$PendingRequest;->access$100(Lorg/snmp4j/Snmp$PendingRequest;)Z

    move-result v5

    if-nez v5, :cond_b0

    .line 927
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/snmp4j/Snmp$PendingRequest;

    move-object v15, v0

    .line 928
    if-eqz v15, :cond_b0

    .line 929
    invoke-virtual {v15}, Lorg/snmp4j/Snmp$PendingRequest;->setFinished()Z

    .line 930
    invoke-virtual {v15}, Lorg/snmp4j/Snmp$PendingRequest;->cancel()Z

    goto :goto_b0

    .line 934
    .end local v4           #request:Lorg/snmp4j/Snmp$PendingRequest;
    .end local v16           #stopTime:J
    .end local v18           #totalTimeout:J
    :catchall_121
    move-exception v5

    monitor-exit v6
    :try_end_123
    .catchall {:try_start_106 .. :try_end_123} :catchall_121

    throw v5

    .line 925
    .restart local v4       #request:Lorg/snmp4j/Snmp$PendingRequest;
    .restart local v16       #stopTime:J
    .restart local v18       #totalTimeout:J
    :catchall_124
    move-exception v5

    move-object v7, v5

    :try_start_126
    invoke-static {v4}, Lorg/snmp4j/Snmp$PendingRequest;->access$100(Lorg/snmp4j/Snmp$PendingRequest;)Z

    move-result v5

    if-nez v5, :cond_140

    .line 927
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/snmp4j/Snmp$PendingRequest;

    move-object v15, v0

    .line 928
    if-eqz v15, :cond_140

    .line 929
    invoke-virtual {v15}, Lorg/snmp4j/Snmp$PendingRequest;->setFinished()Z

    .line 930
    invoke-virtual {v15}, Lorg/snmp4j/Snmp$PendingRequest;->cancel()Z

    :cond_140
    throw v7
    :try_end_141
    .catchall {:try_start_126 .. :try_end_141} :catchall_121
.end method


# virtual methods
.method public declared-synchronized addCommandResponder(Lorg/snmp4j/CommandResponder;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 1410
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/Snmp;->commandResponderListeners:Ljava/util/Vector;

    if-nez v1, :cond_18

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1412
    .local v0, v:Ljava/util/Vector;
    :goto_b
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1413
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1414
    iput-object v0, p0, Lorg/snmp4j/Snmp;->commandResponderListeners:Ljava/util/Vector;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    .line 1416
    :cond_16
    monitor-exit p0

    return-void

    .line 1410
    .end local v0           #v:Ljava/util/Vector;
    :cond_18
    :try_start_18
    iget-object v1, p0, Lorg/snmp4j/Snmp;->commandResponderListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_22

    move-object v0, v1

    goto :goto_b

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addNotificationListener(Lorg/snmp4j/smi/Address;Lorg/snmp4j/CommandResponder;)Z
    .registers 10
    .parameter "listenAddress"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 399
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lorg/snmp4j/transport/TransportMappings;->getInstance()Lorg/snmp4j/transport/TransportMappings;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/snmp4j/transport/TransportMappings;->createTransportMapping(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/TransportMapping;

    move-result-object v2

    .line 401
    .local v2, tm:Lorg/snmp4j/TransportMapping;
    if-nez v2, :cond_2f

    .line 402
    sget-object v3, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 403
    sget-object v3, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to add notification listener for address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->info(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_a4

    :cond_2c
    move v3, v4

    .line 428
    :goto_2d
    monitor-exit p0

    return v3

    .line 408
    :cond_2f
    :try_start_2f
    instance-of v3, v2, Lorg/snmp4j/transport/ConnectionOrientedTransportMapping;

    if-eqz v3, :cond_3c

    .line 409
    move-object v0, v2

    check-cast v0, Lorg/snmp4j/transport/ConnectionOrientedTransportMapping;

    move-object v3, v0

    const-wide/16 v5, 0x0

    invoke-interface {v3, v5, v6}, Lorg/snmp4j/transport/ConnectionOrientedTransportMapping;->setConnectionTimeout(J)V

    .line 411
    :cond_3c
    iget-object v3, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v2, v3}, Lorg/snmp4j/TransportMapping;->addTransportListener(Lorg/snmp4j/transport/TransportListener;)V

    .line 412
    iget-object v3, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    if-nez v3, :cond_51

    .line 413
    new-instance v3, Lorg/snmp4j/Snmp$NotificationDispatcher;

    invoke-direct {v3, p0}, Lorg/snmp4j/Snmp$NotificationDispatcher;-><init>(Lorg/snmp4j/Snmp;)V

    iput-object v3, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    .line 414
    iget-object v3, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    invoke-virtual {p0, v3}, Lorg/snmp4j/Snmp;->addCommandResponder(Lorg/snmp4j/CommandResponder;)V

    .line 416
    :cond_51
    iget-object v3, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    invoke-virtual {v3, p1, v2, p2}, Lorg/snmp4j/Snmp$NotificationDispatcher;->addNotificationListener(Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/CommandResponder;)V
    :try_end_56
    .catchall {:try_start_2f .. :try_end_56} :catchall_a4

    .line 418
    :try_start_56
    invoke-interface {v2}, Lorg/snmp4j/TransportMapping;->listen()V

    .line 419
    sget-object v3, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 420
    sget-object v3, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Added notification listener for address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->info(Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_56 .. :try_end_79} :catchall_a4
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_79} :catch_7b

    .line 423
    :cond_79
    const/4 v3, 0x1

    goto :goto_2d

    .line 425
    :catch_7b
    move-exception v1

    .line 426
    .local v1, ex:Ljava/io/IOException;
    :try_start_7c
    sget-object v3, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to initialize notification listener for address \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V
    :try_end_a2
    .catchall {:try_start_7c .. :try_end_a2} :catchall_a4

    move v3, v4

    .line 428
    goto :goto_2d

    .line 399
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #tm:Lorg/snmp4j/TransportMapping;
    :catchall_a4
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public addTransportMapping(Lorg/snmp4j/TransportMapping;)V
    .registers 3
    .parameter "transportMapping"

    .prologue
    .line 362
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->addTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 363
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {p1, v0}, Lorg/snmp4j/TransportMapping;->addTransportListener(Lorg/snmp4j/transport/TransportListener;)V

    .line 364
    return-void
.end method

.method public cancel(Lorg/snmp4j/PDU;Lorg/snmp4j/event/ResponseListener;)V
    .registers 9
    .parameter "request"
    .parameter "listener"

    .prologue
    .line 1096
    new-instance v0, Lorg/snmp4j/Snmp$AsyncRequestKey;

    invoke-direct {v0, p1, p2}, Lorg/snmp4j/Snmp$AsyncRequestKey;-><init>(Lorg/snmp4j/PDU;Lorg/snmp4j/event/ResponseListener;)V

    .line 1097
    .local v0, key:Lorg/snmp4j/Snmp$AsyncRequestKey;
    iget-object v3, p0, Lorg/snmp4j/Snmp;->asyncRequests:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/mp/PduHandle;

    .line 1098
    .local v1, pending:Lorg/snmp4j/mp/PduHandle;
    sget-object v3, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1099
    sget-object v3, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cancelling pending request with handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1101
    :cond_2d
    if-eqz v1, :cond_41

    .line 1102
    iget-object v3, p0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/Snmp$PendingRequest;

    .line 1104
    .local v2, pendingRequest:Lorg/snmp4j/Snmp$PendingRequest;
    if-eqz v2, :cond_41

    .line 1105
    monitor-enter v2

    .line 1106
    :try_start_3a
    invoke-virtual {v2}, Lorg/snmp4j/Snmp$PendingRequest;->setFinished()Z

    .line 1107
    invoke-virtual {v2}, Lorg/snmp4j/Snmp$PendingRequest;->cancel()Z

    .line 1108
    monitor-exit v2

    .line 1111
    .end local v2           #pendingRequest:Lorg/snmp4j/Snmp$PendingRequest;
    :cond_41
    return-void

    .line 1108
    .restart local v2       #pendingRequest:Lorg/snmp4j/Snmp$PendingRequest;
    :catchall_42
    move-exception v3

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw v3
.end method

.method public close()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-object v1, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v1}, Lorg/snmp4j/MessageDispatcher;->getTransportMappings()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 499
    .local v7, it:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 500
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/snmp4j/TransportMapping;

    .line 501
    .local v12, tm:Lorg/snmp4j/TransportMapping;
    invoke-interface {v12}, Lorg/snmp4j/TransportMapping;->isListening()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 502
    invoke-interface {v12}, Lorg/snmp4j/TransportMapping;->close()V

    goto :goto_b

    .line 505
    .end local v12           #tm:Lorg/snmp4j/TransportMapping;
    :cond_21
    iget-object v11, p0, Lorg/snmp4j/Snmp;->timer:Lorg/snmp4j/util/CommonTimer;

    .line 506
    .local v11, t:Lorg/snmp4j/util/CommonTimer;
    iput-object v2, p0, Lorg/snmp4j/Snmp;->timer:Lorg/snmp4j/util/CommonTimer;

    .line 507
    if-eqz v11, :cond_2a

    .line 508
    invoke-interface {v11}, Lorg/snmp4j/util/CommonTimer;->cancel()V

    .line 511
    :cond_2a
    iget-object v1, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    if-eqz v1, :cond_33

    .line 512
    iget-object v1, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    invoke-virtual {v1}, Lorg/snmp4j/Snmp$NotificationDispatcher;->closeAll()V

    .line 515
    :cond_33
    iget-object v3, p0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    monitor-enter v3

    .line 516
    :try_start_36
    new-instance v10, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 517
    .local v10, pr:Ljava/util/List;
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_6c

    .line 518
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_46
    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 519
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/snmp4j/Snmp$PendingRequest;

    .line 520
    .local v9, pending:Lorg/snmp4j/Snmp$PendingRequest;
    new-instance v0, Lorg/snmp4j/event/ResponseEvent;

    iget-object v3, v9, Lorg/snmp4j/Snmp$PendingRequest;->pdu:Lorg/snmp4j/PDU;

    iget-object v5, v9, Lorg/snmp4j/Snmp$PendingRequest;->userObject:Ljava/lang/Object;

    new-instance v6, Ljava/lang/InterruptedException;

    const-string v1, "Snmp session has been closed"

    invoke-direct {v6, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lorg/snmp4j/event/ResponseEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/PDU;Lorg/snmp4j/PDU;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 524
    .local v0, e:Lorg/snmp4j/event/ResponseEvent;
    iget-object v8, v9, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    .line 525
    .local v8, l:Lorg/snmp4j/event/ResponseListener;
    if-eqz v8, :cond_46

    .line 526
    invoke-interface {v8, v0}, Lorg/snmp4j/event/ResponseListener;->onResponse(Lorg/snmp4j/event/ResponseEvent;)V

    goto :goto_46

    .line 517
    .end local v0           #e:Lorg/snmp4j/event/ResponseEvent;
    .end local v8           #l:Lorg/snmp4j/event/ResponseListener;
    .end local v9           #pending:Lorg/snmp4j/Snmp$PendingRequest;
    .end local v10           #pr:Ljava/util/List;
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1

    .line 529
    .restart local v10       #pr:Ljava/util/List;
    :cond_6f
    return-void
.end method

.method public discoverAuthoritativeEngineID(Lorg/snmp4j/smi/Address;J)[B
    .registers 15
    .parameter "address"
    .parameter "timeout"

    .prologue
    const/4 v7, 0x0

    .line 1175
    invoke-direct {p0}, Lorg/snmp4j/Snmp;->getMPv3()Lorg/snmp4j/mp/MPv3;

    move-result-object v3

    .line 1177
    .local v3, mpv3:Lorg/snmp4j/mp/MPv3;
    invoke-virtual {v3, p1}, Lorg/snmp4j/mp/MPv3;->removeEngineID(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    .line 1179
    .local v1, engineID:Lorg/snmp4j/smi/OctetString;
    if-eqz v1, :cond_14

    .line 1180
    invoke-virtual {p0}, Lorg/snmp4j/Snmp;->getUSM()Lorg/snmp4j/security/USM;

    move-result-object v6

    .line 1181
    .local v6, usm:Lorg/snmp4j/security/USM;
    if-eqz v6, :cond_14

    .line 1182
    invoke-virtual {v6, v1}, Lorg/snmp4j/security/USM;->removeEngineTime(Lorg/snmp4j/smi/OctetString;)V

    .line 1185
    .end local v6           #usm:Lorg/snmp4j/security/USM;
    :cond_14
    new-instance v4, Lorg/snmp4j/ScopedPDU;

    invoke-direct {v4}, Lorg/snmp4j/ScopedPDU;-><init>()V

    .line 1186
    .local v4, scopedPDU:Lorg/snmp4j/ScopedPDU;
    const/16 v8, -0x60

    invoke-virtual {v4, v8}, Lorg/snmp4j/ScopedPDU;->setType(I)V

    .line 1187
    new-instance v5, Lorg/snmp4j/UserTarget;

    invoke-direct {v5}, Lorg/snmp4j/UserTarget;-><init>()V

    .line 1188
    .local v5, target:Lorg/snmp4j/SecureTarget;
    invoke-virtual {v5, p2, p3}, Lorg/snmp4j/SecureTarget;->setTimeout(J)V

    .line 1189
    invoke-virtual {v5, p1}, Lorg/snmp4j/SecureTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 1190
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lorg/snmp4j/UserTarget;->setSecurityLevel(I)V

    .line 1192
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2f
    invoke-direct {p0, v4, v5, v8, v9}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;I)Lorg/snmp4j/event/ResponseEvent;

    .line 1193
    invoke-virtual {v3, p1}, Lorg/snmp4j/mp/MPv3;->getEngineID(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    .line 1194
    .local v0, authoritativeEngineID:Lorg/snmp4j/smi/OctetString;
    if-nez v0, :cond_39

    .line 1205
    .end local v0           #authoritativeEngineID:Lorg/snmp4j/smi/OctetString;
    :goto_38
    return-object v7

    .line 1199
    .restart local v0       #authoritativeEngineID:Lorg/snmp4j/smi/OctetString;
    :cond_39
    new-instance v8, Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v8}, Lorg/snmp4j/smi/OctetString;->getValue()[B
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_45} :catch_47

    move-result-object v7

    goto :goto_38

    .line 1201
    .end local v0           #authoritativeEngineID:Lorg/snmp4j/smi/OctetString;
    :catch_47
    move-exception v2

    .line 1202
    .local v2, ex:Ljava/io/IOException;
    sget-object v8, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "IO error while trying to discover authoritative engine ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    goto :goto_38
.end method

.method protected fireProcessPdu(Lorg/snmp4j/CommandResponderEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 1426
    iget-object v3, p0, Lorg/snmp4j/Snmp;->commandResponderListeners:Ljava/util/Vector;

    if-eqz v3, :cond_1c

    .line 1427
    iget-object v2, p0, Lorg/snmp4j/Snmp;->commandResponderListeners:Ljava/util/Vector;

    .line 1428
    .local v2, listeners:Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1429
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_1c

    .line 1430
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/CommandResponder;

    invoke-interface {v3, p1}, Lorg/snmp4j/CommandResponder;->processPdu(Lorg/snmp4j/CommandResponderEvent;)V

    .line 1433
    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->isProcessed()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1438
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/Vector;
    :cond_1c
    return-void

    .line 1429
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #listeners:Ljava/util/Vector;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public get(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;
    .registers 4
    .parameter "pdu"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    const/16 v0, -0x60

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 552
    invoke-virtual {p0, p1, p2}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    .registers 6
    .parameter "pdu"
    .parameter "target"
    .parameter "userHandle"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    const/16 v0, -0x60

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 579
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V

    .line 580
    return-void
.end method

.method public getBulk(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;
    .registers 4
    .parameter "pdu"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    const/16 v0, -0x5b

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 656
    invoke-virtual {p0, p1, p2}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v0

    return-object v0
.end method

.method public getBulk(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    .registers 6
    .parameter "pdu"
    .parameter "target"
    .parameter "userHandle"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    const/16 v0, -0x5b

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 683
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V

    .line 684
    return-void
.end method

.method public getLocalEngineID()[B
    .registers 2

    .prologue
    .line 1144
    invoke-direct {p0}, Lorg/snmp4j/Snmp;->getMPv3()Lorg/snmp4j/mp/MPv3;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/mp/MPv3;->getLocalEngineID()[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageDispatcher()Lorg/snmp4j/MessageDispatcher;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    return-object v0
.end method

.method public getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;
    .registers 3
    .parameter "messageProcessingModel"

    .prologue
    .line 1236
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;
    .registers 4
    .parameter "pdu"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    const/16 v0, -0x5f

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 604
    invoke-virtual {p0, p1, p2}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    .registers 6
    .parameter "pdu"
    .parameter "target"
    .parameter "userHandle"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    const/16 v0, -0x5f

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 631
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V

    .line 632
    return-void
.end method

.method public getNextRequestID()I
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0}, Lorg/snmp4j/MessageDispatcher;->getNextRequestID()I

    move-result v0

    return v0
.end method

.method public getReportHandler()Lorg/snmp4j/Snmp$ReportHandler;
    .registers 2

    .prologue
    .line 1458
    iget-object v0, p0, Lorg/snmp4j/Snmp;->reportHandler:Lorg/snmp4j/Snmp$ReportHandler;

    return-object v0
.end method

.method public getTimeoutModel()Lorg/snmp4j/TimeoutModel;
    .registers 2

    .prologue
    .line 1447
    iget-object v0, p0, Lorg/snmp4j/Snmp;->timeoutModel:Lorg/snmp4j/TimeoutModel;

    return-object v0
.end method

.method public getUSM()Lorg/snmp4j/security/USM;
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 1218
    invoke-virtual {p0, v1}, Lorg/snmp4j/Snmp;->getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/mp/MPv3;

    .line 1219
    .local v0, mp:Lorg/snmp4j/mp/MPv3;
    if-eqz v0, :cond_10

    .line 1220
    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3;->getSecurityModel(I)Lorg/snmp4j/security/SecurityModel;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/security/USM;

    .line 1222
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public inform(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;
    .registers 4
    .parameter "pdu"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    const/16 v0, -0x5a

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 708
    invoke-virtual {p0, p1, p2}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v0

    return-object v0
.end method

.method public inform(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    .registers 6
    .parameter "pdu"
    .parameter "target"
    .parameter "userHandle"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    const/16 v0, -0x5a

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 735
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V

    .line 736
    return-void
.end method

.method protected final initMessageDispatcher()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p0}, Lorg/snmp4j/MessageDispatcher;->addCommandResponder(Lorg/snmp4j/CommandResponder;)V

    .line 222
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    new-instance v1, Lorg/snmp4j/mp/MPv2c;

    invoke-direct {v1}, Lorg/snmp4j/mp/MPv2c;-><init>()V

    invoke-interface {v0, v1}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 223
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    new-instance v1, Lorg/snmp4j/mp/MPv1;

    invoke-direct {v1}, Lorg/snmp4j/mp/MPv1;-><init>()V

    invoke-interface {v0, v1}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 224
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    new-instance v1, Lorg/snmp4j/mp/MPv3;

    invoke-direct {v1}, Lorg/snmp4j/mp/MPv3;-><init>()V

    invoke-interface {v0, v1}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 225
    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/security/SecurityProtocols;->addDefaultProtocols()V

    .line 226
    return-void
.end method

.method public listen()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v2, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v2}, Lorg/snmp4j/MessageDispatcher;->getTransportMappings()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 463
    .local v0, it:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/TransportMapping;

    .line 465
    .local v1, tm:Lorg/snmp4j/TransportMapping;
    invoke-interface {v1}, Lorg/snmp4j/TransportMapping;->isListening()Z

    move-result v2

    if-nez v2, :cond_a

    .line 466
    invoke-interface {v1}, Lorg/snmp4j/TransportMapping;->listen()V

    goto :goto_a

    .line 469
    .end local v1           #tm:Lorg/snmp4j/TransportMapping;
    :cond_20
    return-void
.end method

.method public notify(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)V
    .registers 5
    .parameter "pdu"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    invoke-interface {p2}, Lorg/snmp4j/Target;->getVersion()I

    move-result v0

    if-nez v0, :cond_e

    .line 780
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Notifications PDUs cannot be used with SNMPv1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_e
    const/16 v0, -0x59

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 784
    invoke-virtual {p0, p1, p2}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    .line 785
    return-void
.end method

.method public processPdu(Lorg/snmp4j/CommandResponderEvent;)V
    .registers 11
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1247
    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getPduHandle()Lorg/snmp4j/mp/PduHandle;

    move-result-object v6

    .line 1248
    .local v6, handle:Lorg/snmp4j/mp/PduHandle;
    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getPDU()Lorg/snmp4j/PDU;

    move-result-object v4

    .line 1249
    .local v4, pdu:Lorg/snmp4j/PDU;
    invoke-virtual {v4}, Lorg/snmp4j/PDU;->getType()I

    move-result v0

    const/16 v1, -0x5e

    if-ne v0, v1, :cond_93

    .line 1250
    invoke-virtual {p1, v2}, Lorg/snmp4j/CommandResponderEvent;->setProcessed(Z)V

    .line 1252
    sget-object v0, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1253
    sget-object v0, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Looking up pending request with handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1255
    :cond_34
    iget-object v1, p0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 1256
    :try_start_37
    iget-object v0, p0, Lorg/snmp4j/Snmp;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/snmp4j/Snmp$PendingRequest;

    .line 1257
    .local v8, request:Lorg/snmp4j/Snmp$PendingRequest;
    if-eqz v8, :cond_44

    .line 1258
    invoke-virtual {v8}, Lorg/snmp4j/Snmp$PendingRequest;->responseReceived()V

    .line 1260
    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_7a

    .line 1261
    if-nez v8, :cond_7d

    .line 1262
    sget-object v0, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1263
    sget-object v0, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Received response that cannot be matched to any outstanding request, address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getPeerAddress()Lorg/snmp4j/smi/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", requestID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v4}, Lorg/snmp4j/PDU;->getRequestID()Lorg/snmp4j/smi/Integer32;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 1290
    .end local v8           #request:Lorg/snmp4j/Snmp$PendingRequest;
    :cond_79
    :goto_79
    return-void

    .line 1260
    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0

    .line 1270
    .restart local v8       #request:Lorg/snmp4j/Snmp$PendingRequest;
    :cond_7d
    iget-object v7, v8, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    .line 1271
    .local v7, l:Lorg/snmp4j/event/ResponseListener;
    if-eqz v7, :cond_79

    .line 1272
    new-instance v0, Lorg/snmp4j/event/ResponseEvent;

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getPeerAddress()Lorg/snmp4j/smi/Address;

    move-result-object v2

    iget-object v3, v8, Lorg/snmp4j/Snmp$PendingRequest;->pdu:Lorg/snmp4j/PDU;

    iget-object v5, v8, Lorg/snmp4j/Snmp$PendingRequest;->userObject:Ljava/lang/Object;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/event/ResponseEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/PDU;Lorg/snmp4j/PDU;Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Lorg/snmp4j/event/ResponseListener;->onResponse(Lorg/snmp4j/event/ResponseEvent;)V

    goto :goto_79

    .line 1280
    .end local v7           #l:Lorg/snmp4j/event/ResponseListener;
    .end local v8           #request:Lorg/snmp4j/Snmp$PendingRequest;
    :cond_93
    invoke-virtual {v4}, Lorg/snmp4j/PDU;->getType()I

    move-result v0

    const/16 v1, -0x58

    if-ne v0, v1, :cond_a4

    .line 1281
    invoke-virtual {p1, v2}, Lorg/snmp4j/CommandResponderEvent;->setProcessed(Z)V

    .line 1282
    iget-object v0, p0, Lorg/snmp4j/Snmp;->reportHandler:Lorg/snmp4j/Snmp$ReportHandler;

    invoke-interface {v0, v6, p1}, Lorg/snmp4j/Snmp$ReportHandler;->processReport(Lorg/snmp4j/mp/PduHandle;Lorg/snmp4j/CommandResponderEvent;)V

    goto :goto_79

    .line 1285
    :cond_a4
    sget-object v0, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 1286
    sget-object v0, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Fire process PDU event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1288
    :cond_c8
    invoke-virtual {p0, p1}, Lorg/snmp4j/Snmp;->fireProcessPdu(Lorg/snmp4j/CommandResponderEvent;)V

    goto :goto_79
.end method

.method public declared-synchronized removeCommandResponder(Lorg/snmp4j/CommandResponder;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 1392
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/Snmp;->commandResponderListeners:Ljava/util/Vector;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/snmp4j/Snmp;->commandResponderListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1394
    iget-object v1, p0, Lorg/snmp4j/Snmp;->commandResponderListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 1395
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1396
    iput-object v0, p0, Lorg/snmp4j/Snmp;->commandResponderListeners:Ljava/util/Vector;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 1398
    .end local v0           #v:Ljava/util/Vector;
    :cond_1a
    monitor-exit p0

    return-void

    .line 1392
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeNotificationListener(Lorg/snmp4j/smi/Address;)Z
    .registers 5
    .parameter "listenAddress"

    .prologue
    .line 443
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    if-eqz v0, :cond_2d

    .line 444
    sget-object v0, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 445
    sget-object v0, Lorg/snmp4j/Snmp;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Removing notification listener for address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->info(Ljava/lang/Object;)V

    .line 448
    :cond_25
    iget-object v0, p0, Lorg/snmp4j/Snmp;->notificationDispatcher:Lorg/snmp4j/Snmp$NotificationDispatcher;

    invoke-virtual {v0, p1}, Lorg/snmp4j/Snmp$NotificationDispatcher;->removeNotificationListener(Lorg/snmp4j/smi/Address;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2f

    move-result v0

    .line 451
    :goto_2b
    monitor-exit p0

    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2b

    .line 443
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeTransportMapping(Lorg/snmp4j/TransportMapping;)V
    .registers 3
    .parameter "transportMapping"

    .prologue
    .line 374
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->removeTransportMapping(Lorg/snmp4j/TransportMapping;)Lorg/snmp4j/TransportMapping;

    .line 375
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {p1, v0}, Lorg/snmp4j/TransportMapping;->removeTransportListener(Lorg/snmp4j/transport/TransportListener;)V

    .line 376
    return-void
.end method

.method public send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;
    .registers 4
    .parameter "pdu"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v0

    return-object v0
.end method

.method public send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;)Lorg/snmp4j/event/ResponseEvent;
    .registers 5
    .parameter "pdu"
    .parameter "target"
    .parameter "transport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;I)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v0

    return-object v0
.end method

.method public send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    .registers 11
    .parameter "pdu"
    .parameter "target"
    .parameter "userHandle"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 955
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V

    .line 956
    return-void
.end method

.method public send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    .registers 13
    .parameter "pdu"
    .parameter "target"
    .parameter "transport"
    .parameter "userHandle"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 962
    invoke-virtual {p1}, Lorg/snmp4j/PDU;->isConfirmedPdu()Z

    move-result v1

    if-nez v1, :cond_b

    .line 963
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/snmp4j/Snmp;->sendMessage(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;

    .line 972
    :goto_a
    return-void

    .line 966
    :cond_b
    iget-object v1, p0, Lorg/snmp4j/Snmp;->timer:Lorg/snmp4j/util/CommonTimer;

    if-nez v1, :cond_12

    .line 967
    invoke-direct {p0}, Lorg/snmp4j/Snmp;->createPendingTimer()V

    .line 969
    :cond_12
    new-instance v0, Lorg/snmp4j/Snmp$AsyncPendingRequest;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/snmp4j/Snmp$AsyncPendingRequest;-><init>(Lorg/snmp4j/Snmp;Lorg/snmp4j/event/ResponseListener;Ljava/lang/Object;Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;)V

    .line 971
    .local v0, request:Lorg/snmp4j/Snmp$PendingRequest;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/snmp4j/Snmp;->sendMessage(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;

    goto :goto_a
.end method

.method protected sendMessage(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;
    .registers 18
    .parameter "pdu"
    .parameter "target"
    .parameter "transport"
    .parameter "pduHandleCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1064
    const/4 v11, 0x0

    .line 1065
    .local v11, handle:Lorg/snmp4j/mp/PduHandle;
    instance-of v0, p2, Lorg/snmp4j/SecureTarget;

    if-eqz v0, :cond_2d

    move-object v12, p2

    .line 1066
    check-cast v12, Lorg/snmp4j/SecureTarget;

    .line 1067
    .local v12, secureTarget:Lorg/snmp4j/SecureTarget;
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-virtual {v12}, Lorg/snmp4j/SecureTarget;->getAddress()Lorg/snmp4j/smi/Address;

    move-result-object v2

    invoke-virtual {v12}, Lorg/snmp4j/SecureTarget;->getVersion()I

    move-result v3

    invoke-virtual {v12}, Lorg/snmp4j/SecureTarget;->getSecurityModel()I

    move-result v4

    invoke-virtual {v12}, Lorg/snmp4j/SecureTarget;->getSecurityName()Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v5

    invoke-virtual {v12}, Lorg/snmp4j/SecureTarget;->getSecurityLevel()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v1, p3

    move-object v7, p1

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v9}, Lorg/snmp4j/MessageDispatcher;->sendPdu(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;

    move-result-object v11

    .line 1092
    .end local v12           #secureTarget:Lorg/snmp4j/SecureTarget;
    :cond_2c
    :goto_2c
    return-object v11

    .line 1076
    :cond_2d
    instance-of v0, p2, Lorg/snmp4j/CommunityTarget;

    if-eqz v0, :cond_2c

    move-object v10, p2

    .line 1077
    check-cast v10, Lorg/snmp4j/CommunityTarget;

    .line 1078
    .local v10, communityTarget:Lorg/snmp4j/CommunityTarget;
    const/4 v4, 0x2

    .line 1079
    .local v4, securityModel:I
    invoke-virtual {v10}, Lorg/snmp4j/CommunityTarget;->getVersion()I

    move-result v0

    if-nez v0, :cond_3c

    .line 1080
    const/4 v4, 0x1

    .line 1082
    :cond_3c
    iget-object v0, p0, Lorg/snmp4j/Snmp;->messageDispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-virtual {v10}, Lorg/snmp4j/CommunityTarget;->getAddress()Lorg/snmp4j/smi/Address;

    move-result-object v2

    invoke-virtual {v10}, Lorg/snmp4j/CommunityTarget;->getVersion()I

    move-result v3

    invoke-virtual {v10}, Lorg/snmp4j/CommunityTarget;->getCommunity()Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v1, p3

    move-object v7, p1

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v9}, Lorg/snmp4j/MessageDispatcher;->sendPdu(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;

    move-result-object v11

    goto :goto_2c
.end method

.method public sendPDU(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;
    .registers 5
    .parameter "pdu"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    invoke-virtual {p0, p1, p2}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v0

    .line 1003
    .local v0, e:Lorg/snmp4j/event/ResponseEvent;
    if-eqz v0, :cond_b

    .line 1004
    invoke-virtual {v0}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v1

    .line 1007
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public sendPDU(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    .registers 5
    .parameter "pdu"
    .parameter "target"
    .parameter "userHandle"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1038
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V

    .line 1039
    return-void
.end method

.method public set(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;
    .registers 4
    .parameter "pdu"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    const/16 v0, -0x5d

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 809
    invoke-virtual {p0, p1, p2}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    .registers 6
    .parameter "pdu"
    .parameter "target"
    .parameter "userHandle"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    const/16 v0, -0x5d

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 836
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V

    .line 837
    return-void
.end method

.method public setLocalEngine([BII)V
    .registers 7
    .parameter "engineID"
    .parameter "engineBoots"
    .parameter "engineTime"

    .prologue
    .line 1131
    invoke-direct {p0}, Lorg/snmp4j/Snmp;->getMPv3()Lorg/snmp4j/mp/MPv3;

    move-result-object v0

    .line 1132
    .local v0, mpv3:Lorg/snmp4j/mp/MPv3;
    invoke-virtual {v0, p1}, Lorg/snmp4j/mp/MPv3;->setLocalEngineID([B)V

    .line 1133
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/snmp4j/mp/MPv3;->getSecurityModel(I)Lorg/snmp4j/security/SecurityModel;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/security/USM;

    .line 1134
    .local v1, usm:Lorg/snmp4j/security/USM;
    new-instance v2, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v2, p1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v1, v2, p2, p3}, Lorg/snmp4j/security/USM;->setLocalEngine(Lorg/snmp4j/smi/OctetString;II)V

    .line 1135
    return-void
.end method

.method public setReportHandler(Lorg/snmp4j/Snmp$ReportHandler;)V
    .registers 4
    .parameter "reportHandler"

    .prologue
    .line 1485
    if-nez p1, :cond_a

    .line 1486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReportHandler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1488
    :cond_a
    iput-object p1, p0, Lorg/snmp4j/Snmp;->reportHandler:Lorg/snmp4j/Snmp$ReportHandler;

    .line 1489
    return-void
.end method

.method public setTimeoutModel(Lorg/snmp4j/TimeoutModel;)V
    .registers 4
    .parameter "timeoutModel"

    .prologue
    .line 1471
    if-nez p1, :cond_a

    .line 1472
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Timeout model cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1474
    :cond_a
    iput-object p1, p0, Lorg/snmp4j/Snmp;->timeoutModel:Lorg/snmp4j/TimeoutModel;

    .line 1475
    return-void
.end method

.method public trap(Lorg/snmp4j/PDUv1;Lorg/snmp4j/Target;)V
    .registers 5
    .parameter "pdu"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    invoke-interface {p2}, Lorg/snmp4j/Target;->getVersion()I

    move-result v0

    if-eqz v0, :cond_e

    .line 755
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SNMPv1 trap PDU must be used with SNMPv1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_e
    const/16 v0, -0x5c

    invoke-virtual {p1, v0}, Lorg/snmp4j/PDUv1;->setType(I)V

    .line 759
    invoke-virtual {p0, p1, p2}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    .line 760
    return-void
.end method
