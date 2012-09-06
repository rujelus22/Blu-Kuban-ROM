.class Lcom/android/email/mail/store/ImapConnection;
.super Ljava/lang/Object;
.source "ImapConnection.java"


# instance fields
.field private mCapabilities:I

.field private final mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

.field private mIdPhrase:Ljava/lang/String;

.field private mImapStore:Lcom/android/email/mail/store/ImapStore;

.field private mLoginPhrase:Ljava/lang/String;

.field private final mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

.field mTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "store"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/mail/store/ImapConnection;->setStore(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private createParser()V
    .registers 4

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 216
    new-instance v0, Lcom/android/email/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v1}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 217
    return-void
.end method

.method private doGetNamespace(Z)V
    .registers 13
    .parameter "hasNamespaceCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 412
    if-eqz p1, :cond_6b

    iget-object v7, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/ImapStore;->isUserPrefixSet()Z

    move-result v7

    if-nez v7, :cond_6b

    .line 413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 416
    .local v6, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_10
    const-string v7, "NAMESPACE"

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_15
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_10 .. :try_end_15} :catch_5c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_6c

    move-result-object v6

    .line 426
    :cond_16
    :goto_16
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 427
    .local v5, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v7, "NAMESPACE"

    invoke-virtual {v5, v9, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 428
    invoke-virtual {v5, v10}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 429
    .local v3, namespaceList:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v3, v9}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    .line 430
    .local v2, namespace:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v2, v9}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, namespaceString:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 432
    iget-object v7, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore;->setPathPrefix(Ljava/lang/String;)V

    .line 433
    iget-object v7, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2, v10}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore;->setPathSeparator(Ljava/lang/String;)V

    goto :goto_1a

    .line 417
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #namespace:Lcom/android/email/mail/store/imap/ImapList;
    .end local v3           #namespaceList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v4           #namespaceString:Ljava/lang/String;
    .end local v5           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_5c
    move-exception v1

    .line 419
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_16

    .line 420
    const-string v7, "Email"

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 438
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v6           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_6b
    return-void

    .line 422
    .restart local v6       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_6c
    move-exception v7

    goto :goto_16
.end method

.method private doGetPathSeparator()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4}, Lcom/android/email/mail/store/ImapStore;->isUserPrefixSet()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 471
    .local v3, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_c
    const-string v4, "LIST \"\" \"\""

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_11
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_c .. :try_end_11} :catch_3a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_4a

    move-result-object v3

    .line 481
    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 482
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v4, 0x0

    const-string v5, "LIST"

    invoke-virtual {v2, v4, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 483
    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/mail/store/ImapStore;->setPathSeparator(Ljava/lang/String;)V

    goto :goto_16

    .line 472
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_3a
    move-exception v1

    .line 474
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_12

    .line 475
    const-string v4, "Email"

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 487
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v3           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_49
    return-void

    .line 477
    .restart local v3       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_4a
    move-exception v4

    goto :goto_12
.end method

.method private doLogin()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/AuthenticationFailedException;
        }
    .end annotation

    .prologue
    .line 448
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_6
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_6} :catch_1f

    .line 458
    return-void

    .line 449
    :catch_7
    move-exception v0

    .line 450
    .local v0, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_15

    .line 451
    const-string v2, "Email"

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_15
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 455
    .end local v0           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1f
    move-exception v1

    .line 456
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private doSendId(ZLjava/lang/String;)V
    .registers 8
    .parameter "hasIdCapability"
    .parameter "capabilities"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 371
    if-nez p1, :cond_3

    .line 403
    :cond_2
    :goto_2
    return-void

    .line 374
    :cond_3
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".secureserver.net"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 378
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3}, Lcom/android/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    invoke-static {v3, v4, v0, p2}, Lcom/android/email/mail/store/ImapStore;->getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, mUserAgent:Ljava/lang/String;
    if-eqz v2, :cond_3e

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    .line 389
    :cond_3e
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 391
    :try_start_42
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_47
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_42 .. :try_end_47} :catch_48
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_57

    goto :goto_2

    .line 392
    :catch_48
    move-exception v1

    .line 394
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 395
    const-string v3, "Email"

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 397
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_57
    move-exception v3

    goto :goto_2
.end method

.method private doStartTls(Z)Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 4
    .parameter "hasStartTlsCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 497
    if-eqz p1, :cond_24

    .line 499
    const-string v0, "STARTTLS"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 501
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->reopenTls()V

    .line 502
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v1, 0xea60

    invoke-interface {v0, v1}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 503
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->createParser()V

    .line 505
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 513
    :goto_23
    return-object v0

    .line 507
    :cond_24
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 508
    const-string v0, "Email"

    const-string v1, "TLS not supported but required"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_2f
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    .line 513
    :cond_36
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private isCapable(I)Z
    .registers 3
    .parameter "capability"

    .prologue
    .line 184
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v3, "CAPABILITY"

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 351
    .local v2, r:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    const-string v4, "CAPABILITY"

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 352
    move-object v0, v2

    .line 356
    .end local v2           #r:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_21
    if-nez v0, :cond_2b

    .line 357
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid CAPABILITY response received"

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 359
    :cond_2b
    return-object v0
.end method

