.class public Lorg/snmp4j/MessageDispatcherImpl;
.super Ljava/lang/Object;
.source "MessageDispatcherImpl.java"

# interfaces
.implements Lorg/snmp4j/MessageDispatcher;


# static fields
.field static class$org$snmp4j$MessageDispatcherImpl:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private transient authenticationFailureListeners:Ljava/util/Vector;

.field private checkOutgoingMsg:Z

.field private transient commandResponderListeners:Ljava/util/Vector;

.field private transient counterListeners:Ljava/util/Vector;

.field private mpm:Ljava/util/Vector;

.field private nextTransactionID:I

.field private transportMappings:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lorg/snmp4j/MessageDispatcherImpl;->class$org$snmp4j$MessageDispatcherImpl:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.MessageDispatcherImpl"

    invoke-static {v0}, Lorg/snmp4j/MessageDispatcherImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/MessageDispatcherImpl;->class$org$snmp4j$MessageDispatcherImpl:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/MessageDispatcherImpl;->class$org$snmp4j$MessageDispatcherImpl:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->mpm:Ljava/util/Vector;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->transportMappings:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7ffffffd

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->nextTransactionID:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->checkOutgoingMsg:Z

    .line 74
    return-void
.end method

.method private static checkListening4ConfirmedPDU(Lorg/snmp4j/PDU;Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;)V
    .registers 6
    .parameter "pdu"
    .parameter "target"
    .parameter "transport"

    .prologue
    .line 491
    if-eqz p2, :cond_3a

    invoke-interface {p2}, Lorg/snmp4j/TransportMapping;->isListening()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 492
    sget-object v0, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Sending confirmed PDU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " although transport mapping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not listening for a response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 496
    :cond_3a
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 57
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


