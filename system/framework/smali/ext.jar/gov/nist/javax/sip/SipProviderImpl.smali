.class public Lgov/nist/javax/sip/SipProviderImpl;
.super Ljava/lang/Object;
.source "SipProviderImpl.java"

# interfaces
.implements Ljavax/sip/SipProvider;
.implements Lgov/nist/javax/sip/SipProviderExt;
.implements Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
.implements Lgov/nist/javax/sip/stack/SIPDialogEventListener;


# instance fields
.field private IN6_ADDR_ANY:Ljava/lang/String;

.field private IN_ADDR_ANY:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private automaticDialogSupportEnabled:Z

.field private dialogErrorsAutomaticallyHandled:Z

.field private eventScanner:Lgov/nist/javax/sip/EventScanner;

.field private listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

.field private port:I

.field private sipListener:Ljavax/sip/SipListener;

.field protected sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN_ADDR_ANY:Ljava/lang/String;

    .line 122
    const-string v0, "::0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN6_ADDR_ANY:Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 128
    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .registers 3
    .parameter "sipStack"

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN_ADDR_ANY:Ljava/lang/String;

    .line 122
    const-string v0, "::0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN6_ADDR_ANY:Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 198
    invoke-virtual {p1}, Lgov/nist/javax/sip/SipStackImpl;->getEventScanner()Lgov/nist/javax/sip/EventScanner;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    .line 199
    iput-object p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 200
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v0}, Lgov/nist/javax/sip/EventScanner;->incrementRefcount()V

    .line 201
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 202
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    .line 204
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAutomaticDialogErrorHandlingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 205
    return-void
.end method


# virtual methods
.method public declared-synchronized addListeningPoint(Ljavax/sip/ListeningPoint;)V
    .registers 7
    .parameter "listeningPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .prologue
    .line 1018
    monitor-enter p0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    move-object v1, v0

    .line 1019
    .local v1, lp:Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v3, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-eqz v3, :cond_18

    iget-object v3, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-eq v3, p0, :cond_18

    .line 1020
    new-instance v3, Ljavax/sip/ObjectInUseException;

    const-string v4, "Listening point assigned to another provider"

    invoke-direct {v3, v4}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .line 1018
    .end local v1           #lp:Lgov/nist/javax/sip/ListeningPointImpl;
    :catchall_15
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1022
    .restart local v1       #lp:Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_18
    :try_start_18
    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, transport:Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1026
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    .line 1027
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v3

    iput v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    .line 1035
    :cond_34
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_68

    .line 1037
    new-instance v3, Ljavax/sip/ObjectInUseException;

    const-string v4, "Listening point already assigned for transport!"

    invoke-direct {v3, v4}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1029
    :cond_4c
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    iget v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v4

    if-eq v3, v4, :cond_34

    .line 1031
    :cond_60
    new-instance v3, Ljavax/sip/ObjectInUseException;

    const-string v4, "Provider already has different IP Address associated"

    invoke-direct {v3, v4}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1041
    :cond_68
    iput-object p0, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 1043
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_18 .. :try_end_6f} :catchall_15

    .line 1045
    monitor-exit p0

    return-void
.end method

.method public addSipListener(Ljavax/sip/SipListener;)V
    .registers 5
    .parameter "sipListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/TooManyListenersException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    if-nez v0, :cond_31

    .line 226
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iput-object p1, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    .line 232
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 233
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add SipListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 234
    :cond_2e
    iput-object p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    .line 236
    return-void

    .line 227
    :cond_31
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    if-eq v0, p1, :cond_a

    .line 228
    new-instance v0, Ljava/util/TooManyListenersException;

    const-string v1, "Stack already has a listener. Only one listener per stack allowed"

    invoke-direct {v0, v1}, Ljava/util/TooManyListenersException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V
    .registers 8
    .parameter "dialogErrorEvent"

    .prologue
    .line 982
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 983
    .local v2, sipDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    .line 984
    .local v1, reason:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getErrorID()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    .line 985
    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    .line 989
    :cond_12
    :goto_12
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 990
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog TimeoutError occured on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 993
    :cond_36
    new-instance v0, Lgov/nist/javax/sip/DialogTimeoutEvent;

    invoke-direct {v0, p0, v2, v1}, Lgov/nist/javax/sip/DialogTimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;)V

    .line 995
    .local v0, ev:Lgov/nist/javax/sip/DialogTimeoutEvent;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_4b

    .line 996
    monitor-exit p0

    return-void

    .line 986
    .end local v0           #ev:Lgov/nist/javax/sip/DialogTimeoutEvent;
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getErrorID()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    .line 987
    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4b

    goto :goto_12

    .line 982
    .end local v1           #reason:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .end local v2           #sipDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    :catchall_4b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getListeningPoint()Ljavax/sip/ListeningPoint;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 246
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/ListeningPoint;

    .line 249
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;
    .registers 4
    .parameter "transport"

    .prologue
    .line 152
    if-nez p1, :cond_a

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transport param"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/ListeningPoint;

    return-object v0
.end method

