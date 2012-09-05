.class Lgov/nist/javax/sip/DialogFilter;
.super Ljava/lang/Object;
.source "DialogFilter.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/ServerRequestInterface;
.implements Lgov/nist/javax/sip/stack/ServerResponseInterface;


# instance fields
.field protected listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field protected transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .registers 2
    .parameter "sipStack"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 100
    return-void
.end method

.method private sendBadRequestResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V
    .registers 9
    .parameter "sipRequest"
    .parameter "transaction"
    .parameter "reasonPhrase"

    .prologue
    .line 141
    const/16 v3, 0x190

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 142
    .local v2, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    if-eqz p3, :cond_b

    .line 143
    invoke-virtual {v2, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 144
    :cond_b
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 145
    .local v1, serverHeader:Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_14

    .line 146
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 149
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 150
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 152
    :cond_25
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 153
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_2c

    .line 160
    :goto_2b
    return-void

    .line 154
    :catch_2c
    move-exception v0

    .line 155
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 157
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_2b
.end method

.method private sendCallOrTransactionDoesNotExistResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 8
    .parameter "sipRequest"
    .parameter "transaction"

    .prologue
    .line 172
    const/16 v3, 0x1e1

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 175
    .local v2, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 176
    .local v1, serverHeader:Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_f

    .line 177
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 180
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 181
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 183
    :cond_20
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 184
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_26} :catch_27

    .line 192
    :goto_26
    return-void

    .line 185
    :catch_27
    move-exception v0

    .line 186
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 187
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 188
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_26
.end method

.method private sendLoopDetectedResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 8
    .parameter "sipRequest"
    .parameter "transaction"

    .prologue
    .line 202
    const/16 v3, 0x1e2

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 204
    .local v2, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 205
    .local v1, serverHeader:Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_f

    .line 206
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 209
    :cond_f
    :try_start_f
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 210
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 211
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    .line 219
    :goto_1a
    return-void

    .line 212
    :catch_1b
    move-exception v0

    .line 213
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 214
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 215
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_1a
.end method

.method private sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 9
    .parameter "sipRequest"
    .parameter "transaction"

    .prologue
    .line 110
    const/16 v4, 0x1eb

    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 111
    .local v3, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v2

    .line 112
    .local v2, serverHeader:Ljavax/sip/header/ServerHeader;
    if-eqz v2, :cond_f

    .line 113
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 116
    :cond_f
    :try_start_f
    new-instance v1, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    .line 117
    .local v1, retryAfter:Lgov/nist/javax/sip/header/RetryAfter;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 118
    invoke-virtual {v3, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 119
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 120
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 122
    :cond_2c
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 123
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_32} :catch_33

    .line 129
    .end local v1           #retryAfter:Lgov/nist/javax/sip/header/RetryAfter;
    :goto_32
    return-void

    .line 124
    :catch_33
    move-exception v0

    .line 125
    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Problem sending error response"

    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 127
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_32
.end method

.method private sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 9
    .parameter "sipRequest"
    .parameter "transaction"

    .prologue
    .line 230
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 231
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Sending 500 response for out of sequence message"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 233
    :cond_13
    const/16 v4, 0x1f4

    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 234
    .local v3, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    const-string v4, "Request out of order"

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 236
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v2

    .line 237
    .local v2, serverHeader:Ljavax/sip/header/ServerHeader;
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 241
    .end local v2           #serverHeader:Ljavax/sip/header/ServerHeader;
    :cond_2b
    :try_start_2b
    new-instance v1, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    .line 242
    .local v1, retryAfter:Lgov/nist/javax/sip/header/RetryAfter;
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 243
    invoke-virtual {v3, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 244
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 245
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 246
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_43} :catch_44

    .line 252
    .end local v1           #retryAfter:Lgov/nist/javax/sip/header/RetryAfter;
    :goto_43
    return-void

    .line 247
    :catch_44
    move-exception v0

    .line 248
    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Problem sending response"

    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 249
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 250
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_43
.end method


# virtual methods
.method public getProcessingInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1260
    const/4 v0, 0x0

    return-object v0
.end method