# virtual methods
.method public declared-synchronized addAuthenticationFailureListener(Lorg/snmp4j/event/AuthenticationFailureListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 728
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->authenticationFailureListeners:Ljava/util/Vector;

    if-nez v1, :cond_18

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 730
    .local v0, v:Ljava/util/Vector;
    :goto_b
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 731
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 732
    iput-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->authenticationFailureListeners:Ljava/util/Vector;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    .line 734
    :cond_16
    monitor-exit p0

    return-void

    .line 728
    .end local v0           #v:Ljava/util/Vector;
    :cond_18
    :try_start_18
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->authenticationFailureListeners:Ljava/util/Vector;

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

.method public declared-synchronized addCommandResponder(Lorg/snmp4j/CommandResponder;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 596
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->commandResponderListeners:Ljava/util/Vector;

    if-nez v1, :cond_18

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 598
    .local v0, v:Ljava/util/Vector;
    :goto_b
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 599
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 600
    iput-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->commandResponderListeners:Ljava/util/Vector;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    .line 602
    :cond_16
    monitor-exit p0

    return-void

    .line 596
    .end local v0           #v:Ljava/util/Vector;
    :cond_18
    :try_start_18
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->commandResponderListeners:Ljava/util/Vector;

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

.method public declared-synchronized addCounterListener(Lorg/snmp4j/event/CounterListener;)V
    .registers 4
    .parameter "counterListener"

    .prologue
    .line 666
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->counterListeners:Ljava/util/Vector;

    if-nez v1, :cond_18

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 668
    .local v0, v:Ljava/util/Vector;
    :goto_b
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 669
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 670
    iput-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->counterListeners:Ljava/util/Vector;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    .line 672
    :cond_16
    monitor-exit p0

    return-void

    .line 666
    .end local v0           #v:Ljava/util/Vector;
    :cond_18
    :try_start_18
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->counterListeners:Ljava/util/Vector;

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

.method public declared-synchronized addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 85
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->mpm:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/snmp4j/mp/MessageProcessingModel;->getID()I

    move-result v1

    if-gt v0, v1, :cond_17

    .line 86
    iget-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->mpm:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    goto :goto_1

    .line 85
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :cond_17
    :try_start_17
    iget-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->mpm:Ljava/util/Vector;

    invoke-interface {p1}, Lorg/snmp4j/mp/MessageProcessingModel;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 89
    iget-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->mpm:Ljava/util/Vector;

    invoke-interface {p1}, Lorg/snmp4j/mp/MessageProcessingModel;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_14

    .line 91
    :cond_2c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addTransportMapping(Lorg/snmp4j/TransportMapping;)V
    .registers 5
    .parameter "transport"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->transportMappings:Ljava/util/Map;

    invoke-interface {p1}, Lorg/snmp4j/TransportMapping;->getSupportedAddressClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 116
    .local v0, transports:Ljava/util/List;
    if-nez v0, :cond_1d

    .line 117
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #transports:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 118
    .restart local v0       #transports:Ljava/util/List;
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->transportMappings:Ljava/util/Map;

    invoke-interface {p1}, Lorg/snmp4j/TransportMapping;->getSupportedAddressClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 121
    monitor-exit p0

    return-void

    .line 114
    .end local v0           #transports:Ljava/util/List;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected checkOutgoingMsg(Lorg/snmp4j/smi/Address;ILorg/snmp4j/PDU;)V
    .registers 7
    .parameter "transportAddress"
    .parameter "messageProcessingModel"
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/MessageException;
        }
    .end annotation

    .prologue
    .line 513
    iget-boolean v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->checkOutgoingMsg:Z

    if-eqz v0, :cond_33

    .line 514
    if-nez p2, :cond_33

    .line 515
    invoke-virtual {p3}, Lorg/snmp4j/PDU;->getType()I

    move-result v0

    const/16 v1, -0x5b

    if-ne v0, v1, :cond_33

    .line 516
    sget-object v0, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Converting GETBULK PDU to GETNEXT for SNMPv1 target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 518
    const/16 v0, -0x5f

    invoke-virtual {p3, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 519
    instance-of v0, p3, Lorg/snmp4j/PDUv1;

    if-nez v0, :cond_33

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/snmp4j/PDU;->setMaxRepetitions(I)V

    .line 525
    :cond_33
    return-void
.end method

.method protected createPduHandle()Lorg/snmp4j/mp/PduHandle;
    .registers 3

    .prologue
    .line 168
    new-instance v0, Lorg/snmp4j/mp/PduHandle;

    invoke-virtual {p0}, Lorg/snmp4j/MessageDispatcherImpl;->getNextRequestID()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/snmp4j/mp/PduHandle;-><init>(I)V

    return-object v0
.end method

.method protected dispatchMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/mp/MessageProcessingModel;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 33
    .parameter "sourceTransport"
    .parameter "mp"
    .parameter "incomingAddress"
    .parameter "wholeMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v10, Lorg/snmp4j/MutablePDU;

    invoke-direct {v10}, Lorg/snmp4j/MutablePDU;-><init>()V

    .line 245
    .local v10, pdu:Lorg/snmp4j/MutablePDU;
    new-instance v6, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v6}, Lorg/snmp4j/smi/Integer32;-><init>()V

    .line 246
    .local v6, messageProcessingModel:Lorg/snmp4j/smi/Integer32;
    new-instance v7, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v7}, Lorg/snmp4j/smi/Integer32;-><init>()V

    .line 247
    .local v7, securityModel:Lorg/snmp4j/smi/Integer32;
    new-instance v8, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v8}, Lorg/snmp4j/smi/OctetString;-><init>()V

    .line 248
    .local v8, securityName:Lorg/snmp4j/smi/OctetString;
    new-instance v9, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v9}, Lorg/snmp4j/smi/Integer32;-><init>()V

    .line 250
    .local v9, securityLevel:Lorg/snmp4j/smi/Integer32;
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/MessageDispatcherImpl;->createPduHandle()Lorg/snmp4j/mp/PduHandle;

    move-result-object v11

    .line 252
    .local v11, handle:Lorg/snmp4j/mp/PduHandle;
    new-instance v12, Lorg/snmp4j/smi/Integer32;

    invoke-interface/range {p1 .. p1}, Lorg/snmp4j/TransportMapping;->getMaxInboundMessageSize()I

    move-result v2

    invoke-direct {v12, v2}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    .line 254
    .local v12, maxSizeRespPDU:Lorg/snmp4j/smi/Integer32;
    new-instance v13, Lorg/snmp4j/mp/StatusInformation;

    invoke-direct {v13}, Lorg/snmp4j/mp/StatusInformation;-><init>()V

    .line 255
    .local v13, statusInfo:Lorg/snmp4j/mp/StatusInformation;
    new-instance v14, Lorg/snmp4j/mp/MutableStateReference;

    invoke-direct {v14}, Lorg/snmp4j/mp/MutableStateReference;-><init>()V

    .line 258
    .local v14, mutableStateReference:Lorg/snmp4j/mp/MutableStateReference;
    new-instance v27, Lorg/snmp4j/mp/StateReference;

    invoke-direct/range {v27 .. v27}, Lorg/snmp4j/mp/StateReference;-><init>()V

    .line 259
    .local v27, stateReference:Lorg/snmp4j/mp/StateReference;
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/StateReference;->setTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 260
    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/StateReference;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 261
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lorg/snmp4j/mp/MutableStateReference;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 263
    invoke-interface/range {v2 .. v14}, Lorg/snmp4j/mp/MessageProcessingModel;->prepareDataElements(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/MutablePDU;Lorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/mp/StatusInformation;Lorg/snmp4j/mp/MutableStateReference;)I

    move-result v20

    .line 268
    .local v20, status:I
    invoke-virtual {v14}, Lorg/snmp4j/mp/MutableStateReference;->getStateReference()Lorg/snmp4j/mp/StateReference;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 270
    invoke-virtual {v14}, Lorg/snmp4j/mp/MutableStateReference;->getStateReference()Lorg/snmp4j/mp/StateReference;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/snmp4j/mp/StateReference;->setTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 273
    :cond_63
    if-nez v20, :cond_94

    .line 275
    new-instance v15, Lorg/snmp4j/CommandResponderEvent;

    invoke-virtual {v6}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v19

    invoke-virtual {v7}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v20

    .end local v20           #status:I
    invoke-virtual {v8}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v21

    invoke-virtual {v9}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v22

    invoke-virtual {v10}, Lorg/snmp4j/MutablePDU;->getPdu()Lorg/snmp4j/PDU;

    move-result-object v24

    invoke-virtual {v12}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v25

    invoke-virtual {v14}, Lorg/snmp4j/mp/MutableStateReference;->getStateReference()Lorg/snmp4j/mp/StateReference;

    move-result-object v26

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p3

    move-object/from16 v23, v11

    invoke-direct/range {v15 .. v26}, Lorg/snmp4j/CommandResponderEvent;-><init>(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/mp/PduHandle;Lorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;)V

    .line 287
    .local v15, e:Lorg/snmp4j/CommandResponderEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/snmp4j/MessageDispatcherImpl;->fireProcessPdu(Lorg/snmp4j/CommandResponderEvent;)V

    .line 304
    .end local v15           #e:Lorg/snmp4j/CommandResponderEvent;
    :goto_93
    return-void

    .line 290
    .restart local v20       #status:I
    :cond_94
    sparse-switch v20, :sswitch_data_b6

    .line 302
    :goto_97
    sget-object v2, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-virtual {v13}, Lorg/snmp4j/mp/StatusInformation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_93

    .line 294
    :sswitch_a1
    new-instance v16, Lorg/snmp4j/event/AuthenticationFailureEvent;

    move-object/from16 v17, p0

    move-object/from16 v18, p3

    move-object/from16 v19, p1

    move-object/from16 v21, p4

    invoke-direct/range {v16 .. v21}, Lorg/snmp4j/event/AuthenticationFailureEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;ILorg/snmp4j/asn1/BERInputStream;)V

    .line 298
    .local v16, event:Lorg/snmp4j/event/AuthenticationFailureEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/snmp4j/MessageDispatcherImpl;->fireAuthenticationFailure(Lorg/snmp4j/event/AuthenticationFailureEvent;)V

    goto :goto_97

    .line 290
    :sswitch_data_b6
    .sparse-switch
        -0x586 -> :sswitch_a1
        -0x584 -> :sswitch_a1
        -0x57a -> :sswitch_a1
    .end sparse-switch
