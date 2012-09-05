.class Lgov/nist/javax/sip/EventScanner;
.super Ljava/lang/Object;
.source "EventScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private eventMutex:[I

.field private isStopped:Z

.field private pendingEvents:Ljava/util/LinkedList;

.field private refCount:I

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .registers 5
    .parameter "sipStackImpl"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 67
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    .local v0, myThread:Ljava/lang/Thread;
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 72
    iput-object p1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 74
    const-string v1, "EventScannerThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method


# virtual methods
.method public addEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .registers 5
    .parameter "eventWrapper"

    .prologue
    .line 81
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 83
    :cond_24
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 85
    :try_start_27
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 90
    monitor-exit v1

    .line 92
    return-void

    .line 90
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .registers 19
    .parameter "eventWrapper"

    .prologue
    .line 128
    move-object/from16 v0, p1

    iget-object v7, v0, Lgov/nist/javax/sip/EventWrapper;->sipEvent:Ljava/util/EventObject;

    .line 129
    .local v7, sipEvent:Ljava/util/EventObject;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sipEvent = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 133
    :cond_3a
    const/4 v8, 0x0

    .line 135
    .local v8, sipListener:Ljavax/sip/SipListener;
    instance-of v13, v7, Ljavax/sip/IOExceptionEvent;

    if-nez v13, :cond_217

    .line 136
    invoke-virtual {v7}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    .line 141
    :goto_49
    instance-of v13, v7, Ljavax/sip/RequestEvent;

    if-eqz v13, :cond_40f

    .line 145
    :try_start_4d
    move-object v0, v7

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v13, v0

    invoke-virtual {v13}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/message/SIPRequest;

    .line 148
    .local v9, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_a3

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deliverEvent : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " transaction "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " sipEvent.serverTx = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v7

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v13, v0

    invoke-virtual {v13}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 168
    :cond_a3
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    const/4 v14, 0x1

    invoke-virtual {v13, v9, v14}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v12

    check-cast v12, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 171
    .local v12, tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v12, :cond_2c9

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v13

    if-nez v13, :cond_2c9

    .line 180
    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_221

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v13

    if-eqz v13, :cond_221

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    div-int/lit8 v13, v13, 0x64

    const/4 v14, 0x2

    if-eq v13, v14, :cond_df

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isNon2XXAckPassedToListener()Z

    move-result v13

    if-eqz v13, :cond_221

    .line 185
    :cond_df
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_f6

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Detected broken client sending ACK with same branch! Passing..."

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 211
    :cond_f6
    :goto_f6
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v9, v13}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V
    :try_end_fd
    .catchall {:try_start_4d .. :try_end_fd} :catchall_379

    .line 215
    :try_start_fd
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_14b

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Calling listener "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Calling listener "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 223
    :cond_14b
    if-eqz v8, :cond_154

    .line 224
    move-object v0, v7

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v13, v0

    invoke-interface {v8, v13}, Ljavax/sip/SipListener;->processRequest(Ljavax/sip/RequestEvent;)V

    .line 226
    :cond_154
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_180

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Done processing Message "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 231
    :cond_180
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_195

    .line 233
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 235
    .local v3, dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v3, :cond_195

    .line 236
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->requestConsumed()V
    :try_end_195
    .catchall {:try_start_fd .. :try_end_195} :catchall_379
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_195} :catch_401

    .line 246
    .end local v3           #dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_195
    :goto_195
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1cb

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Done processing Message "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast v7, Ljavax/sip/RequestEvent;

    .end local v7           #sipEvent:Ljava/util/EventObject;
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_1cb
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_1e6

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v13

    if-eqz v13, :cond_1e6

    .line 255
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_1e6
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_1f9

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v14, v13}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_1f9
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_216

    .line 268
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v14, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    :goto_213
    invoke-virtual {v13, v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 448
    .end local v8           #sipListener:Ljavax/sip/SipListener;
    .end local v9           #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v12           #tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_216
    :goto_216
    return-void

    .line 138
    .restart local v7       #sipEvent:Ljava/util/EventObject;
    .restart local v8       #sipListener:Ljavax/sip/SipListener;
    :cond_217
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    goto/16 :goto_49

    .line 191
    .restart local v9       #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v12       #tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_221
    :try_start_221
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_249

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "transaction already exists! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_249
    .catchall {:try_start_221 .. :try_end_249} :catchall_379

    .line 246
    :cond_249
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_27f

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Done processing Message "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast v7, Ljavax/sip/RequestEvent;

    .end local v7           #sipEvent:Ljava/util/EventObject;
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_27f
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_29a

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v13

    if-eqz v13, :cond_29a

    .line 255
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_29a
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_2ad

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v14, v13}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_2ad
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_216

    .line 268
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v14, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    goto/16 :goto_213

    .line 196
    .restart local v7       #sipEvent:Ljava/util/EventObject;
    :cond_2c9
    :try_start_2c9
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13, v9}, Lgov/nist/javax/sip/SipStackImpl;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v13

    if-eqz v13, :cond_36a

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_2ea

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "transaction already exists!!"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2ea
    .catchall {:try_start_2c9 .. :try_end_2ea} :catchall_379

    .line 246
    :cond_2ea
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_320

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Done processing Message "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast v7, Ljavax/sip/RequestEvent;

    .end local v7           #sipEvent:Ljava/util/EventObject;
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_320
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_33b

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v13

    if-eqz v13, :cond_33b

    .line 255
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_33b
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_34e

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v14, v13}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_34e
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_216

    .line 268
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v14, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    goto/16 :goto_213

    .line 206
    .restart local v7       #sipEvent:Ljava/util/EventObject;
    :cond_36a
    :try_start_36a
    move-object/from16 v0, p1

    iget-object v11, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v11, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 207
    .local v11, st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13, v11}, Lgov/nist/javax/sip/SipStackImpl;->putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_377
    .catchall {:try_start_36a .. :try_end_377} :catchall_379

    goto/16 :goto_f6

    .line 246
    .end local v9           #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v11           #st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v12           #tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :catchall_379
    move-exception v13

    move-object v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_3b5

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v15

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Done processing Message "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    check-cast v7, Ljavax/sip/RequestEvent;

    .end local v7           #sipEvent:Ljava/util/EventObject;
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_3b5
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_3d0

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v13

    if-eqz v13, :cond_3d0

    .line 255
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_3d0
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_3e3

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v15, v13}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_3e3
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v15, "ACK"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_400

    .line 268
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v15, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {v13, v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 246
    :cond_400
    throw v14

    .line 239
    .restart local v7       #sipEvent:Ljava/util/EventObject;
    .restart local v9       #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v12       #tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :catch_401
    move-exception v4

    .line 243
    .local v4, ex:Ljava/lang/Exception;
    :try_start_402
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_40d
    .catchall {:try_start_402 .. :try_end_40d} :catchall_379

    goto/16 :goto_195

    .line 273
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v9           #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v12           #tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_40f
    instance-of v13, v7, Ljavax/sip/ResponseEvent;

    if-eqz v13, :cond_556

    .line 275
    :try_start_413
    move-object v0, v7

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v5, v0

    .line 276
    .local v5, responseEvent:Ljavax/sip/ResponseEvent;
    invoke-virtual {v5}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/message/SIPResponse;

    .line 278
    .local v10, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v5}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/stack/SIPDialog;
    :try_end_423
    .catchall {:try_start_413 .. :try_end_423} :catchall_53d

    .line 280
    .local v6, sipDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    :try_start_423
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_44f

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Calling listener for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 286
    :cond_44f
    if-eqz v8, :cond_45f

    .line 287
    move-object/from16 v0, p1

    iget-object v12, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 288
    .local v12, tx:Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v12, :cond_45a

    .line 289
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPTransaction;->setPassToListener()V

    .line 291
    :cond_45a
    check-cast v7, Ljavax/sip/ResponseEvent;

    .end local v7           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v8, v7}, Ljavax/sip/SipListener;->processResponse(Ljavax/sip/ResponseEvent;)V

    .line 299
    .end local v12           #tx:Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_45f
    if-eqz v6, :cond_49d

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v13

    if-eqz v13, :cond_473

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v13

    sget-object v14, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    invoke-virtual {v13, v14}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_49d

    :cond_473
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0x1e1

    if-eq v13, v14, :cond_483

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0x198

    if-ne v13, v14, :cond_49d

    .line 303
    :cond_483
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_49a

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Removing dialog on 408 or 481 response"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 307
    :cond_49a
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDelete()V

    .line 327
    :cond_49d
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "INVITE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4ee

    if-eqz v6, :cond_4ee

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_4ee

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_4e3

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Warning! unacknowledged dialog. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 338
    :cond_4e3
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDeleteIfNoAckSent(J)V
    :try_end_4ee
    .catchall {:try_start_423 .. :try_end_4ee} :catchall_53d
    .catch Ljava/lang/Exception; {:try_start_423 .. :try_end_4ee} :catch_530

    .line 349
    :cond_4ee
    :goto_4ee
    :try_start_4ee
    move-object/from16 v0, p1

    iget-object v2, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 350
    .local v2, ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v2, :cond_517

    sget-object v13, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v14

    if-ne v13, v14, :cond_517

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    if-eqz v13, :cond_517

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "INVITE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_517

    .line 359
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->clearState()V
    :try_end_517
    .catchall {:try_start_4ee .. :try_end_517} :catchall_53d

    .line 363
    :cond_517
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_216

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v13

    if-eqz v13, :cond_216

    .line 365
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_216

    .line 340
    .end local v2           #ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :catch_530
    move-exception v4

    .line 344
    .restart local v4       #ex:Ljava/lang/Exception;
    :try_start_531
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_53c
    .catchall {:try_start_531 .. :try_end_53c} :catchall_53d

    goto :goto_4ee

    .line 363
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #responseEvent:Ljavax/sip/ResponseEvent;
    .end local v6           #sipDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v10           #sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    :catchall_53d
    move-exception v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v14, :cond_555

    move-object/from16 v0, p1

    iget-object v14, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v14

    if-eqz v14, :cond_555

    .line 365
    move-object/from16 v0, p1

    iget-object v14, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 363
    :cond_555
    throw v13

    .line 369
    .restart local v7       #sipEvent:Ljava/util/EventObject;
    :cond_556
    instance-of v13, v7, Ljavax/sip/TimeoutEvent;

    if-eqz v13, :cond_571

    .line 373
    if-eqz v8, :cond_216

    .line 374
    :try_start_55c
    check-cast v7, Ljavax/sip/TimeoutEvent;

    .end local v7           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v8, v7}, Ljavax/sip/SipListener;->processTimeout(Ljavax/sip/TimeoutEvent;)V
    :try_end_561
    .catch Ljava/lang/Exception; {:try_start_55c .. :try_end_561} :catch_563

    goto/16 :goto_216

    .line 375
    :catch_563
    move-exception v4

    .line 379
    .restart local v4       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_216

    .line 382
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v7       #sipEvent:Ljava/util/EventObject;
    :cond_571
    instance-of v13, v7, Lgov/nist/javax/sip/DialogTimeoutEvent;

    if-eqz v13, :cond_592

    .line 385
    if-eqz v8, :cond_216

    :try_start_577
    instance-of v13, v8, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v13, :cond_216

    .line 386
    check-cast v8, Lgov/nist/javax/sip/SipListenerExt;

    .end local v8           #sipListener:Ljavax/sip/SipListener;
    check-cast v7, Lgov/nist/javax/sip/DialogTimeoutEvent;

    .end local v7           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v8, v7}, Lgov/nist/javax/sip/SipListenerExt;->processDialogTimeout(Lgov/nist/javax/sip/DialogTimeoutEvent;)V
    :try_end_582
    .catch Ljava/lang/Exception; {:try_start_577 .. :try_end_582} :catch_584

    goto/16 :goto_216

    .line 388
    :catch_584
    move-exception v4

    .line 392
    .restart local v4       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_216

    .line 395
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v7       #sipEvent:Ljava/util/EventObject;
    .restart local v8       #sipListener:Ljavax/sip/SipListener;
    :cond_592
    instance-of v13, v7, Ljavax/sip/IOExceptionEvent;

    if-eqz v13, :cond_5ad

    .line 397
    if-eqz v8, :cond_216

    .line 398
    :try_start_598
    check-cast v7, Ljavax/sip/IOExceptionEvent;

    .end local v7           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v8, v7}, Ljavax/sip/SipListener;->processIOException(Ljavax/sip/IOExceptionEvent;)V
    :try_end_59d
    .catch Ljava/lang/Exception; {:try_start_598 .. :try_end_59d} :catch_59f

    goto/16 :goto_216

    .line 399
    :catch_59f
    move-exception v4

    .line 400
    .restart local v4       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_216

    .line 402
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v7       #sipEvent:Ljava/util/EventObject;
    :cond_5ad
    instance-of v13, v7, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v13, :cond_645

    .line 404
    :try_start_5b1
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_614

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "About to deliver transactionTerminatedEvent"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tx = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v7

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    move-object v13, v0

    invoke-virtual {v13}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tx = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v7

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    move-object v13, v0

    invoke-virtual {v13}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 417
    :cond_614
    if-eqz v8, :cond_216

    .line 418
    check-cast v7, Ljavax/sip/TransactionTerminatedEvent;

    .end local v7           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v8, v7}, Ljavax/sip/SipListener;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    :try_end_61b
    .catch Ljava/lang/AbstractMethodError; {:try_start_5b1 .. :try_end_61b} :catch_61d
    .catch Ljava/lang/Exception; {:try_start_5b1 .. :try_end_61b} :catch_637

    goto/16 :goto_216

    .line 420
    :catch_61d
    move-exception v1

    .line 422
    .local v1, ame:Ljava/lang/AbstractMethodError;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_216

    .line 423
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Unable to call sipListener.processTransactionTerminated"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_216

    .line 427
    .end local v1           #ame:Ljava/lang/AbstractMethodError;
    :catch_637
    move-exception v4

    .line 428
    .restart local v4       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_216

    .line 430
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v7       #sipEvent:Ljava/util/EventObject;
    :cond_645
    instance-of v13, v7, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v13, :cond_67a

    .line 432
    if-eqz v8, :cond_216

    .line 433
    :try_start_64b
    check-cast v7, Ljavax/sip/DialogTerminatedEvent;

    .end local v7           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v8, v7}, Ljavax/sip/SipListener;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    :try_end_650
    .catch Ljava/lang/AbstractMethodError; {:try_start_64b .. :try_end_650} :catch_652
    .catch Ljava/lang/Exception; {:try_start_64b .. :try_end_650} :catch_66c

    goto/16 :goto_216

    .line 435
    :catch_652
    move-exception v1

    .line 437
    .restart local v1       #ame:Ljava/lang/AbstractMethodError;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_216

    .line 438
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Unable to call sipListener.processDialogTerminated"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_216

    .line 440
    .end local v1           #ame:Ljava/lang/AbstractMethodError;
    :catch_66c
    move-exception v4

    .line 441
    .restart local v4       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_216

    .line 445
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v7       #sipEvent:Ljava/util/EventObject;
    :cond_67a
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bad event"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    goto/16 :goto_216
.end method