.method public processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .registers 45
    .parameter "sipRequest"
    .parameter "incomingMessageChannel"

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_68

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "PROCESSING INCOMING REQUEST "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " transactionChannel = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " listening point = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ":"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 267
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    if-nez v38, :cond_8c

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_8b

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Dropping message: No listening point registered!"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1109
    :cond_8b
    :goto_8b
    return-void

    .line 274
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v33

    check-cast v33, Lgov/nist/javax/sip/SipStackImpl;

    .line 276
    .local v33, sipStack:Lgov/nist/javax/sip/SipStackImpl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v31

    .line 277
    .local v31, sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v31, :cond_b4

    .line 278
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_8b

    .line 279
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "No provider - dropping !!"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_8b

    .line 283
    :cond_b4
    if-nez v33, :cond_bb

    .line 284
    const-string v38, "Egads! no sip stack!"

    invoke-static/range {v38 .. v38}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    .line 288
    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v36, v0

    check-cast v36, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 289
    .local v36, transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v36, :cond_e9

    .line 290
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_e9

    .line 291
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "transaction state = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 294
    :cond_e9
    const/16 v38, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v13

    .line 295
    .local v13, dialogId:Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v12

    .line 301
    .local v12, dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v12, :cond_1a0

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_1a0

    .line 302
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getMyContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v6

    .line 303
    .local v6, contact:Lgov/nist/javax/sip/header/Contact;
    if-eqz v6, :cond_1a0

    .line 304
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v38

    check-cast v38, Lgov/nist/javax/sip/address/SipUri;

    move-object/from16 v9, v38

    check-cast v9, Lgov/nist/javax/sip/address/SipUri;

    .line 305
    .local v9, contactUri:Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v9}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v19

    .line 306
    .local v19, ipAddress:Ljava/lang/String;
    invoke-virtual {v9}, Lgov/nist/javax/sip/address/SipUri;->getPort()I

    move-result v7

    .line 307
    .local v7, contactPort:I
    invoke-virtual {v9}, Lgov/nist/javax/sip/address/SipUri;->getTransportParam()Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, contactTransport:Ljava/lang/String;
    if-nez v8, :cond_129

    .line 309
    const-string v8, "udp"

    .line 310
    :cond_129
    const/16 v38, -0x1

    move/from16 v0, v38

    if-ne v7, v0, :cond_145

    .line 311
    const-string v38, "udp"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_143

    const-string v38, "tcp"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1c7

    .line 312
    :cond_143
    const/16 v7, 0x13c4

    .line 319
    :cond_145
    :goto_145
    if-eqz v19, :cond_1a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_169

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v38

    move/from16 v0, v38

    if-eq v7, v0, :cond_1a0

    .line 322
    :cond_169
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_19f

    .line 323
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "nulling dialog -- listening point mismatch!  "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "  lp port = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 328
    :cond_19f
    const/4 v12, 0x0

    .line 343
    .end local v6           #contact:Lgov/nist/javax/sip/header/Contact;
    .end local v7           #contactPort:I
    .end local v8           #contactTransport:Ljava/lang/String;
    .end local v9           #contactUri:Lgov/nist/javax/sip/address/SipUri;
    .end local v19           #ipAddress:Ljava/lang/String;
    :cond_1a0
    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_1cb

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_1cb

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v38

    if-nez v38, :cond_1cb

    .line 346
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findMergedTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v32

    .line 348
    .local v32, sipServerTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v32, :cond_1cb

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendLoopDetectedResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_8b

    .line 314
    .end local v32           #sipServerTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v6       #contact:Lgov/nist/javax/sip/header/Contact;
    .restart local v7       #contactPort:I
    .restart local v8       #contactTransport:Ljava/lang/String;
    .restart local v9       #contactUri:Lgov/nist/javax/sip/address/SipUri;
    .restart local v19       #ipAddress:Ljava/lang/String;
    :cond_1c7
    const/16 v7, 0x13c5

    goto/16 :goto_145

    .line 354
    .end local v6           #contact:Lgov/nist/javax/sip/header/Contact;
    .end local v7           #contactPort:I
    .end local v8           #contactTransport:Ljava/lang/String;
    .end local v9           #contactUri:Lgov/nist/javax/sip/address/SipUri;
    .end local v19           #ipAddress:Ljava/lang/String;
    :cond_1cb
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_209

    .line 355
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "dialogId = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "dialog = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 368
    :cond_209
    const-string v38, "Route"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v38

    if-eqz v38, :cond_292

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v38

    if-eqz v38, :cond_292

    .line 369
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v28

    .line 370
    .local v28, routes:Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual/range {v28 .. v28}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v27

    check-cast v27, Lgov/nist/javax/sip/header/Route;

    .line 371
    .local v27, route:Lgov/nist/javax/sip/header/Route;
    invoke-virtual/range {v27 .. v27}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v37

    check-cast v37, Lgov/nist/javax/sip/address/SipUri;

    .line 373
    .local v37, uri:Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lgov/nist/core/HostPort;->hasPort()Z

    move-result v38

    if-eqz v38, :cond_2c3

    .line 374
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lgov/nist/core/HostPort;->getPort()I

    move-result v25

    .line 381
    .local v25, port:I
    :goto_241
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v18

    .line 382
    .local v18, host:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_26d

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getSentBy()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_292

    :cond_26d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    if-ne v0, v1, :cond_292

    .line 385
    invoke-virtual/range {v28 .. v28}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2dd

    .line 386
    const-string v38, "Route"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    .line 392
    .end local v18           #host:Ljava/lang/String;
    .end local v25           #port:I
    .end local v27           #route:Lgov/nist/javax/sip/header/Route;
    .end local v28           #routes:Lgov/nist/javax/sip/header/RouteList;
    .end local v37           #uri:Lgov/nist/javax/sip/address/SipUri;
    :cond_292
    :goto_292
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "REFER"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_349

    if-eqz v12, :cond_349

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_349

    .line 398
    const-string v38, "Refer-To"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v30

    check-cast v30, Ljavax/sip/header/ReferToHeader;

    .line 399
    .local v30, sipHeader:Ljavax/sip/header/ReferToHeader;
    if-nez v30, :cond_2e1

    .line 400
    const-string v38, "Refer-To header is missing"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/DialogFilter;->sendBadRequestResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    goto/16 :goto_8b

    .line 376
    .end local v30           #sipHeader:Ljavax/sip/header/ReferToHeader;
    .restart local v27       #route:Lgov/nist/javax/sip/header/Route;
    .restart local v28       #routes:Lgov/nist/javax/sip/header/RouteList;
    .restart local v37       #uri:Lgov/nist/javax/sip/address/SipUri;
    :cond_2c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v38

    const-string v39, "TLS"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2d9

    .line 377
    const/16 v25, 0x13c5

    .restart local v25       #port:I
    goto/16 :goto_241

    .line 379
    .end local v25           #port:I
    :cond_2d9
    const/16 v25, 0x13c4

    .restart local v25       #port:I
    goto/16 :goto_241

    .line 388
    .restart local v18       #host:Ljava/lang/String;
    :cond_2dd
    invoke-virtual/range {v28 .. v28}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    goto :goto_292

    .line 410
    .end local v18           #host:Ljava/lang/String;
    .end local v25           #port:I
    .end local v27           #route:Lgov/nist/javax/sip/header/Route;
    .end local v28           #routes:Lgov/nist/javax/sip/header/RouteList;
    .end local v37           #uri:Lgov/nist/javax/sip/address/SipUri;
    .restart local v30       #sipHeader:Ljavax/sip/header/ReferToHeader;
    :cond_2e1
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v21

    .line 411
    .local v21, lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v21, :cond_38b

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_38b

    .line 412
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v20

    check-cast v20, Lgov/nist/javax/sip/message/SIPRequest;

    .line 413
    .local v20, lastRequest:Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, v21

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move/from16 v38, v0

    if-eqz v38, :cond_318

    .line 414
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v38

    if-nez v38, :cond_38b

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "INVITE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_38b

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_8b

    .line 419
    :cond_318
    move-object/from16 v0, v21

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move/from16 v38, v0

    if-eqz v38, :cond_38b

    .line 420
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v10

    .line 421
    .local v10, cseqno:J
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v22

    .line 422
    .local v22, method:Ljava/lang/String;
    const-string v38, "INVITE"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_38b

    invoke-virtual {v12, v10, v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v38

    if-nez v38, :cond_38b

    .line 423
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_8b

    .line 429
    .end local v10           #cseqno:J
    .end local v20           #lastRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v21           #lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v22           #method:Ljava/lang/String;
    .end local v30           #sipHeader:Ljavax/sip/header/ReferToHeader;
    :cond_349
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "UPDATE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_368

    .line 435
    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_38b

    if-nez v12, :cond_38b

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendCallOrTransactionDoesNotExistResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_8b

    .line 439
    :cond_368
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "ACK"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_604

    .line 441
    if-eqz v36, :cond_462

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v38

    if-eqz v38, :cond_462

    .line 444
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_38b

    .line 445
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Processing ACK for INVITE Tx "

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 858
    :cond_38b
    :goto_38b
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_3bb

    .line 859
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "CHECK FOR OUT OF SEQ MESSAGE "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " transaction "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 863
    :cond_3bb
    if-eqz v12, :cond_aaf

    if-eqz v36, :cond_aaf

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "BYE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_aaf

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "CANCEL"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_aaf

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "ACK"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_aaf

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "PRACK"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_aaf

    .line 868
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v38

    if-nez v38, :cond_a8f

    .line 878
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_429

    .line 879
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Dropping out of sequence message "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 887
    :cond_429
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v38

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v40

    cmp-long v38, v38, v40

    if-ltz v38, :cond_8b

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_8b

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_457

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_8b

    .line 891
    :cond_457
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_8b

    .line 448
    :cond_462
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_484

    .line 449
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Processing ACK for dialog "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 451
    :cond_484
    if-nez v12, :cond_507

    .line 452
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_4b6

    .line 453
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Dialog does not exist "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " isServerTransaction = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 458
    :cond_4b6
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v34

    .line 460
    .local v34, st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v34, :cond_4c7

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    move-result v38

    if-eqz v38, :cond_4c7

    .line 461
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    .line 469
    :cond_4c7
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v5

    .line 475
    .local v5, ackTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v5, :cond_38b

    .line 476
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_4e0

    .line 477
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Found Tx pending ACK"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 479
    :cond_4e0
    :try_start_4e0
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setAckSeen()V

    .line 480
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 481
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    :try_end_4ed
    .catch Ljava/lang/Exception; {:try_start_4e0 .. :try_end_4ed} :catch_4ef

    goto/16 :goto_8b

    .line 482
    :catch_4ef
    move-exception v17

    .line 483
    .local v17, ex:Ljava/lang/Exception;
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_8b

    .line 484
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Problem terminating transaction"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_8b

    .line 492
    .end local v5           #ackTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v17           #ex:Ljava/lang/Exception;
    .end local v34           #st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_507
    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->handleAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    move-result v38

    if-nez v38, :cond_5b5

    .line 493
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v38

    if-nez v38, :cond_566

    .line 494
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_553

    .line 495
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Dialog exists with loose dialog validation "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " isServerTransaction = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " dialog = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 502
    :cond_553
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v34

    .line 504
    .restart local v34       #st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v34, :cond_38b

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    move-result v38

    if-eqz v38, :cond_38b

    .line 505
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    goto/16 :goto_38b

    .line 509
    .end local v34           #st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_566
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_575

    .line 510
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Dropping ACK - cannot find a transaction or dialog"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 513
    :cond_575
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v5

    .line 515
    .restart local v5       #ackTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v5, :cond_8b

    .line 516
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_58e

    .line 517
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Found Tx pending ACK"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 519
    :cond_58e
    :try_start_58e
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setAckSeen()V

    .line 520
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 521
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    :try_end_59b
    .catch Ljava/lang/Exception; {:try_start_58e .. :try_end_59b} :catch_59d

    goto/16 :goto_8b

    .line 522
    :catch_59d
    move-exception v17

    .line 523
    .restart local v17       #ex:Ljava/lang/Exception;
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_8b

    .line 524
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Problem terminating transaction"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_8b

    .line 532
    .end local v5           #ackTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v17           #ex:Ljava/lang/Exception;
    :cond_5b5
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    .line 533
    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 535
    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "INVITE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_5e2

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_5e2

    .line 538
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 545
    :cond_5e2
    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5f9

    .line 547
    :try_start_5ea
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 548
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->scheduleAckRemoval()V
    :try_end_5f4
    .catch Ljava/io/IOException; {:try_start_5ea .. :try_end_5f4} :catch_5f6

    goto/16 :goto_38b

    .line 549
    :catch_5f6
    move-exception v38

    goto/16 :goto_38b

    .line 553
    :cond_5f9
    const/16 v38, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setMapped(Z)V

    goto/16 :goto_38b

    .line 559
    :cond_604
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "PRACK"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_6fd

    .line 568
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_632

    .line 569
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Processing PRACK for dialog "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 571
    :cond_632
    if-nez v12, :cond_6a7

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_6a7

    .line 572
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_66a

    .line 573
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Dialog does not exist "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " isServerTransaction = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 578
    :cond_66a
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_679

    .line 579
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Sending 481 for PRACK - automatic dialog support is enabled -- cant find dialog!"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 584
    :cond_679
    const/16 v38, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v23

    .line 588
    .local v23, notExist:Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_683
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_68a
    .catch Ljavax/sip/SipException; {:try_start_683 .. :try_end_68a} :catch_698

    .line 592
    :goto_68a
    if-eqz v36, :cond_8b

    .line 593
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 594
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_8b

    .line 589
    :catch_698
    move-exception v14

    .line 590
    .local v14, e:Ljavax/sip/SipException;
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "error sending response"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-interface {v0, v1, v14}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_68a

    .line 598
    .end local v14           #e:Ljavax/sip/SipException;
    .end local v23           #notExist:Lgov/nist/javax/sip/message/SIPResponse;
    :cond_6a7
    if-eqz v12, :cond_6ec

    .line 599
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->handlePrack(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v38

    if-nez v38, :cond_6ce

    .line 600
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_6c0

    .line 601
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Dropping out of sequence PRACK "

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 602
    :cond_6c0
    if-eqz v36, :cond_8b

    .line 603
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 604
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_8b

    .line 609
    :cond_6ce
    :try_start_6ce
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 610
    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 611
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 612
    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_6e4
    .catch Ljava/lang/Exception; {:try_start_6ce .. :try_end_6e4} :catch_6e6

    goto/16 :goto_38b

    .line 613
    :catch_6e6
    move-exception v17

    .line 614
    .restart local v17       #ex:Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_38b

    .line 618
    .end local v17           #ex:Ljava/lang/Exception;
    :cond_6ec
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_38b

    .line 619
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Processing PRACK without a DIALOG -- this must be a proxy element"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_38b

    .line 623
    :cond_6fd
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "BYE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_823

    .line 625
    if-eqz v12, :cond_779

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v38

    if-nez v38, :cond_779

    .line 626
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_749

    .line 627
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Dropping out of sequence BYE "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 631
    :cond_749
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v38

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v40

    cmp-long v38, v38, v40

    if-ltz v38, :cond_76e

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_76e

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 638
    :cond_76e
    if-eqz v36, :cond_8b

    .line 639
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_8b

    .line 642
    :cond_779
    if-nez v12, :cond_7cb

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_7cb

    .line 652
    const/16 v38, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v26

    .line 654
    .local v26, response:Lgov/nist/javax/sip/message/SIPResponse;
    const-string v38, "Dialog Not Found"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_7a3

    .line 657
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "dropping request -- automatic dialog support enabled and dialog does not exist!"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 661
    :cond_7a3
    :try_start_7a3
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_7aa
    .catch Ljavax/sip/SipException; {:try_start_7a3 .. :try_end_7aa} :catch_7ba

    .line 666
    :goto_7aa
    if-eqz v36, :cond_8b

    .line 667
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 668
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 669
    const/16 v36, 0x0

    goto/16 :goto_8b

    .line 662
    :catch_7ba
    move-exception v17

    .line 663
    .local v17, ex:Ljavax/sip/SipException;
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Error in sending response"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7aa

    .line 679
    .end local v17           #ex:Ljavax/sip/SipException;
    .end local v26           #response:Lgov/nist/javax/sip/message/SIPResponse;
    :cond_7cb
    if-eqz v36, :cond_7ea

    if-eqz v12, :cond_7ea

    .line 681
    :try_start_7cf
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_7ea

    .line 682
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 683
    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 684
    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_7ea
    .catch Ljava/io/IOException; {:try_start_7cf .. :try_end_7ea} :catch_81e

    .line 691
    :cond_7ea
    :goto_7ea
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_38b

    .line 692
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "BYE Tx = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " isMapped ="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_38b

    .line 687
    :catch_81e
    move-exception v17

    .line 688
    .local v17, ex:Ljava/io/IOException;
    invoke-static/range {v17 .. v17}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_7ea

    .line 697
    .end local v17           #ex:Ljava/io/IOException;
    :cond_823
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "CANCEL"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_96f

    .line 699
    const/16 v38, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v34

    check-cast v34, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 701
    .restart local v34       #st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_87d

    .line 702
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Got a CANCEL, InviteServerTx = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " cancel Server Tx ID = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " isMapped = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 710
    :cond_87d
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "CANCEL"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_8f5

    .line 714
    if-eqz v34, :cond_8d1

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_8d1

    .line 718
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_8a6

    .line 719
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Too late to cancel Transaction"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 723
    :cond_8a6
    const/16 v38, 0xc8

    :try_start_8a8
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_8b7
    .catch Ljava/lang/Exception; {:try_start_8a8 .. :try_end_8b7} :catch_8b9

    goto/16 :goto_8b

    .line 724
    :catch_8b9
    move-exception v17

    .line 725
    .local v17, ex:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v38

    if-eqz v38, :cond_8b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v38

    move-object/from16 v0, v38

    instance-of v0, v0, Ljava/io/IOException;

    move/from16 v38, v0

    if-eqz v38, :cond_8b

    .line 726
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    goto/16 :goto_8b

    .line 731
    .end local v17           #ex:Ljava/lang/Exception;
    :cond_8d1
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_8f5

    .line 732
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cancel transaction = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 735
    :cond_8f5
    if-eqz v36, :cond_932

    if-eqz v34, :cond_932

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v38

    if-eqz v38, :cond_932

    .line 738
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v38

    check-cast v38, Lgov/nist/javax/sip/stack/SIPDialog;

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v12

    .end local v12           #dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    check-cast v12, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 769
    .restart local v12       #dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_912
    if-eqz v34, :cond_38b

    .line 771
    if-eqz v36, :cond_38b

    .line 772
    :try_start_916
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 773
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 774
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setInviteTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 777
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z
    :try_end_92a
    .catch Ljava/lang/Exception; {:try_start_916 .. :try_end_92a} :catch_92c

    goto/16 :goto_38b

    .line 781
    :catch_92c
    move-exception v17

    .line 782
    .restart local v17       #ex:Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_38b

    .line 740
    .end local v17           #ex:Ljava/lang/Exception;
    :cond_932
    if-nez v34, :cond_912

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_912

    if-eqz v36, :cond_912

    .line 747
    const/16 v38, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v26

    .line 749
    .restart local v26       #response:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_955

    .line 750
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "dropping request -- automatic dialog support enabled and INVITE ST does not exist!"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 755
    :cond_955
    :try_start_955
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_95c
    .catch Ljavax/sip/SipException; {:try_start_955 .. :try_end_95c} :catch_96a

    .line 759
    :goto_95c
    if-eqz v36, :cond_8b

    .line 760
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 761
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_8b

    .line 756
    :catch_96a
    move-exception v17

    .line 757
    .local v17, ex:Ljavax/sip/SipException;
    invoke-static/range {v17 .. v17}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_95c

    .line 785
    .end local v17           #ex:Ljavax/sip/SipException;
    .end local v26           #response:Lgov/nist/javax/sip/message/SIPResponse;
    .end local v34           #st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_96f
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "INVITE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_38b

    .line 786
    if-nez v12, :cond_9ed

    const/16 v21, 0x0

    .line 797
    .restart local v21       #lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;
    :goto_97f
    if-eqz v12, :cond_9f2

    if-eqz v36, :cond_9f2

    if-eqz v21, :cond_9f2

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v38

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v40

    cmp-long v38, v38, v40

    if-lez v38, :cond_9f2

    move-object/from16 v0, v21

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move/from16 v38, v0

    if-eqz v38, :cond_9f2

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_9f2

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v38

    if-eqz v38, :cond_9f2

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v38

    if-eqz v38, :cond_9f2

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_9f2

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_9f2

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_9f2

    .line 807
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_9e2

    .line 808
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Sending 500 response for out of sequence message"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 811
    :cond_9e2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_8b

    .line 786
    .end local v21           #lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_9ed
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v21

    goto :goto_97f

    .line 821
    .restart local v21       #lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_9f2
    if-nez v12, :cond_a52

    const/16 v21, 0x0

    .line 823
    :goto_9f6
    if-eqz v12, :cond_a57

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_a57

    if-eqz v21, :cond_a57

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v38

    if-eqz v38, :cond_a57

    move-object/from16 v0, v21

    instance-of v0, v0, Ljavax/sip/ClientTransaction;

    move/from16 v38, v0

    if-eqz v38, :cond_a57

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v38

    if-eqz v38, :cond_a57

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v38

    const/16 v39, 0xc8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_a57

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v38

    move-wide/from16 v0, v38

    invoke-virtual {v12, v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v38

    if-nez v38, :cond_a57

    .line 832
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_a47

    .line 833
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Sending 491 response for client Dialog ACK not sent."

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 836
    :cond_a47
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_8b

    .line 821
    :cond_a52
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v21

    goto :goto_9f6

    .line 840
    :cond_a57
    if-eqz v12, :cond_38b

    if-eqz v21, :cond_38b

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_38b

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v38

    if-eqz v38, :cond_38b

    move-object/from16 v0, v21

    instance-of v0, v0, Ljavax/sip/ServerTransaction;

    move/from16 v38, v0

    if-eqz v38, :cond_38b

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v38

    if-nez v38, :cond_38b

    .line 844
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_a84

    .line 845
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Sending 491 response for server Dialog ACK not seen."

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 848
    :cond_a84
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_8b

    .line 898
    .end local v21           #lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_a8f
    :try_start_a8f
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_aaf

    .line 899
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 901
    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 902
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 903
    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_aaf
    .catch Ljava/io/IOException; {:try_start_a8f .. :try_end_aaf} :catch_b66

    .line 916
    :cond_aaf
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_adb

    .line 917
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " transaction.isMapped = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 935
    :cond_adb
    if-nez v12, :cond_ce0

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "NOTIFY"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_ce0

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v24

    .line 940
    .local v24, pendingSubscribeClientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_b1d

    .line 941
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "PROCESSING NOTIFY  DIALOG == null "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 951
    :cond_b1d
    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_b73

    if-nez v24, :cond_b73

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    move/from16 v38, v0

    if-nez v38, :cond_b73

    .line 959
    :try_start_b2d
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_b3c

    .line 960
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Could not find Subscription for Notify Tx."

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 963
    :cond_b3c
    const/16 v38, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v15

    .line 965
    .local v15, errorResponse:Ljavax/sip/message/Response;
    const-string v38, "Subscription does not exist"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Ljavax/sip/message/Response;->setReasonPhrase(Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_b52
    .catch Ljava/lang/Exception; {:try_start_b2d .. :try_end_b52} :catch_b54

    goto/16 :goto_8b

    .line 969
    .end local v15           #errorResponse:Ljavax/sip/message/Response;
    :catch_b54
    move-exception v17

    .line 970
    .local v17, ex:Ljava/lang/Exception;
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Exception while sending error response statelessly"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_8b

    .line 906
    .end local v17           #ex:Ljava/lang/Exception;
    .end local v24           #pendingSubscribeClientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :catch_b66
    move-exception v17

    .line 907
    .local v17, ex:Ljava/io/IOException;
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    .line 908
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_8b

    .line 980
    .end local v17           #ex:Ljava/io/IOException;
    .restart local v24       #pendingSubscribeClientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_b73
    if-eqz v24, :cond_cbc

    .line 986
    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPendingSubscribe(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    .line 990
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v35

    .line 994
    .local v35, subscriptionDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v35, :cond_b94

    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_b94

    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_c66

    .line 1000
    :cond_b94
    if-eqz v35, :cond_c5e

    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v38

    if-nez v38, :cond_c5e

    .line 1001
    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 1006
    :goto_ba1
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_bc5

    .line 1007
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "PROCESSING NOTIFY Subscribe DIALOG "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1013
    :cond_bc5
    if-nez v35, :cond_bf5

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-nez v38, :cond_bd3

    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v38

    if-eqz v38, :cond_bf5

    .line 1016
    :cond_bd3
    const-string v38, "Event"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v16

    check-cast v16, Lgov/nist/javax/sip/header/Event;

    .line 1017
    .local v16, event:Lgov/nist/javax/sip/header/Event;
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/header/Event;->getEventType()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->isEventForked(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_bf5

    .line 1019
    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->createFromNOTIFY(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v35

    .line 1025
    .end local v16           #event:Lgov/nist/javax/sip/header/Event;
    :cond_bf5
    if-eqz v35, :cond_c3c

    .line 1026
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1027
    sget-object v38, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    invoke-virtual/range {v38 .. v38}, Ljavax/sip/DialogState;->getValue()I

    move-result v38

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1028
    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 1029
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v38

    if-nez v38, :cond_c3c

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1037
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 1039
    :try_start_c2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_c3c
    .catch Ljava/lang/Exception; {:try_start_c2f .. :try_end_c3c} :catch_d0a

    .line 1068
    :cond_c3c
    :goto_c3c
    if-eqz v36, :cond_caa

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v38

    if-eqz v38, :cond_caa

    .line 1073
    new-instance v29, Ljavax/sip/RequestEvent;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    move-object/from16 v3, v35

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .line 1107
    .end local v24           #pendingSubscribeClientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v35           #subscriptionDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    .local v29, sipEvent:Ljavax/sip/RequestEvent;
    :goto_c53
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_8b

    .line 1004
    .end local v29           #sipEvent:Ljavax/sip/RequestEvent;
    .restart local v24       #pendingSubscribeClientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v35       #subscriptionDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_c5e
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v35

    goto/16 :goto_ba1

    .line 1048
    :cond_c66
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1049
    move-object/from16 v12, v35

    .line 1050
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v38

    if-nez v38, :cond_c92

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1055
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 1057
    :try_start_c85
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_c92
    .catch Ljava/lang/Exception; {:try_start_c85 .. :try_end_c92} :catch_d08

    .line 1061
    :cond_c92
    :goto_c92
    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 1062
    if-eqz v24, :cond_c3c

    .line 1063
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1064
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_c3c

    .line 1081
    :cond_caa
    new-instance v29, Ljavax/sip/RequestEvent;

    const/16 v38, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v38

    move-object/from16 v3, v35

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .restart local v29       #sipEvent:Ljavax/sip/RequestEvent;
    goto :goto_c53

    .line 1086
    .end local v29           #sipEvent:Ljavax/sip/RequestEvent;
    .end local v35           #subscriptionDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_cbc
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_ccb

    .line 1087
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "could not find subscribe tx"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1092
    :cond_ccb
    new-instance v29, Ljavax/sip/RequestEvent;

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .restart local v29       #sipEvent:Ljavax/sip/RequestEvent;
    goto/16 :goto_c53

    .line 1099
    .end local v24           #pendingSubscribeClientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v29           #sipEvent:Ljavax/sip/RequestEvent;
    :cond_ce0
    if-eqz v36, :cond_cf7

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v38

    if-eqz v38, :cond_cf7

    .line 1101
    new-instance v29, Ljavax/sip/RequestEvent;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v12, v3}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .restart local v29       #sipEvent:Ljavax/sip/RequestEvent;
    goto/16 :goto_c53

    .line 1104
    .end local v29           #sipEvent:Ljavax/sip/RequestEvent;
    :cond_cf7
    new-instance v29, Ljavax/sip/RequestEvent;

    const/16 v38, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v38

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v12, v3}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .restart local v29       #sipEvent:Ljavax/sip/RequestEvent;
    goto/16 :goto_c53

    .line 1058
    .end local v29           #sipEvent:Ljavax/sip/RequestEvent;
    .restart local v24       #pendingSubscribeClientTx:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v35       #subscriptionDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    :catch_d08
    move-exception v38

    goto :goto_c92

    .line 1040
    :catch_d0a
    move-exception v38

    goto/16 :goto_c3c
.end method

.method public processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .registers 19
    .parameter "sipResponse"
    .parameter "incomingChannel"

    .prologue
    .line 1270
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 1271
    .local v3, dialogID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    .line 1273
    .local v9, sipDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    .line 1274
    .local v5, method:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_43

    .line 1275
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PROCESSING INCOMING RESPONSE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1279
    :cond_43
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v12

    if-eqz v12, :cond_71

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/Utils;->responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v12

    if-nez v12, :cond_71

    .line 1280
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_70

    .line 1281
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Detected stray response -- dropping"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1436
    :cond_70
    :goto_70
    return-void

    .line 1286
    :cond_71
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v12, :cond_8f

    .line 1287
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_70

    .line 1288
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Dropping message: No listening point registered!"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_70

    .line 1293
    :cond_8f
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v10

    .line 1294
    .local v10, sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v10, :cond_b1

    .line 1295
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_70

    .line 1296
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Dropping message:  no provider"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_70

    .line 1301
    :cond_b1
    invoke-virtual {v10}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v12

    if-nez v12, :cond_cf

    .line 1302
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_70

    .line 1303
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Dropping message:  no sipListener registered!"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_70

    .line 1309
    :cond_cf
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v11, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1314
    .local v11, transaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-nez v9, :cond_e8

    if-eqz v11, :cond_e8

    .line 1315
    invoke-virtual {v11, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    .line 1316
    if-eqz v9, :cond_e8

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v12

    sget-object v13, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v12, v13, :cond_e8

    .line 1317
    const/4 v9, 0x0

    .line 1320
    :cond_e8
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_11a

    .line 1321
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transaction = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sipDialog = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1324
    :cond_11a
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v12, :cond_185

    .line 1325
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v12

    check-cast v12, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v12}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v6

    .line 1327
    .local v6, originalFrom:Ljava/lang/String;
    if-nez v6, :cond_158

    const/4 v12, 0x1

    :goto_131
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_15a

    const/4 v13, 0x1

    :goto_13c
    xor-int/2addr v12, v13

    if-eqz v12, :cond_15c

    .line 1328
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_70

    .line 1329
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "From tag mismatch -- dropping response"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_70

    .line 1327
    :cond_158
    const/4 v12, 0x0

    goto :goto_131

    :cond_15a
    const/4 v13, 0x0

    goto :goto_13c

    .line 1332
    :cond_15c
    if-eqz v6, :cond_185

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_185

    .line 1334
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_70

    .line 1335
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "From tag mismatch -- dropping response"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_70

    .line 1340
    .end local v6           #originalFrom:Ljava/lang/String;
    :cond_185
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-static {v5}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23f

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v12

    const/16 v13, 0x64

    if-eq v12, v13, :cond_23f

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_23f

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_23f

    if-nez v9, :cond_23f

    .line 1343
    invoke-virtual {v10}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v12

    if-eqz v12, :cond_1d9

    .line 1344
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v12, :cond_234

    .line 1345
    if-nez v9, :cond_1d9

    .line 1347
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v12, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object/from16 v0, p1

    invoke-virtual {v13, v12, v0}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    .line 1350
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1417
    :cond_1d9
    :goto_1d9
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_1f0

    .line 1418
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "sending response to TU for processing "

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1420
    :cond_1f0
    if-eqz v9, :cond_209

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v12

    const/16 v13, 0x64

    if-eq v12, v13, :cond_209

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_209

    .line 1422
    move-object/from16 v0, p1

    invoke-virtual {v9, v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1425
    :cond_209
    new-instance v8, Lgov/nist/javax/sip/ResponseEventExt;

    move-object/from16 v0, p1

    invoke-direct {v8, v10, v11, v9, v0}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    .line 1428
    .local v8, responseEvent:Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v12

    const-string v13, "INVITE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22f

    .line 1429
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v7

    .line 1431
    .local v7, originalTx:Lgov/nist/javax/sip/ClientTransactionExt;
    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    .line 1434
    .end local v7           #originalTx:Lgov/nist/javax/sip/ClientTransactionExt;
    :cond_22f
    invoke-virtual {v10, v8, v11}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_70

    .line 1354
    .end local v8           #responseEvent:Lgov/nist/javax/sip/ResponseEventExt;
    :cond_234
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    invoke-virtual {v12, v10, v0}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    goto :goto_1d9

    .line 1360
    :cond_23f
    if-eqz v9, :cond_1d9

    if-nez v11, :cond_1d9

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v12

    sget-object v13, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v12, v13, :cond_1d9

    .line 1362
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v12

    div-int/lit8 v12, v12, 0x64

    const/4 v13, 0x2

    if-eq v12, v13, :cond_282

    .line 1363
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_1d9

    .line 1364
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status code != 200 ; statusCode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1d9

    .line 1367
    :cond_282
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v12

    sget-object v13, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v12, v13, :cond_2db

    .line 1368
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_2a1

    .line 1369
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Dialog is terminated -- dropping response!"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1374
    :cond_2a1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v12

    div-int/lit8 v12, v12, 0x64

    const/4 v13, 0x2

    if-ne v12, v13, :cond_70

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v12

    const-string v13, "INVITE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_70

    .line 1377
    :try_start_2ba
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lgov/nist/javax/sip/stack/SIPDialog;->createAck(J)Ljavax/sip/message/Request;

    move-result-object v2

    .line 1379
    .local v2, ackRequest:Ljavax/sip/message/Request;
    invoke-virtual {v9, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;)V
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2c9} :catch_2cb

    goto/16 :goto_70

    .line 1380
    .end local v2           #ackRequest:Ljavax/sip/message/Request;
    :catch_2cb
    move-exception v4

    .line 1381
    .local v4, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Error creating ack"

    invoke-interface {v12, v13, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_70

    .line 1386
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_2db
    const/4 v1, 0x0

    .line 1387
    .local v1, ackAlreadySent:Z
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v12

    if-eqz v12, :cond_317

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v12

    if-eqz v12, :cond_317

    .line 1388
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v12

    invoke-virtual {v12}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_317

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_317

    .line 1393
    const/4 v1, 0x1

    .line 1397
    :cond_317
    if-eqz v1, :cond_1d9

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d9

    .line 1402
    :try_start_32b
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_342

    .line 1403
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "resending ACK"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1405
    :cond_342
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_345
    .catch Ljavax/sip/SipException; {:try_start_32b .. :try_end_345} :catch_347

    goto/16 :goto_70

    .line 1407
    :catch_347
    move-exception v12

    goto/16 :goto_1d9
.end method

.method public processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .registers 16
    .parameter "response"
    .parameter "incomingMessageChannel"
    .parameter "dialog"

    .prologue
    .line 1119
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1120
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PROCESSING INCOMING RESPONSE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1123
    :cond_28
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v8, :cond_40

    .line 1124
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1125
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dropping message: No listening point registered!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1250
    :cond_3f
    :goto_3f
    return-void

    .line 1130
    :cond_40
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v8

    invoke-virtual {v8, p1}, Lgov/nist/javax/sip/Utils;->responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v8

    if-nez v8, :cond_66

    .line 1131
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1132
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dropping response - topmost VIA header does not originate from this stack"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_3f

    .line 1140
    :cond_66
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    .line 1141
    .local v5, sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v5, :cond_82

    .line 1142
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1143
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dropping message:  no provider"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_3f

    .line 1147
    :cond_82
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    if-nez v8, :cond_9c

    .line 1148
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1149
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "No listener -- dropping response!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_3f

    .line 1154
    :cond_9c
    iget-object v7, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v7, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1155
    .local v7, transaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    iget-object v6, v5, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 1157
    .local v6, sipStackImpl:Lgov/nist/javax/sip/SipStackImpl;
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 1158
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1161
    :cond_c4
    if-nez v7, :cond_1ac

    .line 1166
    if-eqz p3, :cond_161

    .line 1167
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v8

    div-int/lit8 v8, v8, 0x64

    const/4 v9, 0x2

    if-eq v8, v9, :cond_e6

    .line 1168
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1169
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Response is not a final response and dialog is found for response -- dropping response!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 1175
    :cond_e6
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    sget-object v9, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v8, v9, :cond_103

    .line 1176
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1177
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dialog is terminated -- dropping response!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 1182
    :cond_103
    const/4 v0, 0x0

    .line 1183
    .local v0, ackAlreadySent:Z
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v8

    if-eqz v8, :cond_129

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v8

    if-eqz v8, :cond_129

    .line 1184
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_129

    .line 1187
    const/4 v0, 0x1

    .line 1191
    :cond_129
    if-eqz v0, :cond_161

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_161

    .line 1196
    :try_start_13d
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_150

    .line 1197
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Retransmission of OK detected: Resending last ACK"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1200
    :cond_150
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_153
    .catch Ljavax/sip/SipException; {:try_start_13d .. :try_end_153} :catch_155

    goto/16 :goto_3f

    .line 1202
    :catch_155
    move-exception v1

    .line 1204
    .local v1, ex:Ljavax/sip/SipException;
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "could not resend ack"

    invoke-interface {v8, v9, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1210
    .end local v0           #ackAlreadySent:Z
    .end local v1           #ex:Ljavax/sip/SipException;
    :cond_161
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_185

    .line 1211
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not find tx, handling statelessly Dialog =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1217
    :cond_185
    new-instance v4, Lgov/nist/javax/sip/ResponseEventExt;

    invoke-direct {v4, v5, v7, p3, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    .line 1220
    .local v4, sipEvent:Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a7

    .line 1221
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v2

    .line 1223
    .local v2, forked:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    .line 1226
    .end local v2           #forked:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_1a7
    invoke-virtual {v5, v4, v7}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_3f

    .line 1230
    .end local v4           #sipEvent:Lgov/nist/javax/sip/ResponseEventExt;
    :cond_1ac
    const/4 v3, 0x0

    .line 1233
    .local v3, responseEvent:Lgov/nist/javax/sip/ResponseEventExt;
    new-instance v3, Lgov/nist/javax/sip/ResponseEventExt;

    .end local v3           #responseEvent:Lgov/nist/javax/sip/ResponseEventExt;
    invoke-direct {v3, v5, v7, p3, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    .line 1235
    .restart local v3       #responseEvent:Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1cf

    .line 1236
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v2

    .line 1238
    .restart local v2       #forked:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    .line 1242
    .end local v2           #forked:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_1cf
    if-eqz p3, :cond_1e3

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_1e3

    .line 1244
    invoke-virtual {p3, v7, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1245
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p3, v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1248
    :cond_1e3
    invoke-virtual {v5, v3, v7}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_3f
.end method