.end method

.method protected fireAuthenticationFailure(Lorg/snmp4j/event/AuthenticationFailureEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 758
    iget-object v3, p0, Lorg/snmp4j/MessageDispatcherImpl;->authenticationFailureListeners:Ljava/util/Vector;

    if-eqz v3, :cond_19

    .line 759
    iget-object v2, p0, Lorg/snmp4j/MessageDispatcherImpl;->authenticationFailureListeners:Ljava/util/Vector;

    .line 760
    .local v2, listeners:Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 761
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 762
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/event/AuthenticationFailureListener;

    invoke-interface {v3, p1}, Lorg/snmp4j/event/AuthenticationFailureListener;->authenticationFailure(Lorg/snmp4j/event/AuthenticationFailureEvent;)V

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 766
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/Vector;
    :cond_19
    return-void
.end method

.method protected fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 681
    iget-object v3, p0, Lorg/snmp4j/MessageDispatcherImpl;->counterListeners:Ljava/util/Vector;

    if-eqz v3, :cond_19

    .line 682
    iget-object v2, p0, Lorg/snmp4j/MessageDispatcherImpl;->counterListeners:Ljava/util/Vector;

    .line 683
    .local v2, listeners:Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 684
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 685
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/event/CounterListener;

    invoke-interface {v3, p1}, Lorg/snmp4j/event/CounterListener;->incrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 688
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/Vector;
    :cond_19
    return-void
.end method

.method protected fireProcessPdu(Lorg/snmp4j/CommandResponderEvent;)V
    .registers 6
    .parameter "e"

    .prologue
    .line 612
    iget-object v3, p0, Lorg/snmp4j/MessageDispatcherImpl;->commandResponderListeners:Ljava/util/Vector;

    if-eqz v3, :cond_1c

    .line 613
    iget-object v2, p0, Lorg/snmp4j/MessageDispatcherImpl;->commandResponderListeners:Ljava/util/Vector;

    .line 614
    .local v2, listeners:Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 615
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_1c

    .line 616
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/CommandResponder;

    invoke-interface {v3, p1}, Lorg/snmp4j/CommandResponder;->processPdu(Lorg/snmp4j/CommandResponderEvent;)V

    .line 619
    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->isProcessed()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 624
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/Vector;
    :cond_1c
    return-void

    .line 615
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #listeners:Ljava/util/Vector;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;
    .registers 4
    .parameter "messageProcessingModel"

    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->mpm:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/mp/MessageProcessingModel;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    .line 642
    :goto_8
    return-object v1

    .line 641
    :catch_9
    move-exception v0

    .line 642
    .local v0, iobex:Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public declared-synchronized getNextRequestID()I
    .registers 3

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->nextTransactionID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->nextTransactionID:I

    .line 160
    .local v0, nextID:I
    if-gtz v0, :cond_d

    .line 161
    const/4 v0, 0x1

    .line 162
    const/4 v1, 0x2

    iput v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->nextTransactionID:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 164
    :cond_d
    monitor-exit p0

    return v0

    .line 159
    .end local v0           #nextID:I
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTransport(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/TransportMapping;
    .registers 6
    .parameter "destAddress"

    .prologue
    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 217
    .local v0, addressClass:Ljava/lang/Class;
    iget-object v3, p0, Lorg/snmp4j/MessageDispatcherImpl;->transportMappings:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 218
    .local v1, l:Ljava/util/List;
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1c

    .line 219
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/TransportMapping;

    .line 222
    :goto_1b
    return-object v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public getTransportMappings()Ljava/util/Collection;
    .registers 6

    .prologue
    .line 148
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/snmp4j/MessageDispatcherImpl;->transportMappings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .local v1, l:Ljava/util/ArrayList;
    iget-object v4, p0, Lorg/snmp4j/MessageDispatcherImpl;->transportMappings:Ljava/util/Map;

    monitor-enter v4

    .line 150
    :try_start_e
    iget-object v3, p0, Lorg/snmp4j/MessageDispatcherImpl;->transportMappings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 152
    .local v2, tm:Ljava/util/List;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_18

    .line 154
    .end local v0           #it:Ljava/util/Iterator;
    .end local v2           #tm:Ljava/util/List;
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v3

    .restart local v0       #it:Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 155
    return-object v1
.end method

.method public isCheckOutgoingMsg()Z
    .registers 2

    .prologue
    .line 716
    iget-boolean v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->checkOutgoingMsg:Z

    return v0
.end method

.method public processMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;Ljava/nio/ByteBuffer;)V
    .registers 5
    .parameter "sourceTransport"
    .parameter "incomingAddress"
    .parameter "wholeMessage"

    .prologue
    .line 309
    new-instance v0, Lorg/snmp4j/asn1/BERInputStream;

    invoke-direct {v0, p3}, Lorg/snmp4j/asn1/BERInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/snmp4j/MessageDispatcherImpl;->processMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;)V

    .line 311
    return-void
