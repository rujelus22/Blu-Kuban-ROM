.class public Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.source "ServerHandshakeImpl.java"


# instance fields
.field private privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "owner"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;-><init>(Ljava/lang/Object;)V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 69
    return-void
.end method

.method private findSessionToResume([B)Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .registers 3
    .parameter "session_id"

    .prologue
    .line 622
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-object v0
.end method

.method private selectSuite([Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .registers 11
    .parameter "clientSuites"

    .prologue
    .line 627
    move-object v0, p1

    .local v0, arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_4
    if-ge v5, v6, :cond_26

    aget-object v2, v0, v5

    .line 628
    .local v2, clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    iget-boolean v8, v2, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->supported:Z

    if-nez v8, :cond_10

    .line 627
    .end local v5           #i$:I
    :cond_c
    add-int/lit8 v4, v5, 0x1

    .restart local v4       #i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_4

    .line 631
    :cond_10
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v1

    .local v1, arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_18
    if-ge v4, v7, :cond_c

    aget-object v3, v1, v4

    .line 632
    .local v3, enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 637
    .end local v1           #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v2           #clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v3           #enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i$:I
    .end local v7           #len$:I
    :goto_22
    return-object v2

    .line 631
    .restart local v1       #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v2       #clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v3       #enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 637
    .end local v1           #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v2           #clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v3           #enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .restart local v5       #i$:I
    :cond_26
    const/4 v2, 0x0

    goto :goto_22
.end method


# virtual methods
.method protected makeFinished()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 597
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v3, v3, v2

    if-ne v3, v2, :cond_2f

    move v0, v2

    .line 598
    .local v0, isTLS:Z
    :goto_a
    if-eqz v0, :cond_31

    .line 599
    const/16 v3, 0xc

    new-array v1, v3, [B

    .line 600
    .local v1, verify_data:[B
    const-string v3, "server finished"

    invoke-virtual {p0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    .line 605
    :goto_15
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-direct {v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>([B)V

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 606
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 607
    iget-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v3, :cond_41

    .line 608
    if-eqz v0, :cond_3b

    .line 609
    const-string v3, "client finished"

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 613
    :goto_2c
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 618
    :goto_2e
    return-void

    .line 597
    .end local v0           #isTLS:Z
    .end local v1           #verify_data:[B
    :cond_2f
    const/4 v0, 0x0

    goto :goto_a

    .line 602
    .restart local v0       #isTLS:Z
    :cond_31
    const/16 v3, 0x24

    new-array v1, v3, [B

    .line 603
    .restart local v1       #verify_data:[B
    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerVerifyDataSSLv3([B[B)V

    goto :goto_15

    .line 611
    :cond_3b
    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_2c

    .line 615
    :cond_41
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 616
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto :goto_2e
.end method

.method processClientHello()V
    .registers 38

    .prologue
    .line 324
    const/16 v21, 0x0

    .local v21, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v3, v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_11d

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    aget-byte v3, v3, v21

    if-nez v3, :cond_119

    .line 333
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->isSupported([B)Z

    move-result v3

    if-nez v3, :cond_53

    .line 334
    const/16 v3, 0x46

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PROTOCOL VERSION. Unsupported client version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 340
    :cond_53
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v3, v3

    if-eqz v3, :cond_8a

    .line 345
    const/16 v30, 0x0

    .line 348
    .local v30, reuseCurrent:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v3, :cond_12a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_128

    .line 351
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 378
    .end local v30           #reuseCurrent:Z
    :cond_8a
    :goto_8a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v3, :cond_18a

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 382
    .local v7, cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/16 v21, 0x0

    :goto_98
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v3, v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_17f

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v3, v3, v21

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 407
    :goto_b1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 408
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object v4, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    .line 412
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getId()[B

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;-><init>(Ljava/security/SecureRandom;[B[BLorg/apache/harmony/xnet/provider/jsse/CipherSuite;B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iput-object v4, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 417
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v3, :cond_201

    .line 418
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendChangeCipherSpec()V

    .line 589
    .end local v7           #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :goto_118
    return-void

    .line 324
    :cond_119
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 329
    :cond_11d
    const/16 v3, 0x28

    const-string v4, "HANDSHAKE FAILURE. Incorrect client hello message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_17

    .line 354
    .restart local v30       #reuseCurrent:Z
    :cond_128
    const/16 v30, 0x1

    .line 358
    :cond_12a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->findSessionToResume([B)Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v32

    .line 359
    .local v32, sessionToResume:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    if-eqz v32, :cond_13e

    invoke-virtual/range {v32 .. v32}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v3

    if-nez v3, :cond_16a

    .line 360
    :cond_13e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v3

    if-nez v3, :cond_163

    .line 361
    if-eqz v30, :cond_15a

    .line 363
    const/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendWarningAlert(B)V

    .line 364
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 365
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clearMessages()V

    goto :goto_118

    .line 369
    :cond_15a
    const/16 v3, 0x28

    const-string v4, "SSL Session may not be created"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 371
    :cond_163
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto/16 :goto_8a

    .line 373
    :cond_16a
    invoke-virtual/range {v32 .. v32}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 374
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    goto/16 :goto_8a

    .line 382
    .end local v30           #reuseCurrent:Z
    .end local v32           #sessionToResume:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .restart local v7       #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_17b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_98

    .line 387
    :cond_17f
    const/16 v3, 0x28

    const-string v4, "HANDSHAKE FAILURE. Incorrect client hello message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_b1

    .line 391
    .end local v7           #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_18a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->selectSuite([Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v7

    .line 392
    .restart local v7       #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    if-nez v7, :cond_1a1

    .line 393
    const/16 v3, 0x28

    const-string v4, "HANDSHAKE FAILURE. NO COMMON SUITE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 395
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v3

    if-nez v3, :cond_1b4

    .line 396
    const/16 v3, 0x28

    const-string v4, "SSL Session may not be created"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 399
    :cond_1b4
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v3, :cond_1e4

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto/16 :goto_b1

    .line 403
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto/16 :goto_b1

    .line 423
    :cond_201
    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v3

    if-nez v3, :cond_2a7

    .line 424
    const/4 v12, 0x0

    .line 425
    .local v12, certs:[Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v11

    .line 426
    .local v11, certType:Ljava/lang/String;
    if-nez v11, :cond_22c

    .line 427
    const/16 v3, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NO CERT TYPE FOR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 430
    :cond_22c
    const/4 v10, 0x0

    .line 431
    .local v10, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v23

    .line 432
    .local v23, km:Ljavax/net/ssl/X509KeyManager;
    move-object/from16 v0, v23

    instance-of v3, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v3, :cond_271

    move-object/from16 v17, v23

    .line 433
    check-cast v17, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 434
    .local v17, ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    if-eqz v3, :cond_265

    .line 435
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v3, v4}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v10

    .line 441
    :goto_250
    if-eqz v10, :cond_258

    .line 442
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    .line 451
    .end local v17           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_258
    :goto_258
    if-nez v12, :cond_285

    .line 452
    const/16 v3, 0x28

    const-string v4, "NO SERVER CERTIFICATE FOUND"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_118

    .line 438
    .restart local v17       #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_265
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v3, v4}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v10

    goto :goto_250

    .line 445
    .end local v17           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_271
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v0, v23

    invoke-interface {v0, v11, v3, v4}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v10

    .line 446
    if-eqz v10, :cond_258

    .line 447
    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    goto :goto_258

    .line 455
    :cond_285
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v12, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 456
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-direct {v3, v12}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 457
    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 462
    .end local v10           #alias:Ljava/lang/String;
    .end local v11           #certType:Ljava/lang/String;
    .end local v12           #certs:[Ljava/security/cert/X509Certificate;
    .end local v23           #km:Ljavax/net/ssl/X509KeyManager;
    :cond_2a7
    const/16 v31, 0x0

    .line 463
    .local v31, rsakey:Ljava/security/interfaces/RSAPublicKey;
    const/4 v14, 0x0

    .line 464
    .local v14, dhkeySpec:Ljavax/crypto/spec/DHPublicKeySpec;
    const/16 v20, 0x0

    .line 465
    .local v20, hash:[B
    const/16 v26, 0x0

    .line 466
    .local v26, p:Ljava/math/BigInteger;
    const/16 v18, 0x0

    .line 468
    .local v18, g:Ljava/math/BigInteger;
    const/16 v25, 0x0

    .line 471
    .local v25, kpg:Ljava/security/KeyPairGenerator;
    :try_start_2b2
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3f6

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v28

    .line 473
    .local v28, pk:Ljava/security/PublicKey;
    invoke-static/range {v28 .. v28}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v3

    const/16 v4, 0x200

    if-le v3, v4, :cond_2d9

    .line 475
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v25

    .line 476
    const/16 v3, 0x200

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2d9} :catch_449

    .line 494
    .end local v28           #pk:Ljava/security/PublicKey;
    :cond_2d9
    :goto_2d9
    if-eqz v25, :cond_3a1

    .line 496
    new-instance v15, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    iget-object v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->authType:Ljava/lang/String;

    invoke-direct {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 497
    .local v15, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    const/16 v24, 0x0

    .line 499
    .local v24, kp:Ljava/security/KeyPair;
    :try_start_2e4
    invoke-virtual/range {v25 .. v25}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v24

    .line 500
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_457

    .line 501
    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object/from16 v31, v0

    .line 507
    :goto_2f6
    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v3

    if-nez v3, :cond_4f9

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/PrivateKey;)V

    .line 514
    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->getRandom()[B

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->getRandom()[B

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 519
    const/4 v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v36, v0

    .line 521
    .local v36, tmpLength:[B
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_471

    .line 522
    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v35

    .line 523
    .local v35, tmp:[B
    const/4 v3, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    .line 524
    const/4 v3, 0x1

    move-object/from16 v0, v35

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    .line 525
    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 526
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 527
    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v35

    .line 528
    const/4 v3, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    .line 529
    const/4 v3, 0x1

    move-object/from16 v0, v35

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    .line 530
    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 531
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 549
    :goto_37b
    invoke-virtual {v15}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sign()[B
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_2e4 .. :try_end_37e} :catch_4eb

    move-result-object v20

    .line 557
    .end local v35           #tmp:[B
    .end local v36           #tmpLength:[B
    :goto_37f
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_503

    .line 558
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v5, v6, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    .line 564
    :goto_398
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 568
    .end local v15           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v24           #kp:Ljava/security/KeyPair;
    :cond_3a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v3

    if-nez v3, :cond_3b5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v3

    if-eqz v3, :cond_3dd

    .line 572
    :cond_3b5
    :try_start_3b5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v34

    .line 573
    .local v34, tm:Ljavax/net/ssl/X509TrustManager;
    invoke-interface/range {v34 .. v34}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    :try_end_3c0
    .catch Ljava/lang/ClassCastException; {:try_start_3b5 .. :try_end_3c0} :catch_518

    move-result-object v9

    .line 578
    .local v9, accepted:[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v29, v0

    fill-array-data v29, :array_528

    .line 580
    .local v29, requestedClientCertTypes:[B
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v0, v29

    invoke-direct {v3, v0, v9}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;-><init>([B[Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 586
    .end local v9           #accepted:[Ljava/security/cert/X509Certificate;
    .end local v29           #requestedClientCertTypes:[B
    .end local v34           #tm:Ljavax/net/ssl/X509TrustManager;
    :cond_3dd
    :goto_3dd
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    invoke-direct {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 588
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto/16 :goto_118

    .line 478
    :cond_3f6
    :try_start_3f6
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_416

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_416

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_416

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_416

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_416

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2d9

    .line 484
    :cond_416
    const-string v3, "DH"

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v25

    .line 485
    new-instance v27, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->getPrime()[B

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_428
    .catch Ljava/lang/Exception; {:try_start_3f6 .. :try_end_428} :catch_449

    .line 486
    .end local v26           #p:Ljava/math/BigInteger;
    .local v27, p:Ljava/math/BigInteger;
    :try_start_428
    new-instance v19, Ljava/math/BigInteger;

    const-string v3, "2"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_431
    .catch Ljava/lang/Exception; {:try_start_428 .. :try_end_431} :catch_51b

    .line 487
    .end local v18           #g:Ljava/math/BigInteger;
    .local v19, g:Ljava/math/BigInteger;
    :try_start_431
    new-instance v33, Ljavax/crypto/spec/DHParameterSpec;

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 488
    .local v33, spec:Ljavax/crypto/spec/DHParameterSpec;
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_443
    .catch Ljava/lang/Exception; {:try_start_431 .. :try_end_443} :catch_520

    move-object/from16 v18, v19

    .end local v19           #g:Ljava/math/BigInteger;
    .restart local v18       #g:Ljava/math/BigInteger;
    move-object/from16 v26, v27

    .end local v27           #p:Ljava/math/BigInteger;
    .restart local v26       #p:Ljava/math/BigInteger;
    goto/16 :goto_2d9

    .line 490
    .end local v33           #spec:Ljavax/crypto/spec/DHParameterSpec;
    :catch_449
    move-exception v16

    .line 491
    .local v16, e:Ljava/lang/Exception;
    :goto_44a
    const/16 v3, 0x50

    const-string v4, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2d9

    .line 503
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v15       #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .restart local v24       #kp:Ljava/security/KeyPair;
    :cond_457
    :try_start_457
    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v13

    check-cast v13, Ljavax/crypto/interfaces/DHPublicKey;

    .line 504
    .local v13, dhkey:Ljavax/crypto/interfaces/DHPublicKey;
    const-string v3, "DH"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v22

    .line 505
    .local v22, kf:Ljava/security/KeyFactory;
    const-class v3, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object v14, v0

    goto/16 :goto_2f6

    .line 533
    .end local v13           #dhkey:Ljavax/crypto/interfaces/DHPublicKey;
    .end local v22           #kf:Ljava/security/KeyFactory;
    .restart local v36       #tmpLength:[B
    :cond_471
    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v35

    .line 534
    .restart local v35       #tmp:[B
    const/4 v3, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    .line 535
    const/4 v3, 0x1

    move-object/from16 v0, v35

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    .line 536
    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 537
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 538
    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v35

    .line 539
    const/4 v3, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    .line 540
    const/4 v3, 0x1

    move-object/from16 v0, v35

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    .line 541
    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 542
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 543
    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v35

    .line 544
    const/4 v3, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    .line 545
    const/4 v3, 0x1

    move-object/from16 v0, v35

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    .line 546
    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 547
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V
    :try_end_4e9
    .catch Ljava/lang/Exception; {:try_start_457 .. :try_end_4e9} :catch_4eb

    goto/16 :goto_37b

    .line 553
    .end local v35           #tmp:[B
    .end local v36           #tmpLength:[B
    :catch_4eb
    move-exception v16

    .line 554
    .restart local v16       #e:Ljava/lang/Exception;
    const/16 v3, 0x50

    const-string v4, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_37f

    .line 551
    .end local v16           #e:Ljava/lang/Exception;
    :cond_4f9
    :try_start_4f9
    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;
    :try_end_501
    .catch Ljava/lang/Exception; {:try_start_4f9 .. :try_end_501} :catch_4eb

    goto/16 :goto_37f

    .line 561
    :cond_503
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v3, v0, v1, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    goto/16 :goto_398

    .line 574
    .end local v15           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v24           #kp:Ljava/security/KeyPair;
    :catch_518
    move-exception v16

    .line 576
    .local v16, e:Ljava/lang/ClassCastException;
    goto/16 :goto_3dd

    .line 490
    .end local v16           #e:Ljava/lang/ClassCastException;
    .end local v26           #p:Ljava/math/BigInteger;
    .restart local v27       #p:Ljava/math/BigInteger;
    :catch_51b
    move-exception v16

    move-object/from16 v26, v27

    .end local v27           #p:Ljava/math/BigInteger;
    .restart local v26       #p:Ljava/math/BigInteger;
    goto/16 :goto_44a

    .end local v18           #g:Ljava/math/BigInteger;
    .end local v26           #p:Ljava/math/BigInteger;
    .restart local v19       #g:Ljava/math/BigInteger;
    .restart local v27       #p:Ljava/math/BigInteger;
    :catch_520
    move-exception v16

    move-object/from16 v18, v19

    .end local v19           #g:Ljava/math/BigInteger;
    .restart local v18       #g:Ljava/math/BigInteger;
    move-object/from16 v26, v27

    .end local v27           #p:Ljava/math/BigInteger;
    .restart local v26       #p:Ljava/math/BigInteger;
    goto/16 :goto_44a

    .line 578
    nop

    :array_528
    .array-data 0x1
        0x1t
        0x2t
    .end array-data
.end method

.method public receiveChangeCipherSpec()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 645
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v0, :cond_10

    .line 646
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-nez v0, :cond_d

    .line 647
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    .line 667
    :goto_c
    return-void

    .line 649
    :cond_d
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    goto :goto_c

    .line 652
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v0, :cond_30

    :cond_1c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    if-nez v0, :cond_41

    .line 657
    :cond_30
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    .line 661
    :goto_33
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v0, v0, v1

    if-ne v0, v1, :cond_44

    .line 662
    const-string v0, "client finished"

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    goto :goto_c

    .line 659
    :cond_41
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    goto :goto_33

    .line 664
    :cond_44
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_c
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v0, :cond_8

    .line 77
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 88
    :cond_7
    :goto_7
    return-void

    .line 80
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 86
    :cond_11
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendHelloRequest()V

    .line 87
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto :goto_7
.end method

.method public unwrap([B)V
    .registers 18
    .parameter "bytes"

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 98
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v12

    if-lez v12, :cond_3b

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 103
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v7

    .line 104
    .local v7, handshakeType:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v9

    .line 105
    .local v9, length:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v12

    if-ge v12, v9, :cond_3c

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    .line 285
    .end local v7           #handshakeType:I
    .end local v9           #length:I
    :cond_3b
    :goto_3b
    return-void

    .line 110
    .restart local v7       #handshakeType:I
    .restart local v9       #length:I
    :cond_3c
    sparse-switch v7, :sswitch_data_364

    .line 276
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_42} :catch_43

    goto :goto_3b

    .line 279
    .end local v7           #handshakeType:I
    .end local v9           #length:I
    :catch_43
    move-exception v6

    .line 281
    .local v6, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_3b

    .line 112
    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #handshakeType:I
    .restart local v9       #length:I
    :sswitch_4c
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v12, :cond_5d

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_5d

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto :goto_3b

    .line 119
    :cond_5d
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    .line 120
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    .line 121
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    if-eqz v12, :cond_8b

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    new-instance v13, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v14, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V

    move-object/from16 v0, p0

    invoke-direct {v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/lang/Runnable;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;)V

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 129
    :cond_8b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V

    goto/16 :goto_9

    .line 133
    :sswitch_90
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_a8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    if-eqz v12, :cond_a8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-eqz v12, :cond_a8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v12, :cond_ac

    .line 135
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto :goto_3b

    .line 138
    :cond_ac
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v12, v12

    if-nez v12, :cond_d7

    .line 140
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 141
    const/16 v12, 0x28

    const-string v13, "HANDSHAKE FAILURE: no client certificate received"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_9

    .line 145
    :cond_d7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->getAuthType()Ljava/lang/String;
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_de} :catch_43

    move-result-object v2

    .line 147
    .local v2, authType:Ljava/lang/String;
    :try_start_df
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    invoke-interface {v12, v13, v2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/security/cert/CertificateException; {:try_start_df .. :try_end_f0} :catch_fe
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_f0} :catch_43

    .line 153
    :goto_f0
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    iput-object v13, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    goto/16 :goto_9

    .line 149
    :catch_fe
    move-exception v6

    .line 150
    .local v6, e:Ljava/security/cert/CertificateException;
    const/16 v12, 0x2a

    const-string v13, "Untrusted Client Certificate "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v6}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f0

    .line 158
    .end local v2           #authType:Ljava/lang/String;
    .end local v6           #e:Ljava/security/cert/CertificateException;
    :sswitch_109
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_131

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-eqz v12, :cond_131

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v12, :cond_131

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_131

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    if-nez v12, :cond_131

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    if-eqz v12, :cond_136

    .line 166
    :cond_131
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3b

    .line 169
    :cond_136
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->getAuthType()Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2       #authType:Ljava/lang/String;
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    invoke-direct {v5, v2}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 173
    .local v5, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v5, v12}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/cert/Certificate;)V

    .line 174
    const/4 v10, 0x0

    .line 175
    .local v10, md5_hash:[B
    const/4 v11, 0x0

    .line 177
    .local v11, sha_hash:[B
    const-string v12, "RSA"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_193

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5withoutLast()[B

    move-result-object v10

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHAwithoutLast()[B

    move-result-object v11

    .line 185
    :cond_176
    :goto_176
    invoke-virtual {v5, v10}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setMD5([B)V

    .line 186
    invoke-virtual {v5, v11}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    invoke-virtual {v5, v12}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->verifySignature([B)Z

    move-result v12

    if-nez v12, :cond_9

    .line 188
    const/16 v12, 0x33

    const-string v13, "DECRYPT ERROR: CERTIFICATE_VERIFY incorrect signature"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_9

    .line 180
    :cond_193
    const-string v12, "DSA"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_176

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHAwithoutLast()[B

    move-result-object v11

    goto :goto_176

    .line 193
    .end local v2           #authType:Ljava/lang/String;
    .end local v5           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v10           #md5_hash:[B
    .end local v11           #sha_hash:[B
    :sswitch_1a4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_1c6

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-eqz v12, :cond_1c6

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-nez v12, :cond_1c6

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-nez v12, :cond_1cb

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v12

    if-eqz v12, :cond_1cb

    .line 197
    :cond_1c6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3b

    .line 200
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1e1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_26f

    .line 202
    :cond_1e1
    new-instance v13, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v15, 0x1

    aget-byte v12, v12, v15

    const/4 v15, 0x1

    if-ne v12, v15, :cond_262

    const/4 v12, 0x1

    :goto_1f4
    const/4 v15, 0x1

    invoke-direct {v13, v14, v9, v12, v15}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_1fc} :catch_43

    .line 205
    const/4 v3, 0x0

    .line 207
    .local v3, c:Ljavax/crypto/Cipher;
    :try_start_1fd
    const-string v12, "RSA/ECB/PKCS1Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 208
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v3, v12, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-virtual {v3, v12}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    array-length v12, v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_246

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    if-ne v12, v13, :cond_246

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    if-eq v12, v13, :cond_25d

    .line 216
    :cond_246
    const/16 v12, 0x30

    new-array v12, v12, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    invoke-virtual {v12, v13}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_25d} :catch_264
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_25d} :catch_43

    .line 255
    .end local v3           #c:Ljavax/crypto/Cipher;
    :cond_25d
    :goto_25d
    :try_start_25d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerMasterSecret()V

    goto/16 :goto_9

    .line 202
    :cond_262
    const/4 v12, 0x0

    goto :goto_1f4

    .line 220
    .restart local v3       #c:Ljavax/crypto/Cipher;
    :catch_264
    move-exception v6

    .line 221
    .local v6, e:Ljava/lang/Exception;
    const/16 v12, 0x50

    const-string v13, "INTERNAL ERROR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v6}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_25d

    .line 225
    .end local v3           #c:Ljavax/crypto/Cipher;
    .end local v6           #e:Ljava/lang/Exception;
    :cond_26f
    new-instance v13, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v15, 0x1

    aget-byte v12, v12, v15

    const/4 v15, 0x1

    if-ne v12, v15, :cond_2b0

    const/4 v12, 0x1

    :goto_282
    const/4 v15, 0x0

    invoke-direct {v13, v14, v9, v12, v15}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    .line 228
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2b2

    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    check-cast v12, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v12}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_25d .. :try_end_2af} :catch_43

    goto :goto_25d

    .line 225
    :cond_2b0
    const/4 v12, 0x0

    goto :goto_282

    .line 236
    :cond_2b2
    :try_start_2b2
    const-string v12, "DH"

    invoke-static {v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 237
    .local v8, kf:Ljava/security/KeyFactory;
    const-string v12, "DH"

    invoke-static {v12}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    .line 238
    .local v1, agreement:Ljavax/crypto/KeyAgreement;
    new-instance v12, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v13, Ljava/math/BigInteger;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    iget-object v15, v15, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-direct {v13, v14, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v14, v14, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v15, v15, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-direct {v12, v13, v14, v15}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 244
    .local v4, clientPublic:Ljava/security/PublicKey;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v1, v12}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 245
    const/4 v12, 0x1

    invoke-virtual {v1, v4, v12}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 246
    invoke-virtual {v1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B
    :try_end_2f2
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2f2} :catch_2f4
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2f2} :catch_43

    goto/16 :goto_25d

    .line 247
    .end local v1           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v4           #clientPublic:Ljava/security/PublicKey;
    .end local v8           #kf:Ljava/security/KeyFactory;
    :catch_2f4
    move-exception v6

    .line 248
    .restart local v6       #e:Ljava/lang/Exception;
    const/16 v12, 0x50

    :try_start_2f7
    const-string v13, "INTERNAL ERROR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v6}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3b

    .line 259
    .end local v6           #e:Ljava/lang/Exception;
    :sswitch_300
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_311

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    if-nez v12, :cond_311

    .line 260
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3b

    .line 264
    :cond_311
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->getData()[B

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->verifyFinished([B)V

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v13}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v13

    iput-object v13, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v12, v13}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 268
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_353

    .line 269
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_9

    .line 271
    :cond_353
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 272
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I
    :try_end_362
    .catch Ljava/io/IOException; {:try_start_2f7 .. :try_end_362} :catch_43

    goto/16 :goto_9

    .line 110
    :sswitch_data_364
    .sparse-switch
        0x1 -> :sswitch_4c
        0xb -> :sswitch_90
        0xf -> :sswitch_109
        0x10 -> :sswitch_1a4
        0x14 -> :sswitch_300
    .end sparse-switch
.end method

.method public unwrapSSLv2([B)V
    .registers 6
    .parameter "bytes"

    .prologue
    .line 293
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 294
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 296
    :try_start_a
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_27

    .line 301
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    if-eqz v1, :cond_2e

    .line 302
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;

    invoke-direct {v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V

    invoke-direct {v2, v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/lang/Runnable;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 310
    :goto_26
    return-void

    .line 297
    :catch_27
    move-exception v0

    .line 298
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_26

    .line 309
    .end local v0           #e:Ljava/io/IOException;
    :cond_2e
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V

    goto :goto_26
.end method
