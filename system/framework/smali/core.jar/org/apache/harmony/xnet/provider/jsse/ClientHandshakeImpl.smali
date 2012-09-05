.class public Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.source "ClientHandshakeImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter "owner"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;-><init>(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method private findSessionToResume()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .registers 6

    .prologue
    .line 557
    const/4 v1, 0x0

    .line 558
    .local v1, host:Ljava/lang/String;
    const/4 v2, -0x1

    .line 559
    .local v2, port:I
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v4, :cond_19

    .line 560
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    .line 561
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v2

    .line 566
    :goto_12
    if-eqz v1, :cond_17

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2a

    .line 567
    :cond_17
    const/4 v3, 0x0

    .line 576
    :cond_18
    :goto_18
    return-object v3

    .line 563
    :cond_19
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 564
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v2

    goto :goto_12

    .line 570
    :cond_2a
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    .line 571
    .local v0, context:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 573
    .local v3, session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    if-eqz v3, :cond_18

    .line 574
    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .restart local v3       #session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    goto :goto_18
.end method

.method private renegotiateNewSession()V
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 109
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 110
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v0, :cond_4a

    .line 111
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    .line 115
    :goto_2d
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 116
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 117
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    .line 122
    :goto_49
    return-void

    .line 113
    :cond_4a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto :goto_2d

    .line 119
    :cond_60
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 120
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendWarningAlert(B)V

    goto :goto_49
.end method