.end method

.method public processMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 15
    .parameter "sourceTransport"
    .parameter "incomingAddress"
    .parameter "wholeMessage"

    .prologue
    .line 316
    new-instance v8, Lorg/snmp4j/event/CounterEvent;

    sget-object v9, Lorg/snmp4j/mp/SnmpConstants;->snmpInPkts:Lorg/snmp4j/smi/OID;

    invoke-direct {v8, p0, v9}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    invoke-virtual {p0, v8}, Lorg/snmp4j/MessageDispatcherImpl;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 317
    invoke-virtual {p3}, Lorg/snmp4j/asn1/BERInputStream;->markSupported()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 318
    const-string v5, "Message stream must support marks"

    .line 319
    .local v5, txt:Ljava/lang/String;
    sget-object v8, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8, v5}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 320
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 323
    .end local v5           #txt:Ljava/lang/String;
    :cond_1d
    const/16 v8, 0x10

    :try_start_1f
    invoke-virtual {p3, v8}, Lorg/snmp4j/asn1/BERInputStream;->mark(I)V

    .line 324
    new-instance v6, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v6}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 327
    .local v6, type:Lorg/snmp4j/asn1/BER$MutableByte;
    const/4 v8, 0x0

    invoke-static {p3, v6, v8}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;Z)I

    .line 328
    invoke-virtual {v6}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v8

    const/16 v9, 0x30

    if-eq v8, v9, :cond_44

    .line 329
    sget-object v8, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v9, "ASN.1 parse error (message is not a sequence)"

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 330
    new-instance v0, Lorg/snmp4j/event/CounterEvent;

    sget-object v8, Lorg/snmp4j/mp/SnmpConstants;->snmpInASNParseErrs:Lorg/snmp4j/smi/OID;

    invoke-direct {v0, p0, v8}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 332
    .local v0, event:Lorg/snmp4j/event/CounterEvent;
    invoke-virtual {p0, v0}, Lorg/snmp4j/MessageDispatcherImpl;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 334
    .end local v0           #event:Lorg/snmp4j/event/CounterEvent;
    :cond_44
    new-instance v7, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v7}, Lorg/snmp4j/smi/Integer32;-><init>()V

    .line 335
    .local v7, version:Lorg/snmp4j/smi/Integer32;
    invoke-virtual {v7, p3}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 336
    invoke-virtual {v7}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/snmp4j/MessageDispatcherImpl;->getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;

    move-result-object v3

    .line 337
    .local v3, mp:Lorg/snmp4j/mp/MessageProcessingModel;
    if-nez v3, :cond_7f

    .line 338
    sget-object v8, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "SNMP version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " is not supported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 339
    new-instance v0, Lorg/snmp4j/event/CounterEvent;

    sget-object v8, Lorg/snmp4j/mp/SnmpConstants;->snmpInBadVersions:Lorg/snmp4j/smi/OID;

    invoke-direct {v0, p0, v8}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 341
    .restart local v0       #event:Lorg/snmp4j/event/CounterEvent;
    invoke-virtual {p0, v0}, Lorg/snmp4j/MessageDispatcherImpl;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 371
    .end local v0           #event:Lorg/snmp4j/event/CounterEvent;
    .end local v3           #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    .end local v6           #type:Lorg/snmp4j/asn1/BER$MutableByte;
    .end local v7           #version:Lorg/snmp4j/smi/Integer32;
    :cond_7e
    :goto_7e
    return-void

    .line 345
    .restart local v3       #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    .restart local v6       #type:Lorg/snmp4j/asn1/BER$MutableByte;
    .restart local v7       #version:Lorg/snmp4j/smi/Integer32;
    :cond_7f
    invoke-virtual {p3}, Lorg/snmp4j/asn1/BERInputStream;->reset()V

    .line 347
    invoke-virtual {p0, p1, v3, p2, p3}, Lorg/snmp4j/MessageDispatcherImpl;->dispatchMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/mp/MessageProcessingModel;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_85} :catch_86
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_85} :catch_97
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_85} :catch_b4

    goto :goto_7e

    .line 350
    .end local v3           #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    .end local v6           #type:Lorg/snmp4j/asn1/BER$MutableByte;
    .end local v7           #version:Lorg/snmp4j/smi/Integer32;
    :catch_86
    move-exception v2

    .line 351
    .local v2, iox:Ljava/io/IOException;
    sget-object v8, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8, v2}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 352
    new-instance v0, Lorg/snmp4j/event/CounterEvent;

    sget-object v8, Lorg/snmp4j/mp/SnmpConstants;->snmpInvalidMsgs:Lorg/snmp4j/smi/OID;

    invoke-direct {v0, p0, v8}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 354
    .restart local v0       #event:Lorg/snmp4j/event/CounterEvent;
    invoke-virtual {p0, v0}, Lorg/snmp4j/MessageDispatcherImpl;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    goto :goto_7e

    .line 356
    .end local v0           #event:Lorg/snmp4j/event/CounterEvent;
    .end local v2           #iox:Ljava/io/IOException;
    :catch_97
    move-exception v1

    .line 357
    .local v1, ex:Ljava/lang/Exception;
    sget-object v8, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8, v1}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 358
    sget-object v8, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 359
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    :cond_a8
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isFowardRuntimeExceptions()Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 362
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 365
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_b4
    move-exception v4

    .line 366
    .local v4, oex:Ljava/lang/OutOfMemoryError;
    sget-object v8, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8, v4}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 367
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isFowardRuntimeExceptions()Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 368
    throw v4
