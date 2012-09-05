.class Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;
.super Lcom/android/email/mail/store/SncImapStore$ImapFolder;
.source "SncImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/SncImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapFolderIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/mail/store/SncImapStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/SncImapStore;Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "store"
    .parameter "name"

    .prologue
    .line 2303
    iput-object p1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/SncImapStore;

    .line 2304
    invoke-direct {p0, p2, p3}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;-><init>(Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)V

    .line 2305
    return-void
.end method


# virtual methods
.method public startIdling(Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;)V
    .registers 12
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2309
    const-string v7, "IDLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startIdling | Cap : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/SncImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/SncImapStore;

    const-string v8, "IDLE"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/SncImapStore;->isCapabilitySupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_190

    .line 2313
    :try_start_26
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-nez v7, :cond_32

    .line 2316
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/SncImapStore;->getConnection()Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    .line 2319
    :cond_32
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    iget-object v7, v7, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v7, :cond_42

    .line 2320
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    iget-object v7, v7, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v8, 0xdbba0

    invoke-interface {v7, v8}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 2325
    :cond_42
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v8, "IDLE"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 2328
    const/4 v2, 0x0

    .line 2330
    .local v2, expungeReceived:Z
    :cond_4b
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;
    invoke-static {v7}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->access$100(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)Lcom/android/email/mail/store/imap/ImapResponseParser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v4

    .line 2332
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-nez v7, :cond_16b

    .line 2333
    const/4 v7, 0x1

    const-string v8, "EXPUNGE"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 2336
    const-string v7, "IDLE"

    const-string v8, "Got EXPUNGE"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    const/4 v2, 0x1

    .line 2372
    :cond_6c
    :goto_6c
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v7

    if-nez v7, :cond_4b

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_75
    .catchall {:try_start_26 .. :try_end_75} :catchall_c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_26 .. :try_end_75} :catch_9b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_75} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_75} :catch_111

    move-result v7

    if-eqz v7, :cond_4b

    .line 2389
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->destroyResponses()V

    .line 2392
    const-string v7, "IDLE"

    const-string v8, "Got response for IDLE"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    :goto_82
    return-void

    .line 2338
    :cond_83
    const/4 v7, 0x1

    :try_start_84
    const-string v8, "EXISTS"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 2339
    if-eqz v2, :cond_c9

    .line 2340
    const/4 v2, 0x0

    .line 2341
    const-string v7, "IDLE"

    const-string v8, "Got EXISTS after EXPUNGE "

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageDeleted(I)V
    :try_end_9a
    .catchall {:try_start_84 .. :try_end_9a} :catchall_c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_84 .. :try_end_9a} :catch_9b
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_9a} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9a} :catch_111

    goto :goto_6c

    .line 2374
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_9b
    move-exception v5

    .line 2375
    .local v5, ste:Ljava/net/SocketTimeoutException;
    :try_start_9c
    const-string v7, "IDLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 2377
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const/16 v8, 0x55

    invoke-virtual {p0, v7, v8, v5}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->connectionExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_c4
    .catchall {:try_start_9c .. :try_end_c4} :catchall_c4

    .line 2389
    .end local v5           #ste:Ljava/net/SocketTimeoutException;
    :catchall_c4
    move-exception v7

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->destroyResponses()V

    throw v7

    .line 2344
    .restart local v2       #expungeReceived:Z
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_c9
    :try_start_c9
    const-string v7, "IDLE"

    const-string v8, "Got EXISTS"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    invoke-interface {p1}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageReceived()V
    :try_end_d3
    .catchall {:try_start_c9 .. :try_end_d3} :catchall_c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_c9 .. :try_end_d3} :catch_9b
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d3} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d3} :catch_111

    goto :goto_6c

    .line 2379
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_d4
    move-exception v3

    .line 2380
    .local v3, ioe:Ljava/io/IOException;
    :try_start_d5
    const-string v7, "IDLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 2382
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v7, v3}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_fb
    .catchall {:try_start_d5 .. :try_end_fb} :catchall_c4

    .line 2347
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v2       #expungeReceived:Z
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_fb
    const/4 v7, 0x1

    :try_start_fc
    const-string v8, "FETCH"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13a

    .line 2348
    const-string v7, "IDLE"

    const-string v8, "Got FETCH"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageFlagChanged(Lcom/android/emailcommon/mail/Message;)V
    :try_end_10f
    .catchall {:try_start_fc .. :try_end_10f} :catchall_c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_fc .. :try_end_10f} :catch_9b
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_10f} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_10f} :catch_111

    goto/16 :goto_6c

    .line 2383
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_111
    move-exception v1

    .line 2384
    .local v1, e:Ljava/lang/Exception;
    :try_start_112
    const-string v7, "IDLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2386
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const/16 v8, 0x26

    invoke-virtual {p0, v7, v8, v1}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->connectionExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_13a
    .catchall {:try_start_112 .. :try_end_13a} :catchall_c4

    .line 2350
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #expungeReceived:Z
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_13a
    :try_start_13a
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v7

    if-eqz v7, :cond_149

    .line 2351
    const-string v7, "IDLE"

    const-string v8, "Got continuation request"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6c

    .line 2353
    :cond_149
    const-string v7, "IDLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TODO - Unexpected response - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6c

    .line 2359
    :cond_16b
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 2360
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-nez v7, :cond_18b

    .line 2361
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2362
    .local v6, toString:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2363
    .local v0, alert:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->destroyResponses()V
    :try_end_186
    .catchall {:try_start_13a .. :try_end_186} :catchall_c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_13a .. :try_end_186} :catch_9b
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_186} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_186} :catch_111

    .line 2389
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->destroyResponses()V

    goto/16 :goto_82

    .end local v0           #alert:Ljava/lang/String;
    .end local v6           #toString:Ljava/lang/String;
    :cond_18b
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->destroyResponses()V

    goto/16 :goto_82

    .line 2394
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_190
    const-string v7, "IDLE"

    const-string v8, "IDLE not supported but required"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x18

    const-string v9, "IDLE not supported but required"

    invoke-direct {v7, v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v7
.end method

.method public stopIdling()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2410
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-eqz v2, :cond_c

    .line 2411
    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v3, "DONE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->sendContinuationCommand(Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_34

    .line 2422
    :cond_c
    :goto_c
    return-void

    .line 2414
    :catch_d
    move-exception v1

    .line 2415
    .local v1, ioe:Ljava/io/IOException;
    const-string v2, "IDLE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO Exception occured - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2417
    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v2, v1}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2

    .line 2418
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_34
    move-exception v0

    .line 2419
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "IDLE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method