.method public declared-synchronized getListeningPoints()[Ljavax/sip/ListeningPoint;
    .registers 3

    .prologue
    .line 1005
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    new-array v0, v1, [Lgov/nist/javax/sip/ListeningPointImpl;

    .line 1007
    .local v0, retval:[Ljavax/sip/ListeningPoint;
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 1008
    monitor-exit p0

    return-object v0

    .line 1005
    .end local v0           #retval:[Ljavax/sip/ListeningPoint;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNewCallId()Ljavax/sip/header/CallIdHeader;
    .registers 5

    .prologue
    .line 258
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/Utils;->generateCallIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, callId:Ljava/lang/String;
    new-instance v1, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    .line 262
    .local v1, callid:Lgov/nist/javax/sip/header/CallID;
    :try_start_15
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_18} :catch_19

    .line 265
    :goto_18
    return-object v1

    .line 263
    :catch_19
    move-exception v2

    goto :goto_18
.end method

.method public getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;
    .registers 22
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation

    .prologue
    .line 276
    if-nez p1, :cond_a

    .line 277
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "null request"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 278
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v17

    if-nez v17, :cond_1e

    .line 279
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Stack is stopped"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_1e
    move-object/from16 v13, p1

    .line 281
    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    .line 282
    .local v13, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_30

    .line 283
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Transaction already assigned to request"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 285
    :cond_30
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ACK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_44

    .line 286
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Cannot create client transaction for  ACK"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 290
    :cond_44
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    if-nez v17, :cond_61

    .line 291
    const-string v17, "udp"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 293
    .local v10, lp:Lgov/nist/javax/sip/ListeningPointImpl;
    invoke-virtual {v10}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v16

    .line 294
    .local v16, via:Lgov/nist/javax/sip/header/Via;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->setHeader(Ljavax/sip/header/Header;)V

    .line 298
    .end local v10           #lp:Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v16           #via:Lgov/nist/javax/sip/header/Via;
    :cond_61
    :try_start_61
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_64
    .catch Ljava/text/ParseException; {:try_start_61 .. :try_end_64} :catch_9e

    .line 307
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_ad

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v17

    const-string v18, "z9hG4bK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v18, v0

    move-object/from16 v17, p1

    check-cast v17, Lgov/nist/javax/sip/message/SIPRequest;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v17

    if-eqz v17, :cond_ad

    .line 311
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Transaction already exists!"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 299
    :catch_9e
    move-exception v7

    .line 300
    .local v7, ex:Ljava/text/ParseException;
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    invoke-virtual {v7}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 318
    .end local v7           #ex:Ljava/text/ParseException;
    :cond_ad
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v17

    const-string v18, "CANCEL"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_121

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v18, v0

    move-object/from16 v17, p1

    check-cast v17, Lgov/nist/javax/sip/message/SIPRequest;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 321
    .local v4, ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v4, :cond_121

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    .end local p1
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v11

    .local v11, retval:Ljavax/sip/ClientTransaction;
    move-object/from16 v17, v11

    .line 325
    check-cast v17, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v18, v0

    move-object/from16 v17, v11

    check-cast v17, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    .line 327
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v17

    if-eqz v17, :cond_120

    move-object/from16 v17, v11

    .line 328
    check-cast v17, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v18

    check-cast v18, Lgov/nist/javax/sip/stack/SIPDialog;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 427
    .end local v11           #retval:Ljavax/sip/ClientTransaction;
    :cond_120
    :goto_120
    return-object v11

    .line 336
    .end local v4           #ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local p1
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v17

    if-eqz v17, :cond_16b

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v18

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "could not find existing transaction for "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v17, p1

    check-cast v17, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " creating a new one "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 344
    :cond_16b
    const/4 v8, 0x0

    .line 346
    .local v8, hop:Ljavax/sip/address/Hop;
    :try_start_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;

    move-result-object v8

    .line 347
    if-nez v8, :cond_197

    .line 348
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Cannot resolve next hop -- transaction unavailable"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_18a
    .catch Ljavax/sip/SipException; {:try_start_16c .. :try_end_18a} :catch_18a

    .line 350
    :catch_18a
    move-exception v7

    .line 351
    .local v7, ex:Ljavax/sip/SipException;
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Cannot resolve next hop -- transaction unavailable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 354
    .end local v7           #ex:Ljavax/sip/SipException;
    :cond_197
    invoke-interface {v8}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v15

    .line 355
    .local v15, transport:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 358
    .local v9, listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v6

    .line 359
    .local v6, dialogId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v5

    .line 360
    .local v5, dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v5, :cond_1d0

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v17

    sget-object v18, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1d0

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 378
    :cond_1d0
    const/4 v3, 0x0

    .line 379
    .local v3, branchId:Ljava/lang/String;
    :try_start_1d1
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1f7

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v17

    const-string v18, "z9hG4bK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v17

    if-eqz v17, :cond_208

    .line 383
    :cond_1f7
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 387
    :cond_208
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v14

    .line 390
    .local v14, topmostVia:Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_215

    .line 391
    invoke-virtual {v14, v15}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    .line 393
    :cond_215
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_22a

    .line 394
    invoke-virtual {v9}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    .line 395
    :cond_22a
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v3

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Lgov/nist/javax/sip/ListeningPointImpl;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1, v8}, Lgov/nist/javax/sip/SipStackImpl;->createMessageChannel(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageProcessor;Ljavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 400
    .restart local v4       #ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-nez v4, :cond_25d

    .line 401
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Cound not create tx"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_250} :catch_250
    .catch Ljava/text/ParseException; {:try_start_1d1 .. :try_end_250} :catch_2ad
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1d1 .. :try_end_250} :catch_2cd

    .line 428
    .end local v4           #ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v14           #topmostVia:Lgov/nist/javax/sip/header/Via;
    :catch_250
    move-exception v7

    .line 430
    .local v7, ex:Ljava/io/IOException;
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Could not resolve next hop or listening point unavailable! "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 402
    .end local v7           #ex:Ljava/io/IOException;
    .restart local v4       #ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v14       #topmostVia:Lgov/nist/javax/sip/header/Via;
    :cond_25d
    :try_start_25d
    invoke-virtual {v4, v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setNextHop(Ljavax/sip/address/Hop;)V

    .line 403
    invoke-virtual {v4, v13}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 404
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setBranch(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2bd

    .line 412
    if-eqz v5, :cond_28d

    .line 413
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 426
    :cond_285
    :goto_285
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    move-object v11, v4

    .line 427
    goto/16 :goto_120

    .line 414
    :cond_28d
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v17

    if-eqz v17, :cond_285

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v12

    .line 416
    .local v12, sipDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v12, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_2ac
    .catch Ljava/io/IOException; {:try_start_25d .. :try_end_2ac} :catch_250
    .catch Ljava/text/ParseException; {:try_start_25d .. :try_end_2ac} :catch_2ad
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_25d .. :try_end_2ac} :catch_2cd

    goto :goto_285

    .line 434
    .end local v4           #ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v12           #sipDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v14           #topmostVia:Lgov/nist/javax/sip/header/Via;
    :catch_2ad
    move-exception v7

    .line 435
    .local v7, ex:Ljava/text/ParseException;
    invoke-static {v7}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 436
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Unexpected Exception FIXME! "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 419
    .end local v7           #ex:Ljava/text/ParseException;
    .restart local v4       #ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v14       #topmostVia:Lgov/nist/javax/sip/header/Via;
    :cond_2bd
    if-eqz v5, :cond_285

    .line 420
    const/16 v17, 0x0

    :try_start_2c1
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_2cc
    .catch Ljava/io/IOException; {:try_start_2c1 .. :try_end_2cc} :catch_250
    .catch Ljava/text/ParseException; {:try_start_2c1 .. :try_end_2cc} :catch_2ad
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2c1 .. :try_end_2cc} :catch_2cd

    goto :goto_285

    .line 438
    .end local v4           #ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v14           #topmostVia:Lgov/nist/javax/sip/header/Via;
    :catch_2cd
    move-exception v7

    .line 439
    .local v7, ex:Ljavax/sip/InvalidArgumentException;
    invoke-static {v7}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 440
    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Unexpected Exception FIXME! "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method public getNewDialog(Ljavax/sip/Transaction;)Ljavax/sip/Dialog;
    .registers 14
    .parameter "transaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 823
    if-nez p1, :cond_c

    .line 824
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Null transaction!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 826
    :cond_c
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 827
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Stack is stopped."

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 829
    :cond_1c
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 830
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, " Error - AUTOMATIC_DIALOG_SUPPORT is on"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 832
    :cond_2a
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5b

    .line 833
    new-instance v8, Ljavax/sip/SipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dialog cannot be created for this method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 836
    :cond_5b
    const/4 v0, 0x0

    .local v0, dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    move-object v6, p1

    .line 837
    check-cast v6, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 839
    .local v6, sipTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;
    instance-of v8, p1, Ljavax/sip/ServerTransaction;

    if-eqz v8, :cond_c2

    move-object v7, p1

    .line 840
    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 841
    .local v7, st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 842
    .local v3, response:Ljavax/sip/message/Response;
    if-eqz v3, :cond_7c

    .line 843
    invoke-interface {v3}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_7c

    .line 844
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Cannot set dialog after response has been sent"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 847
    :cond_7c
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/message/SIPRequest;

    .line 848
    .local v5, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, dialogId:Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v1}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    .line 850
    if-nez v0, :cond_ba

    .line 851
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    check-cast p1, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local p1
    invoke-virtual {v8, p1}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    .line 853
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 854
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 855
    invoke-virtual {v6, v0, v11}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 860
    :goto_9f
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b6

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 861
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v7, v5}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 888
    .end local v3           #response:Ljavax/sip/message/Response;
    .end local v5           #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v7           #st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_b6
    :goto_b6
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    .line 889
    return-object v0

    .line 858
    .restart local v3       #response:Ljavax/sip/message/Response;
    .restart local v5       #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v7       #st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1
    :cond_ba
    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_9f

    .end local v1           #dialogId:Ljava/lang/String;
    .end local v3           #response:Ljavax/sip/message/Response;
    .end local v5           #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v7           #st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_c2
    move-object v4, p1

    .line 865
    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 867
    .local v4, sipClientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 869
    .local v3, response:Lgov/nist/javax/sip/message/SIPResponse;
    if-nez v3, :cond_f0

    .line 872
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    .line 874
    .local v2, request:Lgov/nist/javax/sip/message/SIPRequest;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    .line 875
    .restart local v1       #dialogId:Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v1}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_e6

    .line 877
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Dialog already exists!"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 879
    :cond_e6
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v6}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    .line 881
    invoke-virtual {v4, v0, v11}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_b6

    .line 884
    .end local v1           #dialogId:Ljava/lang/String;
    .end local v2           #request:Lgov/nist/javax/sip/message/SIPRequest;
    :cond_f0
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Cannot call this method after response is received!"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;
    .registers 14
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionAlreadyExistsException;,
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v9

    if-nez v9, :cond_10

    .line 456
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Stack is stopped"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 457
    :cond_10
    const/4 v7, 0x0

    .local v7, transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    move-object v6, p1

    .line 458
    check-cast v6, Lgov/nist/javax/sip/message/SIPRequest;

    .line 460
    .local v6, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    :try_start_14
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_17} :catch_3e

    .line 465
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ACK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 466
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_36

    .line 467
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "Creating server transaction for ACK -- makes no sense!"

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 468
    :cond_36
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Cannot create Server transaction for ACK "

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 461
    :catch_3e
    move-exception v4

    .line 462
    .local v4, ex:Ljava/text/ParseException;
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 473
    .end local v4           #ex:Ljava/text/ParseException;
    :cond_49
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NOTIFY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7d

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7d

    .line 477
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v10, v6, v9}, Lgov/nist/javax/sip/SipStackImpl;->findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v1

    .line 480
    .local v1, ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-nez v1, :cond_7d

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-boolean v9, v9, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    if-nez v9, :cond_7d

    .line 481
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Cannot find matching Subscription (and gov.nist.javax.sip.DELIVER_UNSOLICITED_NOTIFY not set)"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 485
    .end local v1           #ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_7d
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->acquireSem()Z

    move-result v9

    if-nez v9, :cond_8d

    .line 486
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Transaction not available -- could not acquire stack lock"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 490
    :cond_8d
    :try_start_8d
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_136

    .line 491
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v9

    if-eqz v9, :cond_b5

    .line 492
    new-instance v9, Ljavax/sip/TransactionAlreadyExistsException;

    const-string v10, "server transaction already exists!"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_ae
    .catchall {:try_start_8d .. :try_end_ae} :catchall_ae

    .line 624
    .end local p1
    :catchall_ae
    move-exception v9

    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    throw v9

    .line 495
    .restart local p1
    :cond_b5
    :try_start_b5
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    .end local p1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v7, v0

    .line 497
    if-nez v7, :cond_c9

    .line 498
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Transaction not available"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 500
    :cond_c9
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v9

    if-nez v9, :cond_d2

    .line 501
    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_d2
    .catchall {:try_start_b5 .. :try_end_d2} :catchall_ae

    .line 503
    :cond_d2
    :try_start_d2
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_d7
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_ae
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d7} :catch_12d

    .line 509
    :try_start_d7
    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    .line 510
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v9

    if-eqz v9, :cond_126

    .line 513
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, dialogId:Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    .line 515
    .local v2, dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    if-nez v2, :cond_f3

    .line 516
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    .line 519
    :cond_f3
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string v10, "INVITE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_112

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v9

    if-eqz v9, :cond_112

    .line 521
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7, v6}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 523
    :cond_112
    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 524
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_126

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_126

    .line 526
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v2}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    :try_end_126
    .catchall {:try_start_d7 .. :try_end_126} :catchall_ae

    .line 624
    .end local v2           #dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v3           #dialogId:Ljava/lang/String;
    :cond_126
    :goto_126
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    move-object v8, v7

    .end local v7           #transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .local v8, transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :goto_12c
    return-object v8

    .line 504
    .end local v8           #transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v7       #transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :catch_12d
    move-exception v4

    .line 505
    .local v4, ex:Ljava/io/IOException;
    :try_start_12e
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Error sending provisional response"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 531
    .end local v4           #ex:Ljava/io/IOException;
    .restart local p1
    :cond_136
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v9

    if-eqz v9, :cond_19c

    .line 537
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v7, v0

    .line 539
    if-eqz v7, :cond_155

    .line 540
    new-instance v9, Ljavax/sip/TransactionAlreadyExistsException;

    const-string v10, "Transaction exists! "

    invoke-direct {v9, v10}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 542
    :cond_155
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    .end local p1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v7, v0

    .line 544
    if-nez v7, :cond_169

    .line 545
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Transaction not available!"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 547
    :cond_169
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v9

    if-nez v9, :cond_172

    .line 548
    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_172
    .catchall {:try_start_12e .. :try_end_172} :catchall_ae

    .line 551
    :cond_172
    :try_start_172
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_177
    .catchall {:try_start_172 .. :try_end_177} :catchall_ae
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_177} :catch_193

    .line 559
    const/4 v9, 0x1

    :try_start_178
    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 560
    .restart local v3       #dialogId:Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    .line 561
    .restart local v2       #dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v2, :cond_126

    .line 562
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 563
    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 564
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_126

    .line 552
    .end local v2           #dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v3           #dialogId:Ljava/lang/String;
    :catch_193
    move-exception v4

    .line 553
    .restart local v4       #ex:Ljava/io/IOException;
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Could not send back provisional response!"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 568
    .end local v4           #ex:Ljava/io/IOException;
    .restart local p1
    :cond_19c
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v7, v0

    .line 570
    if-eqz v7, :cond_1b5

    .line 571
    new-instance v9, Ljavax/sip/TransactionAlreadyExistsException;

    const-string v10, "Transaction exists! "

    invoke-direct {v9, v10}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 573
    :cond_1b5
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    .end local p1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v7, v0

    .line 575
    if-eqz v7, :cond_1f2

    .line 576
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v9

    if-nez v9, :cond_1ca

    .line 577
    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 579
    :cond_1ca
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 583
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 584
    .restart local v3       #dialogId:Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    .line 585
    .restart local v2       #dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v2, :cond_1ea

    .line 586
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 587
    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 588
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_1ea
    .catchall {:try_start_178 .. :try_end_1ea} :catchall_ae

    .line 624
    :cond_1ea
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    move-object v8, v7

    .end local v7           #transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v8       #transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    goto/16 :goto_12c

    .line 596
    .end local v2           #dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v3           #dialogId:Ljava/lang/String;
    .end local v8           #transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v7       #transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_1f2
    :try_start_1f2
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMessageChannel()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/MessageChannel;

    .line 598
    .local v5, mc:Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v5}, Lgov/nist/javax/sip/SipStackImpl;->createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v7

    .line 599
    if-nez v7, :cond_208

    .line 600
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Transaction unavailable -- too many servrer transactions"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 603
    :cond_208
    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 604
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 608
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 609
    .restart local v3       #dialogId:Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    .line 610
    .restart local v2       #dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v2, :cond_22b

    .line 611
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 612
    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 613
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_22b
    .catchall {:try_start_1f2 .. :try_end_22b} :catchall_ae

    .line 624
    :cond_22b
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    move-object v8, v7

    .end local v7           #transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v8       #transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    goto/16 :goto_12c