.end method

.method public releaseStateReference(ILorg/snmp4j/mp/PduHandle;)V
    .registers 7
    .parameter "messageProcessingModel"
    .parameter "pduHandle"

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lorg/snmp4j/MessageDispatcherImpl;->getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;

    move-result-object v0

    .line 580
    .local v0, mp:Lorg/snmp4j/mp/MessageProcessingModel;
    if-nez v0, :cond_1f

    .line 581
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported message processing model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_1f
    invoke-interface {v0, p2}, Lorg/snmp4j/mp/MessageProcessingModel;->releaseStateReference(Lorg/snmp4j/mp/PduHandle;)V

    .line 585
    return-void
.end method

.method public declared-synchronized removeAuthenticationFailureListener(Lorg/snmp4j/event/AuthenticationFailureListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 743
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->authenticationFailureListeners:Ljava/util/Vector;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->authenticationFailureListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 745
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->authenticationFailureListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 746
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 747
    iput-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->authenticationFailureListeners:Ljava/util/Vector;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 749
    .end local v0           #v:Ljava/util/Vector;
    :cond_1a
    monitor-exit p0

    return-void

    .line 743
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeCommandResponder(Lorg/snmp4j/CommandResponder;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 588
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->commandResponderListeners:Ljava/util/Vector;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->commandResponderListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 589
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->commandResponderListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 590
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 591
    iput-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->commandResponderListeners:Ljava/util/Vector;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 593
    .end local v0           #v:Ljava/util/Vector;
    :cond_1a
    monitor-exit p0

    return-void

    .line 588
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeCounterListener(Lorg/snmp4j/event/CounterListener;)V
    .registers 4
    .parameter "counterListener"

    .prologue
    .line 652
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->counterListeners:Ljava/util/Vector;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->counterListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 653
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->counterListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 654
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 655
    iput-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->counterListeners:Ljava/util/Vector;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 657
    .end local v0           #v:Ljava/util/Vector;
    :cond_1a
    monitor-exit p0

    return-void

    .line 652
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V
    .registers 5
    .parameter "model"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/MessageDispatcherImpl;->mpm:Ljava/util/Vector;

    invoke-interface {p1}, Lorg/snmp4j/mp/MessageProcessingModel;->getID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeTransportMapping(Lorg/snmp4j/TransportMapping;)Lorg/snmp4j/TransportMapping;
    .registers 5
    .parameter "transport"

    .prologue
    .line 132
    iget-object v1, p0, Lorg/snmp4j/MessageDispatcherImpl;->transportMappings:Ljava/util/Map;

    invoke-interface {p1}, Lorg/snmp4j/TransportMapping;->getSupportedAddressClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    .local v0, tm:Ljava/util/List;
    if-eqz v0, :cond_15

    .line 135
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 139
    .end local p1
    :goto_14
    return-object p1

    .restart local p1
    :cond_15
    const/4 p1, 0x0

    goto :goto_14
.end method

.method public returnResponsePdu(II[BILorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/mp/StatusInformation;)I
    .registers 25
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "maxSizeResponseScopedPDU"
    .parameter "stateReference"
    .parameter "statusInformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/MessageException;
        }
    .end annotation

    .prologue
    .line 538
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lorg/snmp4j/MessageDispatcherImpl;->getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;

    move-result-object v1

    .line 540
    .local v1, mp:Lorg/snmp4j/mp/MessageProcessingModel;
    if-nez v1, :cond_3d

    .line 541
    new-instance v2, Lorg/snmp4j/MessageException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported message processing model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_21
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_21} :catch_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_74

    .line 568
    .end local v1           #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    :catch_21
    move-exception v12

    .line 569
    .local v12, aex:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lorg/snmp4j/MessageException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported message processing model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 544
    .end local v12           #aex:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1       #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    :cond_3d
    :try_start_3d
    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/mp/StateReference;->getTransportMapping()Lorg/snmp4j/TransportMapping;

    move-result-object v15

    .line 545
    .local v15, transport:Lorg/snmp4j/TransportMapping;
    if-nez v15, :cond_4d

    .line 546
    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/mp/StateReference;->getAddress()Lorg/snmp4j/smi/Address;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/snmp4j/MessageDispatcherImpl;->getTransport(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/TransportMapping;

    move-result-object v15

    .line 548
    :cond_4d
    if-nez v15, :cond_7f

    .line 549
    new-instance v2, Lorg/snmp4j/MessageException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported address class (transport mapping): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/mp/StateReference;->getAddress()Lorg/snmp4j/smi/Address;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_74
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3d .. :try_end_74} :catch_21
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_74} :catch_74

    .line 572
    .end local v1           #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    .end local v15           #transport:Lorg/snmp4j/TransportMapping;
    :catch_74
    move-exception v13

    .line 573
    .local v13, iox:Ljava/io/IOException;
    new-instance v2, Lorg/snmp4j/MessageException;

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 552
    .end local v13           #iox:Ljava/io/IOException;
    .restart local v1       #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    .restart local v15       #transport:Lorg/snmp4j/TransportMapping;
    :cond_7f
    :try_start_7f
    new-instance v11, Lorg/snmp4j/asn1/BEROutputStream;

    invoke-direct {v11}, Lorg/snmp4j/asn1/BEROutputStream;-><init>()V

    .line 553
    .local v11, outgoingMessage:Lorg/snmp4j/asn1/BEROutputStream;
    invoke-interface {v15}, Lorg/snmp4j/TransportMapping;->getMaxInboundMessageSize()I

    move-result v3

    move/from16 v2, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v11}, Lorg/snmp4j/mp/MessageProcessingModel;->prepareResponseMessage(III[BILorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/mp/StatusInformation;Lorg/snmp4j/asn1/BEROutputStream;)I

    move-result v14

    .line 561
    .local v14, status:I
    if-nez v14, :cond_af

    .line 562
    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/mp/StateReference;->getAddress()Lorg/snmp4j/smi/Address;

    move-result-object v2

    invoke-virtual {v11}, Lorg/snmp4j/asn1/BEROutputStream;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2, v3}, Lorg/snmp4j/MessageDispatcherImpl;->sendMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;[B)V
    :try_end_af
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7f .. :try_end_af} :catch_21
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_af} :catch_74

    .line 566
    :cond_af
    return v14