.method private startSession()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 129
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v1, :cond_35

    .line 130
    new-array v0, v5, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aput-object v2, v0, v1

    .line 134
    .local v0, cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :goto_e
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Ljava/security/SecureRandom;[B[B[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    .line 136
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    .line 137
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 138
    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 139
    return-void

    .line 132
    .end local v0           #cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_35
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v0

    .restart local v0       #cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    goto :goto_e
.end method

.method private verifyServerCert()V
    .registers 5

    .prologue
    .line 527
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v3, v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getAuthType(Z)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, authType:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 538
    :goto_f
    return-void

    .line 527
    .end local v0           #authType:Ljava/lang/String;
    :cond_10
    const/4 v2, 0x0

    goto :goto_9

    .line 532
    .restart local v0       #authType:Ljava/lang/String;
    :cond_12
    :try_start_12
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3, v0}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_1f} :catch_28

    .line 537
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    iput-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    goto :goto_f

    .line 533
    :catch_28
    move-exception v1

    .line 534
    .local v1, e:Ljava/security/cert/CertificateException;
    const/16 v2, 0x2a

    const-string v3, "Not trusted server certificate"

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method


# virtual methods
.method protected makeFinished()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 339
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v1, v1, v2

    if-ne v1, v2, :cond_2e

    .line 340
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 341
    .local v0, verify_data:[B
    const-string v1, "client finished"

    invoke-virtual {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    .line 346
    :goto_12
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 347
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 348
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v1, :cond_38

    .line 349
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 350
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 359
    :goto_2d
    return-void

    .line 343
    .end local v0           #verify_data:[B
    :cond_2e
    const/16 v1, 0x24

    new-array v0, v1, [B

    .line 344
    .restart local v0       #verify_data:[B
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerVerifyDataSSLv3([B[B)V

    goto :goto_12

    .line 352
    :cond_38
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v1, v1, v2

    if-ne v1, v2, :cond_48

    .line 353
    const-string v1, "server finished"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 357
    :goto_45
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto :goto_2d

    .line 355
    :cond_48
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_45
.end method

.method processServerHelloDone()V
    .registers 29

    .prologue
    .line 366
    const/4 v9, 0x0

    .line 368
    .local v9, clientKey:Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1e3

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 370
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    .line 521
    :goto_1e
    return-void

    .line 373
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->verifyServerCert()V

    .line 382
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9a

    .line 383
    const/4 v8, 0x0

    .line 385
    .local v8, certs:[Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 386
    .local v4, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->getTypesAsString()[Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, certTypes:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 388
    .local v14, issuers:[Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v17

    .line 389
    .local v17, km:Ljavax/net/ssl/X509KeyManager;
    move-object/from16 v0, v17

    instance-of v0, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    move/from16 v23, v0

    if-eqz v23, :cond_208

    move-object/from16 v13, v17

    .line 390
    check-cast v13, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 391
    .local v13, ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1fa

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v7, v14, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v4

    .line 396
    :goto_6a
    if-eqz v4, :cond_70

    .line 397
    invoke-virtual {v13, v4}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 406
    .end local v13           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_70
    :goto_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v8, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 407
    new-instance v23, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 408
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v9

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 412
    .end local v4           #alias:Ljava/lang/String;
    .end local v7           #certTypes:[Ljava/lang/String;
    .end local v8           #certs:[Ljava/security/cert/X509Certificate;
    .end local v14           #issuers:[Ljavax/security/auth/x500/X500Principal;
    .end local v17           #km:Ljavax/net/ssl/X509KeyManager;
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_25f

    .line 417
    :cond_ce
    :try_start_ce
    const-string v23, "RSA/ECB/PKCS1Padding"

    invoke-static/range {v23 .. v23}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 418
    .local v6, c:Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    if-eqz v23, :cond_220

    .line 419
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_ef} :catch_23b

    .line 429
    :goto_ef
    const/16 v23, 0x30

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x2

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :try_start_12b
    new-instance v24, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    move-object/from16 v23, v0

    const/16 v26, 0x1

    aget-byte v23, v23, v26

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_24b

    const/16 v23, 0x1

    :goto_153
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>([BZ)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_162} :catch_24f

    .line 494
    .end local v6           #c:Ljavax/crypto/Cipher;
    :goto_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v23, v0

    if-eqz v23, :cond_177

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 498
    :cond_177
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerMasterSecret()V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1de

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_1de

    .line 504
    invoke-interface {v9}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 505
    .local v5, authType:Ljava/lang/String;
    new-instance v11, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    invoke-direct {v11, v5}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 506
    .local v11, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    invoke-virtual {v11, v9}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/PrivateKey;)V

    .line 508
    const-string v23, "RSA"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3f8

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setMD5([B)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    .line 516
    :cond_1c2
    :goto_1c2
    new-instance v23, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    invoke-virtual {v11}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sign()[B

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;-><init>([B)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 520
    .end local v5           #authType:Ljava/lang/String;
    .end local v11           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    :cond_1de
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_1e

    .line 375
    :cond_1e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v23

    if-nez v23, :cond_22

    .line 376
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_1e

    .line 394
    .restart local v4       #alias:Ljava/lang/String;
    .restart local v7       #certTypes:[Ljava/lang/String;
    .restart local v8       #certs:[Ljava/security/cert/X509Certificate;
    .restart local v13       #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    .restart local v14       #issuers:[Ljavax/security/auth/x500/X500Principal;
    .restart local v17       #km:Ljavax/net/ssl/X509KeyManager;
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v7, v14, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6a

    .line 400
    .end local v13           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v7, v14, v1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v4

    .line 401
    if-eqz v4, :cond_70

    .line 402
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v8

    goto/16 :goto_70

    .line 422
    .end local v4           #alias:Ljava/lang/String;
    .end local v7           #certTypes:[Ljava/lang/String;
    .end local v8           #certs:[Ljava/security/cert/X509Certificate;
    .end local v14           #issuers:[Ljavax/security/auth/x500/X500Principal;
    .end local v17           #km:Ljavax/net/ssl/X509KeyManager;
    .restart local v6       #c:Ljavax/crypto/Cipher;
    :cond_220
    const/16 v23, 0x1

    :try_start_222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_239} :catch_23b

    goto/16 :goto_ef

    .line 424
    .end local v6           #c:Ljavax/crypto/Cipher;
    :catch_23b
    move-exception v12

    .line 425
    .local v12, e:Ljava/lang/Exception;
    const/16 v23, 0x50

    const-string v24, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1e

    .line 433
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v6       #c:Ljavax/crypto/Cipher;
    :cond_24b
    const/16 v23, 0x0

    goto/16 :goto_153

    .line 436
    :catch_24f
    move-exception v12

    .line 437
    .restart local v12       #e:Ljava/lang/Exception;
    const/16 v23, 0x50

    const-string v24, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1e

    .line 443
    .end local v6           #c:Ljavax/crypto/Cipher;
    .end local v12           #e:Ljava/lang/Exception;
    :cond_25f
    :try_start_25f
    const-string v23, "DH"

    invoke-static/range {v23 .. v23}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v16

    .line 444
    .local v16, kf:Ljava/security/KeyFactory;
    const-string v23, "DH"

    invoke-static/range {v23 .. v23}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v3

    .line 445
    .local v3, agreement:Ljavax/crypto/KeyAgreement;
    const-string v23, "DH"

    invoke-static/range {v23 .. v23}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v19

    .line 448
    .local v19, kpg:Ljava/security/KeyPairGenerator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3c6

    .line 449
    new-instance v23, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-direct/range {v23 .. v26}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v20

    .line 452
    .local v20, serverPublic:Ljava/security/PublicKey;
    new-instance v22, Ljavax/crypto/spec/DHParameterSpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 458
    .local v22, spec:Ljavax/crypto/spec/DHParameterSpec;
    :goto_2c7
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 460
    invoke-virtual/range {v19 .. v19}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v18

    .line 461
    .local v18, kp:Ljava/security/KeyPair;
    invoke-virtual/range {v18 .. v18}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v15

    .line 462
    .local v15, key:Ljava/security/Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_31a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3e6

    .line 466
    :cond_31a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    .line 467
    .local v10, client_pk:Ljava/security/PublicKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v21

    .line 468
    .local v21, server_pk:Ljava/security/PublicKey;
    instance-of v0, v10, Ljavax/crypto/interfaces/DHKey;

    move/from16 v23, v0

    if-eqz v23, :cond_39a

    move-object/from16 v0, v21

    instance-of v0, v0, Ljavax/crypto/interfaces/DHKey;

    move/from16 v23, v0

    if-eqz v23, :cond_39a

    .line 470
    move-object v0, v10

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v21

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_39a

    check-cast v10, Ljavax/crypto/interfaces/DHKey;

    .end local v10           #client_pk:Ljava/security/PublicKey;
    invoke-interface {v10}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v23

    check-cast v21, Ljavax/crypto/interfaces/DHKey;

    .end local v21           #server_pk:Ljava/security/PublicKey;
    invoke-interface/range {v21 .. v21}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_39a

    .line 477
    new-instance v23, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-direct/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    .line 484
    .end local v15           #key:Ljava/security/Key;
    :cond_39a
    :goto_39a
    invoke-virtual/range {v18 .. v18}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v15

    .line 485
    .restart local v15       #key:Ljava/security/Key;
    invoke-virtual {v3, v15}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 486
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 487
    invoke-virtual {v3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B
    :try_end_3b4
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_3b4} :catch_3b6

    goto/16 :goto_162

    .line 488
    .end local v3           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v15           #key:Ljava/security/Key;
    .end local v16           #kf:Ljava/security/KeyFactory;
    .end local v18           #kp:Ljava/security/KeyPair;
    .end local v19           #kpg:Ljava/security/KeyPairGenerator;
    .end local v20           #serverPublic:Ljava/security/PublicKey;
    .end local v22           #spec:Ljavax/crypto/spec/DHParameterSpec;
    :catch_3b6
    move-exception v12

    .line 489
    .restart local v12       #e:Ljava/lang/Exception;
    const/16 v23, 0x50

    const-string v24, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1e

    .line 455
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v3       #agreement:Ljavax/crypto/KeyAgreement;
    .restart local v16       #kf:Ljava/security/KeyFactory;
    .restart local v19       #kpg:Ljava/security/KeyPairGenerator;
    :cond_3c6
    :try_start_3c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v20

    .line 456
    .restart local v20       #serverPublic:Ljava/security/PublicKey;
    move-object/from16 v0, v20

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v22

    .restart local v22       #spec:Ljavax/crypto/spec/DHParameterSpec;
    goto/16 :goto_2c7

    .line 481
    .restart local v15       #key:Ljava/security/Key;
    .restart local v18       #kp:Ljava/security/KeyPair;
    :cond_3e6
    new-instance v23, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    check-cast v15, Ljavax/crypto/interfaces/DHPublicKey;

    .end local v15           #key:Ljava/security/Key;
    invoke-interface {v15}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_3f7
    .catch Ljava/lang/Exception; {:try_start_3c6 .. :try_end_3f7} :catch_3b6

    goto :goto_39a

    .line 511
    .end local v3           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v16           #kf:Ljava/security/KeyFactory;
    .end local v18           #kp:Ljava/security/KeyPair;
    .end local v19           #kpg:Ljava/security/KeyPairGenerator;
    .end local v20           #serverPublic:Ljava/security/PublicKey;
    .end local v22           #spec:Ljavax/crypto/spec/DHParameterSpec;
    .restart local v5       #authType:Ljava/lang/String;
    .restart local v11       #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    :cond_3f8
    const-string v23, "DSA"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c2

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    goto/16 :goto_1c2
.end method

.method public receiveChangeCipherSpec()V
    .registers 2

    .prologue
    .line 545
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v0, :cond_f

    .line 546
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-nez v0, :cond_b

    .line 547
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    .line 552
    :cond_b
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    .line 553
    return-void

    .line 549
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-nez v0, :cond_b

    .line 550
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto :goto_b
.end method

.method public start()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v0, :cond_15

    .line 74
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->findSessionToResume()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 84
    :cond_a
    :goto_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_2a

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 99
    :goto_11
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    .line 100
    :cond_14
    return-void

    .line 76
    :cond_15
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v0, :cond_1e

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 80
    :cond_1e
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_a

    .line 86
    :cond_2a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 88
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 89
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v0, :cond_71

    .line 90
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    .line 94
    :goto_57
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 95
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    goto :goto_11

    .line 92
    :cond_71
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto :goto_57

    .line 97
    :cond_87
    const/16 v0, 0x28

    const-string v1, "SSL Session may not be created "

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_11
.end method

.method public unwrap([B)V
    .registers 13
    .parameter "bytes"

    .prologue
    const/4 v10, 0x1

    const/16 v8, 0x28

    .line 147
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    if-eqz v7, :cond_11

    .line 148
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    .line 150
    const-string v7, "Error in delegated task"

    invoke-virtual {p0, v8, v7, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    .line 153
    .end local v0           #e:Ljava/lang/Exception;
    :cond_11
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 154
    :cond_16
    :goto_16
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v7

    if-lez v7, :cond_3c

    .line 155
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 158
    :try_start_23
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    .line 159
    .local v3, handshakeType:I
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v5

    .line 160
    .local v5, length:I
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v7

    if-ge v7, v5, :cond_3d

    .line 161
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    .line 319
    .end local v3           #handshakeType:I
    .end local v5           #length:I
    :cond_3c
    :goto_3c
    return-void

    .line 164
    .restart local v3       #handshakeType:I
    .restart local v5       #length:I
    :cond_3d
    sparse-switch v3, :sswitch_data_25c

    .line 309
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_43} :catch_44

    goto :goto_3c

    .line 312
    .end local v3           #handshakeType:I
    .end local v5           #length:I
    :catch_44
    move-exception v0

    .line 314
    .local v0, e:Ljava/io/IOException;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_3c

    .line 168
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #handshakeType:I
    .restart local v5       #length:I
    :sswitch_4b
    :try_start_4b
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->removeFromMarkedPosition()V

    .line 169
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v7, :cond_5c

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-eqz v7, :cond_16

    .line 175
    :cond_5c
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 176
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 177
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 178
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    goto :goto_16

    .line 182
    :cond_75
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->renegotiateNewSession()V

    goto :goto_16

    .line 186
    :sswitch_79
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v7, :cond_81

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_85

    .line 187
    :cond_81
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto :goto_3c

    .line 190
    :cond_85
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    .line 193
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v6

    .line 194
    .local v6, servProt:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, enabled:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_9d
    array-length v7, v1

    if-ge v4, v7, :cond_11d

    .line 197
    aget-object v7, v1, v4

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11a

    .line 206
    :goto_ac
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-byte v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    if-eqz v7, :cond_b9

    .line 207
    const/16 v7, 0x28

    const-string v8, "Bad server hello compression method"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 212
    :cond_b9
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    .line 214
    .local v2, enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/4 v4, 0x0

    :goto_c0
    array-length v7, v2

    if-ge v4, v7, :cond_128

    .line 215
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_125

    .line 223
    :goto_cf
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_eb

    .line 224
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v7, v7

    if-nez v7, :cond_130

    .line 227
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 237
    :cond_dd
    :goto_dd
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_16b

    .line 238
    const-string v7, "server finished"

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 243
    :cond_eb
    :goto_eb
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v6, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 244
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 245
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 246
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iput-object v7, v8, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 247
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    goto/16 :goto_16

    .line 196
    .end local v2           #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_11a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9d

    .line 201
    :cond_11d
    const/16 v7, 0x28

    const-string v8, "Bad server hello protocol version"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_ac

    .line 214
    .restart local v2       #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_125
    add-int/lit8 v4, v4, 0x1

    goto :goto_c0

    .line 219
    :cond_128
    const/16 v7, 0x28

    const-string v8, "Bad server hello cipher suite"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_cf

    .line 228
    :cond_130
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_142

    .line 229
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    goto :goto_dd

    .line 230
    :cond_142
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_154

    .line 231
    const/16 v7, 0x28

    const-string v8, "Bad server hello protocol version"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_dd

    .line 233
    :cond_154
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_dd

    .line 234
    const/16 v7, 0x28

    const-string v8, "Bad server hello cipher suite"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_dd

    .line 240
    :cond_16b
    sget-object v7, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto/16 :goto_eb

    .line 250
    .end local v1           #enabled:[Ljava/lang/String;
    .end local v2           #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i:I
    .end local v6           #servProt:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    :sswitch_172
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_182

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-nez v7, :cond_182

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-nez v7, :cond_182

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_187

    .line 252
    :cond_182
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3c

    .line 255
    :cond_187
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    goto/16 :goto_16

    .line 258
    :sswitch_192
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_19e

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-nez v7, :cond_19e

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_1a3

    .line 260
    :cond_19e
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3c

    .line 263
    :cond_1a3
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v9, v9, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v9, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;II)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    goto/16 :goto_16

    .line 267
    :sswitch_1b4
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v7, :cond_1ca

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    if-nez v7, :cond_1ca

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v7

    if-nez v7, :cond_1ca

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_1cf

    .line 269
    :cond_1ca
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3c

    .line 272
    :cond_1cf
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    goto/16 :goto_16

    .line 275
    :sswitch_1da
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_1e6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-nez v7, :cond_1e6

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_1eb

    .line 276
    :cond_1e6
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3c

    .line 279
    :cond_1eb
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    .line 280
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    if-eqz v7, :cond_209

    .line 281
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v9, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;

    invoke-direct {v9, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;)V

    invoke-direct {v8, v9, p0}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/lang/Runnable;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c

    .line 288
    :cond_209
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->processServerHelloDone()V

    goto/16 :goto_16

    .line 291
    :sswitch_20e
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    if-nez v7, :cond_217

    .line 292
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3c

    .line 295
    :cond_217
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 296
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->getData()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->verifyFinished([B)V

    .line 297
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 298
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 299
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 300
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_24f

    .line 301
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_16

    .line 303
    :cond_24f
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 304
    const/4 v7, 0x3

    iput v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I
    :try_end_25a
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_25a} :catch_44

    goto/16 :goto_16

    .line 164
    :sswitch_data_25c
    .sparse-switch
        0x0 -> :sswitch_4b
        0x2 -> :sswitch_79
        0xb -> :sswitch_172
        0xc -> :sswitch_192
        0xd -> :sswitch_1b4
        0xe -> :sswitch_1da
        0x14 -> :sswitch_20e
    .end sparse-switch
.end method

.method public unwrapSSLv2([B)V
    .registers 2
    .parameter "bytes"

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    .line 331
    return-void
.end method