.end method

.method public getSipListener()Ljavax/sip/SipListener;
    .registers 2

    .prologue
    .line 1112
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    return-object v0
.end method

.method public getSipStack()Ljavax/sip/SipStack;
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    return-object v0
.end method

.method public handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 8
    .parameter "sipEvent"
    .parameter "transaction"

    .prologue
    .line 169
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 170
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentTransaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "this.sipListener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sipEvent.source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 175
    instance-of v2, p1, Ljavax/sip/RequestEvent;

    if-eqz v2, :cond_93

    move-object v2, p1

    .line 176
    check-cast v2, Ljavax/sip/RequestEvent;

    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    .line 177
    .local v0, dialog:Ljavax/sip/Dialog;
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_79

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 182
    .end local v0           #dialog:Ljavax/sip/Dialog;
    :cond_79
    :goto_79
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 185
    :cond_82
    new-instance v1, Lgov/nist/javax/sip/EventWrapper;

    invoke-direct {v1, p1, p2}, Lgov/nist/javax/sip/EventWrapper;-><init>(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 187
    .local v1, eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-boolean v2, v2, Lgov/nist/javax/sip/SipStackImpl;->reEntrantListener:Z

    if-nez v2, :cond_c3

    .line 189
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/EventScanner;->addEvent(Lgov/nist/javax/sip/EventWrapper;)V

    .line 194
    :goto_92
    return-void

    .line 178
    .end local v1           #eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    :cond_93
    instance-of v2, p1, Ljavax/sip/ResponseEvent;

    if-eqz v2, :cond_79

    move-object v2, p1

    .line 179
    check-cast v2, Ljavax/sip/ResponseEvent;

    invoke-virtual {v2}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    .line 180
    .restart local v0       #dialog:Ljavax/sip/Dialog;
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_79

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_79

    .line 192
    .end local v0           #dialog:Ljavax/sip/Dialog;
    .restart local v1       #eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    :cond_c3
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/EventScanner;->deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V

    goto :goto_92
.end method

.method public isAutomaticDialogSupportEnabled()Z
    .registers 2

    .prologue
    .line 1092
    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    return v0
.end method

.method public isDialogErrorsAutomaticallyHandled()Z
    .registers 2

    .prologue
    .line 1104
    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    return v0
.end method

.method public declared-synchronized removeListeningPoint(Ljavax/sip/ListeningPoint;)V
    .registers 6
    .parameter "listeningPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .prologue
    .line 1054
    monitor-enter p0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    move-object v1, v0

    .line 1055
    .local v1, lp:Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v2, v1, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->inUse()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1056
    new-instance v2, Ljavax/sip/ObjectInUseException;

    const-string v3, "Object is in use"

    invoke-direct {v2, v3}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .line 1054
    .end local v1           #lp:Lgov/nist/javax/sip/ListeningPointImpl;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1057
    .restart local v1       #lp:Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_18
    :try_start_18
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .line 1059
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeListeningPoints()V
    .registers 4

    .prologue
    .line 1066
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1067
    .local v0, it:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1068
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 1069
    .local v1, lp:Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v2, v1, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->stop()V

    .line 1070
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    goto :goto_b

    .line 1066
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #lp:Lgov/nist/javax/sip/ListeningPointImpl;
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1073
    .restart local v0       #it:Ljava/util/Iterator;
    :cond_23
    monitor-exit p0

    return-void
.end method

.method public removeSipListener(Ljavax/sip/SipListener;)V
    .registers 7
    .parameter "sipListener"

    .prologue
    const/4 v4, 0x0

    .line 644
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v3

    if-ne p1, v3, :cond_9

    .line 645
    iput-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    .line 648
    :cond_9
    const/4 v0, 0x0

    .line 650
    .local v0, found:Z
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getSipProviders()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/SipProviderImpl;>;"
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 651
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/SipProviderImpl;

    .line 652
    .local v2, nextProvider:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 653
    const/4 v0, 0x1

    goto :goto_10

    .line 655
    .end local v2           #nextProvider:Lgov/nist/javax/sip/SipProviderImpl;
    :cond_24
    if-nez v0, :cond_2a

    .line 656
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iput-object v4, v3, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    .line 658
    :cond_2a
    return-void
.end method

.method public sendRequest(Ljavax/sip/message/Request;)V
    .registers 14
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 666
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v8

    if-nez v8, :cond_10

    .line 667
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Stack is stopped."

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_10
    move-object v8, p1

    .line 671
    check-cast v8, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v8}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v8

    if-eqz v8, :cond_63

    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ACK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 673
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v8, p1

    check-cast v8, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v1

    .line 675
    .local v1, dialog:Ljavax/sip/Dialog;
    if-eqz v1, :cond_63

    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    if-eqz v8, :cond_63

    .line 676
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_63

    .line 677
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dialog exists -- you may want to use Dialog.sendAck() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 682
    .end local v1           #dialog:Ljavax/sip/Dialog;
    :cond_63
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v8, p1

    check-cast v8, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    move-result-object v8

    invoke-interface {v8, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v4

    .line 683
    .local v4, hop:Ljavax/sip/address/Hop;
    if-nez v4, :cond_7a

    .line 684
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "could not determine next hop!"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7a
    move-object v6, p1

    .line 685
    check-cast v6, Lgov/nist/javax/sip/message/SIPRequest;

    .line 688
    .local v6, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v8

    if-nez v8, :cond_91

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v8

    if-nez v8, :cond_91

    .line 689
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Invalid SipRequest -- no via header!"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 697
    :cond_91
    :try_start_91
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v8

    if-nez v8, :cond_ae

    .line 698
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v7

    .line 699
    .local v7, via:Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, branch:Ljava/lang/String;
    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_ae

    .line 701
    :cond_a7
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 704
    .end local v0           #branch:Ljava/lang/String;
    .end local v7           #via:Lgov/nist/javax/sip/header/Via;
    :cond_ae
    const/4 v5, 0x0

    .line 705
    .local v5, messageChannel:Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 707
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v10

    invoke-virtual {v8, v9, v10, v4}, Lgov/nist/javax/sip/SipStackImpl;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5

    .line 710
    :cond_dd
    if-eqz v5, :cond_115

    .line 711
    invoke-virtual {v5, v6, v4}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljavax/sip/address/Hop;)V
    :try_end_e2
    .catchall {:try_start_91 .. :try_end_e2} :catchall_14c
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_e2} :catch_132
    .catch Ljava/text/ParseException; {:try_start_91 .. :try_end_e2} :catch_180

    .line 728
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_114

    .line 729
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "done sending "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to hop "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 733
    .end local v5           #messageChannel:Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_114
    :goto_114
    return-void

    .line 713
    .restart local v5       #messageChannel:Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_115
    :try_start_115
    new-instance v8, Ljavax/sip/SipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not create a message channel for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_132
    .catchall {:try_start_115 .. :try_end_132} :catchall_14c
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_132} :catch_132
    .catch Ljava/text/ParseException; {:try_start_115 .. :try_end_132} :catch_180

    .line 717
    .end local v5           #messageChannel:Lgov/nist/javax/sip/stack/MessageChannel;
    :catch_132
    move-exception v2

    .line 718
    .local v2, ex:Ljava/io/IOException;
    :try_start_133
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_144

    .line 719
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    invoke-interface {v8, v2}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 722
    :cond_144
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "IO Exception occured while Sending Request"

    invoke-direct {v8, v9, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_14c
    .catchall {:try_start_133 .. :try_end_14c} :catchall_14c

    .line 728
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_14c
    move-exception v8

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_17f

    .line 729
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "done sending "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to hop "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_17f
    throw v8

    .line 725
    :catch_180
    move-exception v3

    .line 726
    .local v3, ex1:Ljava/text/ParseException;
    :try_start_181
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_14c

    .line 728
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_114

    .line 729
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "done sending "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to hop "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_114
.end method

.method public sendResponse(Ljavax/sip/message/Response;)V
    .registers 15
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 741
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v10

    if-nez v10, :cond_11

    .line 742
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Stack is stopped"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_11
    move-object v6, p1

    .line 743
    check-cast v6, Lgov/nist/javax/sip/message/SIPResponse;

    .line 744
    .local v6, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v9

    .line 745
    .local v9, via:Lgov/nist/javax/sip/header/Via;
    if-nez v9, :cond_22

    .line 746
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "No via header in response!"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 747
    :cond_22
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    .end local p1
    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 748
    .local v7, st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v7, :cond_45

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v10

    sget-object v11, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v10, v11, :cond_45

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v10

    if-eqz v10, :cond_45

    .line 749
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Transaction exists -- cannot send response statelessly"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 751
    :cond_45
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v8

    .line 756
    .local v8, transport:Ljava/lang/String;
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getReceived()Ljava/lang/String;

    move-result-object v2

    .line 758
    .local v2, host:Ljava/lang/String;
    if-nez v2, :cond_53

    .line 759
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 762
    :cond_53
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    move-result v5

    .line 763
    .local v5, port:I
    if-ne v5, v12, :cond_69

    .line 764
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v5

    .line 765
    if-ne v5, v12, :cond_69

    .line 766
    const-string v10, "TLS"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cd

    .line 767
    const/16 v5, 0x13c5

    .line 774
    :cond_69
    :goto_69
    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_92

    .line 775
    const-string v10, "["

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_92

    .line 776
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 778
    :cond_92
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    move-result-object v10

    new-instance v11, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v11, v2, v5, v8}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v10, v11}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v1

    .line 782
    .local v1, hop:Ljavax/sip/address/Hop;
    :try_start_a1
    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 784
    .local v3, listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;
    if-nez v3, :cond_d0

    .line 785
    new-instance v10, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "whoopsa daisy! no listening point found for transport "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_c2} :catch_c2

    .line 792
    .end local v3           #listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;
    :catch_c2
    move-exception v0

    .line 793
    .local v0, ex:Ljava/io/IOException;
    new-instance v10, Ljavax/sip/SipException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 769
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #hop:Ljavax/sip/address/Hop;
    :cond_cd
    const/16 v5, 0x13c4

    goto :goto_69

    .line 788
    .restart local v1       #hop:Ljavax/sip/address/Hop;
    .restart local v3       #listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_d0
    :try_start_d0
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-interface {v1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v11

    iget v12, v3, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    invoke-virtual {v10, v11, v12, v1}, Lgov/nist/javax/sip/SipStackImpl;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v4

    .line 791
    .local v4, messageChannel:Lgov/nist/javax/sip/stack/MessageChannel;
    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_e7} :catch_c2

    .line 795
    return-void