.end method

.method protected sendMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;[B)V
    .registers 7
    .parameter "transport"
    .parameter "destAddress"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    instance-of v1, p2, Lorg/snmp4j/smi/GenericAddress;

    if-eqz v1, :cond_a

    .line 192
    check-cast p2, Lorg/snmp4j/smi/GenericAddress;

    .end local p2
    invoke-virtual {p2}, Lorg/snmp4j/smi/GenericAddress;->getAddress()Lorg/snmp4j/smi/Address;

    move-result-object p2

    .line 194
    .restart local p2
    :cond_a
    if-eqz p1, :cond_10

    .line 195
    invoke-interface {p1, p2, p3}, Lorg/snmp4j/TransportMapping;->sendMessage(Lorg/snmp4j/smi/Address;[B)V

    .line 203
    return-void

    .line 198
    :cond_10
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No transport mapping for address class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, txt:Ljava/lang/String;
    sget-object v1, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v1, v0}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 201
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendPdu(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;Z)Lorg/snmp4j/mp/PduHandle;
    .registers 19
    .parameter "transportMapping"
    .parameter "transportAddress"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "expectResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/MessageException;
        }
    .end annotation

    .prologue
    .line 774
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lorg/snmp4j/MessageDispatcherImpl;->sendPdu(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;

    move-result-object v0

    return-object v0
.end method

.method public sendPdu(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;
    .registers 32
    .parameter "transport"
    .parameter "transportAddress"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "expectResponse"
    .parameter "pduHandleCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/MessageException;
        }
    .end annotation

    .prologue
    .line 397
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/snmp4j/MessageDispatcherImpl;->getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;

    move-result-object v4

    .line 399
    .local v4, mp:Lorg/snmp4j/mp/MessageProcessingModel;
    if-nez v4, :cond_41

    .line 400
    new-instance v5, Lorg/snmp4j/MessageException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unsupported message processing model: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_25} :catch_25
    .catch Lorg/snmp4j/MessageException; {:try_start_0 .. :try_end_25} :catch_76
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_b4

    .line 471
    .end local v4           #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    :catch_25
    move-exception v16

    .line 472
    .local v16, iobex:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lorg/snmp4j/MessageException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unsupported message processing model: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 403
    .end local v16           #iobex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    :cond_41
    :try_start_41
    move/from16 v0, p3

    invoke-interface {v4, v0}, Lorg/snmp4j/mp/MessageProcessingModel;->isProtocolVersionSupported(I)Z

    move-result v5

    if-nez v5, :cond_83

    .line 404
    new-instance v5, Lorg/snmp4j/MessageException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "SNMP version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " is not supported "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "by message processing model "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_76
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_76} :catch_25
    .catch Lorg/snmp4j/MessageException; {:try_start_41 .. :try_end_76} :catch_76
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_76} :catch_b4

    .line 475
    .end local v4           #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    :catch_76
    move-exception v19

    .line 476
    .local v19, mex:Lorg/snmp4j/MessageException;
    sget-object v5, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 477
    invoke-virtual/range {v19 .. v19}, Lorg/snmp4j/MessageException;->printStackTrace()V

    .line 479
    :cond_82
    throw v19

    .line 409
    .end local v19           #mex:Lorg/snmp4j/MessageException;
    .restart local v4       #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    :cond_83
    if-nez p1, :cond_8d

    .line 410
    :try_start_85
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/snmp4j/MessageDispatcherImpl;->getTransport(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/TransportMapping;

    move-result-object p1

    .line 412
    :cond_8d
    if-nez p1, :cond_ca

    .line 413
    new-instance v5, Lorg/snmp4j/transport/UnsupportedAddressClassException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unsupported address class (transport mapping): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/snmp4j/transport/UnsupportedAddressClassException;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    throw v5
    :try_end_b4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_85 .. :try_end_b4} :catch_25
    .catch Lorg/snmp4j/MessageException; {:try_start_85 .. :try_end_b4} :catch_76
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_b4} :catch_b4

    .line 481
    .end local v4           #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    :catch_b4
    move-exception v17

    .line 482
    .local v17, iox:Ljava/io/IOException;
    sget-object v5, Lorg/snmp4j/MessageDispatcherImpl;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 483
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    .line 485
    :cond_c0
    new-instance v5, Lorg/snmp4j/MessageException;

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 418
    .end local v17           #iox:Ljava/io/IOException;
    .restart local v4       #mp:Lorg/snmp4j/mp/MessageProcessingModel;
    :cond_ca
    :try_start_ca
    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/PDU;->isConfirmedPdu()Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 419
    move-object/from16 v0, p7

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/snmp4j/MessageDispatcherImpl;->checkListening4ConfirmedPDU(Lorg/snmp4j/PDU;Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;)V

    .line 423
    :cond_d9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lorg/snmp4j/MessageDispatcherImpl;->checkOutgoingMsg(Lorg/snmp4j/smi/Address;ILorg/snmp4j/PDU;)V

    .line 428
    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/PDU;->getRequestID()Lorg/snmp4j/smi/Integer32;

    move-result-object v20

    .line 429
    .local v20, reqID:Lorg/snmp4j/smi/Integer32;
    if-eqz v20, :cond_f8

    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v5

    if-nez v5, :cond_149

    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/PDU;->getType()I

    move-result v5

    const/16 v6, -0x5e

    if-eq v5, v6, :cond_149

    .line 431
    :cond_f8
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/MessageDispatcherImpl;->createPduHandle()Lorg/snmp4j/mp/PduHandle;

    move-result-object v13

    .line 438
    .local v13, pduHandle:Lorg/snmp4j/mp/PduHandle;
    :goto_fc
    new-instance v5, Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v13}, Lorg/snmp4j/mp/PduHandle;->getTransactionID()I

    move-result v6

    invoke-direct {v5, v6}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Lorg/snmp4j/PDU;->setRequestID(Lorg/snmp4j/smi/Integer32;)V

    .line 441
    new-instance v14, Lorg/snmp4j/smi/GenericAddress;

    invoke-direct {v14}, Lorg/snmp4j/smi/GenericAddress;-><init>()V

    .line 443
    .local v14, destAddress:Lorg/snmp4j/smi/GenericAddress;
    new-instance v15, Lorg/snmp4j/asn1/BEROutputStream;

    invoke-direct {v15}, Lorg/snmp4j/asn1/BEROutputStream;-><init>()V

    .line 444
    .local v15, outgoingMessage:Lorg/snmp4j/asn1/BEROutputStream;
    invoke-interface/range {p1 .. p1}, Lorg/snmp4j/TransportMapping;->getMaxInboundMessageSize()I

    move-result v6

    move-object/from16 v5, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-interface/range {v4 .. v15}, Lorg/snmp4j/mp/MessageProcessingModel;->prepareOutgoingMessage(Lorg/snmp4j/smi/Address;III[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BEROutputStream;)I

    move-result v21

    .line 456
    .local v21, status:I
    if-nez v21, :cond_157

    .line 458
    if-eqz p9, :cond_135

    .line 459
    move-object/from16 v0, p9

    move-object/from16 v1, p7

    invoke-interface {v0, v13, v1}, Lorg/snmp4j/mp/PduHandleCallback;->pduHandleAssigned(Lorg/snmp4j/mp/PduHandle;Ljava/lang/Object;)V

    .line 461
    :cond_135
    invoke-virtual {v15}, Lorg/snmp4j/asn1/BEROutputStream;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v18

    .line 462
    .local v18, messageBytes:[B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/snmp4j/MessageDispatcherImpl;->sendMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;[B)V

    .line 469
    return-object v13

    .line 434
    .end local v13           #pduHandle:Lorg/snmp4j/mp/PduHandle;
    .end local v14           #destAddress:Lorg/snmp4j/smi/GenericAddress;
    .end local v15           #outgoingMessage:Lorg/snmp4j/asn1/BEROutputStream;
    .end local v18           #messageBytes:[B
    .end local v21           #status:I
    :cond_149
    new-instance v13, Lorg/snmp4j/mp/PduHandle;

    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/PDU;->getRequestID()Lorg/snmp4j/smi/Integer32;

    move-result-object v5

    invoke-virtual {v5}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v5

    invoke-direct {v13, v5}, Lorg/snmp4j/mp/PduHandle;-><init>(I)V

    .restart local v13       #pduHandle:Lorg/snmp4j/mp/PduHandle;
    goto :goto_fc

    .line 465
    .restart local v14       #destAddress:Lorg/snmp4j/smi/GenericAddress;
    .restart local v15       #outgoingMessage:Lorg/snmp4j/asn1/BEROutputStream;
    .restart local v21       #status:I
    :cond_157
    new-instance v5, Lorg/snmp4j/MessageException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Message processing model "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v4}, Lorg/snmp4j/mp/MessageProcessingModel;->getID()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " returned error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static/range {v21 .. v21}, Lorg/snmp4j/mp/SnmpConstants;->mpErrorMessage(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_182
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ca .. :try_end_182} :catch_25
    .catch Lorg/snmp4j/MessageException; {:try_start_ca .. :try_end_182} :catch_76
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_182} :catch_b4
.end method

.method public sendPdu(Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;Z)Lorg/snmp4j/mp/PduHandle;
    .registers 17
    .parameter "transportAddress"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "expectResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/MessageException;
        }
    .end annotation

    .prologue
    .line 380
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/snmp4j/MessageDispatcherImpl;->sendPdu(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;Z)Lorg/snmp4j/mp/PduHandle;

    move-result-object v0

    return-object v0
.end method

.method public setCheckOutgoingMsg(Z)V
    .registers 2
    .parameter "checkOutgoingMsg"

    .prologue
    .line 706
    iput-boolean p1, p0, Lorg/snmp4j/MessageDispatcherImpl;->checkOutgoingMsg:Z

    .line 707
    return-void
.end method