.method public forceStop()V
    .registers 3

    .prologue
    .line 119
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 120
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit v1

    .line 125
    return-void

    .line 123
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public incrementRefcount()V
    .registers 3

    .prologue
    .line 60
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 61
    :try_start_3
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public run()V
    .registers 11

    .prologue
    .line 459
    :try_start_0
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v5

    .line 462
    .local v5, threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :cond_a
    const/4 v1, 0x0

    .line 465
    .local v1, eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v7
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_e2

    .line 467
    :goto_e
    :try_start_e
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 471
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-eqz v6, :cond_46

    .line 472
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 473
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v8, "Stopped event scanner!!"

    invoke-interface {v6, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 475
    :cond_2d
    monitor-exit v7
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_fb

    .line 521
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 522
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v6, :cond_45

    .line 523
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Event scanner exited abnormally"

    :goto_42
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 490
    :cond_45
    return-void

    .line 482
    :cond_46
    :try_start_46
    invoke-virtual {v5}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 485
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v5}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_fb
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_52} :catch_53

    goto :goto_e

    .line 486
    :catch_53
    move-exception v3

    .line 488
    .local v3, ex:Ljava/lang/InterruptedException;
    :try_start_54
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 489
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v8, "Interrupted!"

    invoke-interface {v6, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 490
    :cond_67
    monitor-exit v7
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_fb

    .line 521
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 522
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v6, :cond_45

    .line 523
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Event scanner exited abnormally"

    goto :goto_42

    .line 499
    .end local v3           #ex:Ljava/lang/InterruptedException;
    :cond_7d
    :try_start_7d
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 500
    .local v2, eventsToDeliver:Ljava/util/LinkedList;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 501
    monitor-exit v7
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_fb

    .line 502
    :try_start_87
    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 503
    .local v4, iterator:Ljava/util/ListIterator;
    :cond_8b
    :goto_8b
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 504
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    check-cast v1, Lgov/nist/javax/sip/EventWrapper;

    .line 505
    .restart local v1       #eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 506
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nevents "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_87 .. :try_end_c9} :catchall_e2

    .line 511
    :cond_c9
    :try_start_c9
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/EventScanner;->deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_e2
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_8b

    .line 512
    :catch_cd
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/Exception;
    :try_start_ce
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 514
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Unexpected exception caught while delivering event -- carrying on bravely"

    invoke-interface {v6, v7, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_e1
    .catchall {:try_start_ce .. :try_end_e1} :catchall_e2

    goto :goto_8b

    .line 521
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    .end local v2           #eventsToDeliver:Ljava/util/LinkedList;
    .end local v4           #iterator:Ljava/util/ListIterator;
    .end local v5           #threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_e2
    move-exception v6

    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 522
    iget-boolean v7, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v7, :cond_fa

    .line 523
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Event scanner exited abnormally"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 521
    :cond_fa
    throw v6

    .line 501
    .restart local v1       #eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    .restart local v5       #threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_fb
    move-exception v6

    :try_start_fc
    monitor-exit v7
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    :try_start_fd
    throw v6
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_e2
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 100
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 102
    :try_start_3
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    if-lez v0, :cond_d

    .line 103
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 105
    :cond_d
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    if-nez v0, :cond_19

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    .line 107
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 110
    :cond_19
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method