.end method

.method public setAutomaticDialogSupportEnabled(Z)V
    .registers 3
    .parameter "automaticDialogSupportEnabled"

    .prologue
    .line 1082
    iput-boolean p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    .line 1083
    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    if-eqz v0, :cond_9

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 1086
    :cond_9
    return-void
.end method

.method public setDialogErrorsAutomaticallyHandled()V
    .registers 2

    .prologue
    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 1101
    return-void
.end method

.method public declared-synchronized setListeningPoint(Ljavax/sip/ListeningPoint;)V
    .registers 7
    .parameter "listeningPoint"

    .prologue
    .line 803
    monitor-enter p0

    if-nez p1, :cond_e

    .line 804
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Null listening point"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 803
    :catchall_b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 805
    :cond_e
    :try_start_e
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    move-object v1, v0

    .line 806
    .local v1, lp:Lgov/nist/javax/sip/ListeningPointImpl;
    iput-object p0, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 807
    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, transport:Ljava/lang/String;
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    .line 809
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v3

    iput v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    .line 811
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 812
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_b

    .line 814
    monitor-exit p0

    return-void
.end method

.method protected stop()V
    .registers 5

    .prologue
    .line 136
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 137
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Exiting provider"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 138
    :cond_13
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 140
    .local v1, listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;
    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->removeSipProvider()V

    goto :goto_1d

    .line 142
    .end local v1           #listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_2d
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v2}, Lgov/nist/javax/sip/EventScanner;->stop()V

    .line 144
    return-void