.method private setCapabilities(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .registers 3
    .parameter "capabilities"

    .prologue
    .line 193
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 194
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 196
    :cond_e
    const-string v0, "NAMESPACE"

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 197
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 199
    :cond_1c
    const-string v0, "UIDPLUS"

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 200
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 202
    :cond_2a
    const-string v0, "STARTTLS"

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 203
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 205
    :cond_38
    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_c

    .line 172
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 173
    iput-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 175
    :cond_c
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 176
    iput-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 177
    iput-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    .line 178
    return-void
.end method

.method destroyResponses()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->destroyResponses()V

    .line 223
    :cond_9
    return-void
.end method

.method executeComplexCommand(Ljava/util/List;Z)Ljava/util/List;
    .registers 4
    .parameter
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 341
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapConnection;->sendComplexCommand(Ljava/util/List;Z)Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->getCommandResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .registers 4
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->getCommandResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCommandResponses()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_5
    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 302
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 304
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 305
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, toString:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, alert:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 308
    new-instance v4, Lcom/android/email/mail/store/ImapStore$ImapException;

    invoke-direct {v4, v3, v0}, Lcom/android/email/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 310
    .end local v0           #alert:Ljava/lang/String;
    .end local v3           #toString:Ljava/lang/String;
    :cond_2f
    return-object v2
.end method

.method isTransportOpenForTest()Z
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method logLastDiscourse()V
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 519
    return-void
.end method

.method open()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 164
    :goto_c
    return-void

    .line 105
    :cond_d
    :try_start_d
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-nez v6, :cond_19

    .line 106
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v6}, Lcom/android/email/mail/store/ImapStore;->cloneTransport()Lcom/android/email/mail/Transport;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 109
    :cond_19
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->open()V

    .line 110
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v7, 0xea60

    invoke-interface {v6, v7}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->createParser()V

    .line 115
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    .line 118
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 120
    .local v0, capabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v6, "STARTTLS"

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v3

    .line 124
    .local v3, hasStartTlsCapability:Z
    invoke-direct {p0, v3}, Lcom/android/email/mail/store/ImapConnection;->doStartTls(Z)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v5

    .line 125
    .local v5, newCapabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    if-eqz v5, :cond_3f

    .line 126
    move-object v0, v5

    .line 132
    :cond_3f
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapConnection;->setCapabilities(Lcom/android/email/mail/store/imap/ImapResponse;)V

    .line 133
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->flatten()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, capabilityString:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v6

    invoke-direct {p0, v6, v1}, Lcom/android/email/mail/store/ImapConnection;->doSendId(ZLjava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->doLogin()V

    .line 142
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/ImapConnection;->doGetNamespace(Z)V

    .line 145
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->doGetPathSeparator()V

    .line 147
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v6}, Lcom/android/email/mail/store/ImapStore;->ensurePrefixIsValid()V
    :try_end_61
    .catchall {:try_start_d .. :try_end_61} :catchall_7d
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_61} :catch_65
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_61} :catch_82

    .line 162
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    goto :goto_c

    .line 148
    .end local v0           #capabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v1           #capabilityString:Ljava/lang/String;
    .end local v3           #hasStartTlsCapability:Z
    .end local v5           #newCapabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_65
    move-exception v2

    .line 149
    .local v2, e:Ljavax/net/ssl/SSLException;
    :try_start_66
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_73

    .line 150
    const-string v6, "Email"

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_73
    new-instance v6, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_7d

    .line 162
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    :catchall_7d
    move-exception v6

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    throw v6

    .line 153
    :catch_82
    move-exception v4

    .line 157
    .local v4, ioe:Ljava/io/IOException;
    :try_start_83
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_90

    .line 158
    const-string v6, "Email"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_90
    throw v4
    :try_end_91
    .catchall {:try_start_83 .. :try_end_91} :catchall_7d
.end method

.method readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->open()V

    .line 244
    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, tag:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, commandToSend:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz p2, :cond_37

    const-string v2, "[IMAP command redacted]"

    :goto_2a
    invoke-interface {v3, v0, v2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_33

    const-string v0, "[IMAP command redacted]"

    .end local v0           #commandToSend:Ljava/lang/String;
    :cond_33
    invoke-virtual {v2, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 248
    return-object v1

    .line 246
    .restart local v0       #commandToSend:Ljava/lang/String;
    :cond_37
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method sendComplexCommand(Ljava/util/List;Z)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->open()V

    .line 263
    iget-object v5, p0, Lcom/android/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, tag:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 265
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v2, :cond_57

    .line 266
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, commandToSend:Ljava/lang/String;
    if-nez v1, :cond_45

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_33
    iget-object v5, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_3f

    const-string v0, "[IMAP command redacted]"

    .end local v0           #commandToSend:Ljava/lang/String;
    :cond_3f
    invoke-virtual {v5, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 272
    .restart local v0       #commandToSend:Ljava/lang/String;
    :cond_45
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v3

    .line 274
    .local v3, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v5

    if-nez v5, :cond_33

    .line 275
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const-string v6, "Expected continuation request"

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 282
    .end local v0           #commandToSend:Ljava/lang/String;
    .end local v3           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_57
    return-object v4
.end method

.method setStore(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "store"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 88
    if-eqz p2, :cond_2b

    if-eqz p3, :cond_2b

    .line 89
    iput-object p2, p0, Lcom/android/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/android/email/mail/store/imap/ImapUtility;->imapQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    .line 96
    :cond_2b
    iput-object p1, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    .line 97
    return-void
.end method