.end method

.method public transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V
    .registers 12
    .parameter "transactionErrorEvent"

    .prologue
    .line 902
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 905
    .local v5, transaction:Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6f

    .line 907
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 908
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TransportError occured on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 912
    :cond_31
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 913
    .local v1, errorObject:Ljava/lang/Object;
    sget-object v4, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    .line 914
    .local v4, timeout:Ljavax/sip/Timeout;
    const/4 v2, 0x0

    .line 916
    .local v2, ev:Ljavax/sip/TimeoutEvent;
    instance-of v7, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v7, :cond_4a

    .line 917
    new-instance v2, Ljavax/sip/TimeoutEvent;

    .end local v2           #ev:Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax/sip/ServerTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    .line 929
    .restart local v2       #ev:Ljavax/sip/TimeoutEvent;
    :goto_44
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v1           #errorObject:Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 975
    .end local v2           #ev:Ljavax/sip/TimeoutEvent;
    .end local v4           #timeout:Ljavax/sip/Timeout;
    :cond_49
    :goto_49
    return-void

    .restart local v1       #errorObject:Ljava/lang/Object;
    .restart local v2       #ev:Ljavax/sip/TimeoutEvent;
    .restart local v4       #timeout:Ljavax/sip/Timeout;
    :cond_4a
    move-object v0, v1

    .line 920
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 921
    .local v0, clientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v3

    .line 922
    .local v3, hop:Ljavax/sip/address/Hop;
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v7

    instance-of v7, v7, Lgov/nist/javax/sip/address/RouterExt;

    if-eqz v7, :cond_66

    .line 923
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/RouterExt;

    invoke-interface {v7, v3}, Lgov/nist/javax/sip/address/RouterExt;->transactionTimeout(Ljavax/sip/address/Hop;)V

    .line 925
    :cond_66
    new-instance v2, Ljavax/sip/TimeoutEvent;

    .end local v2           #ev:Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax/sip/ClientTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    .restart local v2       #ev:Ljavax/sip/TimeoutEvent;
    goto :goto_44

    .line 930
    .end local v0           #clientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v1           #errorObject:Ljava/lang/Object;
    .end local v2           #ev:Ljavax/sip/TimeoutEvent;
    .end local v3           #hop:Ljavax/sip/address/Hop;
    .end local v4           #timeout:Ljavax/sip/Timeout;
    :cond_6f
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b4

    .line 932
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 933
    .restart local v1       #errorObject:Ljava/lang/Object;
    sget-object v4, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    .line 934
    .restart local v4       #timeout:Ljavax/sip/Timeout;
    const/4 v2, 0x0

    .line 936
    .restart local v2       #ev:Ljavax/sip/TimeoutEvent;
    instance-of v7, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v7, :cond_8f

    .line 937
    new-instance v2, Ljavax/sip/TimeoutEvent;

    .end local v2           #ev:Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax/sip/ServerTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    .line 949
    .restart local v2       #ev:Ljavax/sip/TimeoutEvent;
    :goto_89
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v1           #errorObject:Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_49

    .restart local v1       #errorObject:Ljava/lang/Object;
    :cond_8f
    move-object v0, v1

    .line 940
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 941
    .restart local v0       #clientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v3

    .line 942
    .restart local v3       #hop:Ljavax/sip/address/Hop;
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v7

    instance-of v7, v7, Lgov/nist/javax/sip/address/RouterExt;

    if-eqz v7, :cond_ab

    .line 943
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/RouterExt;

    invoke-interface {v7, v3}, Lgov/nist/javax/sip/address/RouterExt;->transactionTimeout(Ljavax/sip/address/Hop;)V

    .line 946
    :cond_ab
    new-instance v2, Ljavax/sip/TimeoutEvent;

    .end local v2           #ev:Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax/sip/ClientTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    .restart local v2       #ev:Ljavax/sip/TimeoutEvent;
    goto :goto_89

    .line 951
    .end local v0           #clientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v1           #errorObject:Ljava/lang/Object;
    .end local v2           #ev:Ljavax/sip/TimeoutEvent;
    .end local v3           #hop:Ljavax/sip/address/Hop;
    .end local v4           #timeout:Ljavax/sip/Timeout;
    :cond_b4
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_49

    .line 956
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #errorObject:Ljava/lang/Object;
    move-object v6, v1

    .line 957
    check-cast v6, Ljavax/sip/Transaction;

    .line 959
    .local v6, tx:Ljavax/sip/Transaction;
    invoke-interface {v6}, Ljavax/sip/Transaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v7

    if-eqz v7, :cond_d3

    .line 960
    const-string v7, "Unexpected event !"

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    invoke-static {v7, v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    .line 963
    :cond_d3
    sget-object v4, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    .line 964
    .restart local v4       #timeout:Ljavax/sip/Timeout;
    const/4 v2, 0x0

    .line 966
    .restart local v2       #ev:Ljavax/sip/TimeoutEvent;
    instance-of v7, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v7, :cond_e9

    .line 967
    new-instance v2, Ljavax/sip/TimeoutEvent;

    .end local v2           #ev:Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax/sip/ServerTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    .line 973
    .restart local v2       #ev:Ljavax/sip/TimeoutEvent;
    :goto_e2
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v1           #errorObject:Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_49

    .line 970
    .restart local v1       #errorObject:Ljava/lang/Object;
    :cond_e9
    new-instance v2, Ljavax/sip/TimeoutEvent;

    .end local v2           #ev:Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax/sip/ClientTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    .restart local v2       #ev:Ljavax/sip/TimeoutEvent;
    goto :goto_e2
.end method
