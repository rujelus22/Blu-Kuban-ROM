.class public Ljcifs/http/NtlmHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "NtlmHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/http/NtlmHttpURLConnection$CacheStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final LM_COMPATIBILITY:I

.field private static final MAX_REDIRECTS:I


# instance fields
.field private authMethod:Ljava/lang/String;

.field private authProperty:Ljava/lang/String;

.field private cachedOutput:Ljava/io/ByteArrayOutputStream;

.field private connection:Ljava/net/HttpURLConnection;

.field private handshakeComplete:Z

.field private headerFields:Ljava/util/Map;

.field private requestProperties:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 61
    const-string v1, "http.maxRedirects"

    const-string v2, "20"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Ljcifs/http/NtlmHttpURLConnection;->MAX_REDIRECTS:I

    .line 64
    const-string v1, "jcifs.smb.lmCompatibility"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ljcifs/http/NtlmHttpURLConnection;->LM_COMPATIBILITY:I

    .line 84
    const-string v1, "http.auth.ntlm.domain"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, domain:Ljava/lang/String;
    if-nez v0, :cond_23

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_23
    sput-object v0, Ljcifs/http/NtlmHttpURLConnection;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 3
    .parameter "connection"

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 91
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    .line 93
    return-void
.end method

.method private attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;
    .registers 28
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    .line 483
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 484
    move-object/from16 v0, p0

    iget-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    .line 485
    .local v16, errorStream:Ljava/io/InputStream;
    if-eqz v16, :cond_2a

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v8

    if-eqz v8, :cond_2a

    .line 487
    const/16 v8, 0x400

    new-array v13, v8, [B

    .line 488
    .local v13, buf:[B
    :cond_1e
    const/4 v8, 0x0

    const/16 v9, 0x400

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .local v14, count:I
    const/4 v8, -0x1

    if-ne v14, v8, :cond_1e

    .line 491
    .end local v13           #buf:[B
    .end local v14           #count:I
    :cond_2a
    const/16 v8, 0x191

    move/from16 v0, p1

    if-ne v0, v8, :cond_47

    .line 492
    const-string v11, "WWW-Authenticate"

    .line 493
    .local v11, authHeader:Ljava/lang/String;
    const-string v8, "Authorization"

    move-object/from16 v0, p0

    iput-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    .line 498
    :goto_38
    const/4 v12, 0x0

    .line 499
    .local v12, authorization:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Ljcifs/http/NtlmHttpURLConnection;->getHeaderFields0()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 500
    .local v19, methods:Ljava/util/List;
    if-nez v19, :cond_50

    const/4 v3, 0x0

    .line 569
    :cond_46
    :goto_46
    return-object v3

    .line 495
    .end local v11           #authHeader:Ljava/lang/String;
    .end local v12           #authorization:Ljava/lang/String;
    .end local v19           #methods:Ljava/util/List;
    :cond_47
    const-string v11, "Proxy-Authenticate"

    .line 496
    .restart local v11       #authHeader:Ljava/lang/String;
    const-string v8, "Proxy-Authorization"

    move-object/from16 v0, p0

    iput-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    goto :goto_38

    .line 501
    .restart local v12       #authorization:Ljava/lang/String;
    .restart local v19       #methods:Ljava/util/List;
    :cond_50
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 502
    .local v18, iterator:Ljava/util/Iterator;
    :cond_54
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_75

    .line 503
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 504
    .local v15, currentAuthMethod:Ljava/lang/String;
    const-string v8, "NTLM"

    invoke-virtual {v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 505
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_7d

    .line 506
    const-string v8, "NTLM"

    move-object/from16 v0, p0

    iput-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 524
    .end local v15           #currentAuthMethod:Ljava/lang/String;
    :cond_75
    :goto_75
    move-object/from16 v0, p0

    iget-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    if-nez v8, :cond_c8

    const/4 v3, 0x0

    goto :goto_46

    .line 509
    .restart local v15       #currentAuthMethod:Ljava/lang/String;
    :cond_7d
    const/16 v8, 0x20

    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_54

    .line 510
    const-string v8, "NTLM"

    move-object/from16 v0, p0

    iput-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 511
    const/4 v8, 0x5

    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 512
    goto :goto_75

    .line 513
    :cond_96
    const-string v8, "Negotiate"

    invoke-virtual {v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 514
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_ad

    .line 515
    const-string v8, "Negotiate"

    move-object/from16 v0, p0

    iput-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    goto :goto_75

    .line 518
    :cond_ad
    const/16 v8, 0x20

    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_54

    .line 519
    const-string v8, "Negotiate"

    move-object/from16 v0, p0

    iput-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 520
    const/16 v8, 0xa

    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 521
    goto :goto_75

    .line 525
    .end local v15           #currentAuthMethod:Ljava/lang/String;
    :cond_c8
    if-eqz v12, :cond_e9

    new-instance v3, Ljcifs/ntlmssp/Type2Message;

    invoke-static {v12}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V

    .line 527
    .local v3, message:Ljcifs/ntlmssp/NtlmMessage;
    :goto_d3
    invoke-direct/range {p0 .. p0}, Ljcifs/http/NtlmHttpURLConnection;->reconnect()V

    .line 528
    if-nez v3, :cond_eb

    .line 529
    new-instance v3, Ljcifs/ntlmssp/Type1Message;

    .end local v3           #message:Ljcifs/ntlmssp/NtlmMessage;
    invoke-direct {v3}, Ljcifs/ntlmssp/Type1Message;-><init>()V

    .line 530
    .restart local v3       #message:Ljcifs/ntlmssp/NtlmMessage;
    sget v8, Ljcifs/http/NtlmHttpURLConnection;->LM_COMPATIBILITY:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_46

    .line 531
    const/4 v8, 0x4

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljcifs/ntlmssp/NtlmMessage;->setFlag(IZ)V

    goto/16 :goto_46

    .line 525
    .end local v3           #message:Ljcifs/ntlmssp/NtlmMessage;
    :cond_e9
    const/4 v3, 0x0

    goto :goto_d3

    .line 534
    .restart local v3       #message:Ljcifs/ntlmssp/NtlmMessage;
    :cond_eb
    sget-object v6, Ljcifs/http/NtlmHttpURLConnection;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 535
    .local v6, domain:Ljava/lang/String;
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v7

    .line 536
    .local v7, user:Ljava/lang/String;
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultPassword()Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljcifs/http/NtlmHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v24

    .line 538
    .local v24, userInfo:Ljava/lang/String;
    if-eqz v24, :cond_1b9

    .line 539
    invoke-static/range {v24 .. v24}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 540
    const/16 v8, 0x3a

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 541
    .local v17, index:I
    const/4 v8, -0x1

    move/from16 v0, v17

    if-eq v0, v8, :cond_15b

    const/4 v8, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 542
    :goto_119
    const/4 v8, -0x1

    move/from16 v0, v17

    if-eq v0, v8, :cond_126

    add-int/lit8 v8, v17, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 543
    :cond_126
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 544
    const/4 v8, -0x1

    move/from16 v0, v17

    if-ne v0, v8, :cond_137

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 545
    :cond_137
    const/4 v8, -0x1

    move/from16 v0, v17

    if-eq v0, v8, :cond_143

    const/4 v8, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 546
    :cond_143
    const/4 v8, -0x1

    move/from16 v0, v17

    if-eq v0, v8, :cond_14e

    add-int/lit8 v8, v17, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_14e
    move-object/from16 v20, v5

    .line 548
    .end local v5           #password:Ljava/lang/String;
    .end local v17           #index:I
    .local v20, password:Ljava/lang/String;
    :goto_150
    if-nez v7, :cond_1b6

    .line 549
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljcifs/http/NtlmHttpURLConnection;->allowUserInteraction:Z

    if-nez v8, :cond_15e

    const/4 v3, 0x0

    goto/16 :goto_46

    .end local v20           #password:Ljava/lang/String;
    .restart local v5       #password:Ljava/lang/String;
    .restart local v17       #index:I
    :cond_15b
    move-object/from16 v7, v24

    .line 541
    goto :goto_119

    .line 551
    .end local v5           #password:Ljava/lang/String;
    .end local v17           #index:I
    .restart local v20       #password:Ljava/lang/String;
    :cond_15e
    :try_start_15e
    invoke-virtual/range {p0 .. p0}, Ljcifs/http/NtlmHttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v23

    .line 552
    .local v23, url:Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    .line 553
    .local v22, protocol:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getPort()I

    move-result v21

    .line 554
    .local v21, port:I
    const/4 v8, -0x1

    move/from16 v0, v21

    if-ne v0, v8, :cond_17b

    .line 555
    const-string v8, "https"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_193

    const/16 v21, 0x1bb

    .line 557
    :cond_17b
    :goto_17b
    const/4 v8, 0x0

    const-string v9, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-static {v8, v0, v1, v9, v2}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v10

    .line 560
    .local v10, auth:Ljava/net/PasswordAuthentication;
    if-nez v10, :cond_196

    const/4 v3, 0x0

    goto/16 :goto_46

    .line 555
    .end local v10           #auth:Ljava/net/PasswordAuthentication;
    :cond_193
    const/16 v21, 0x50

    goto :goto_17b

    .line 561
    .restart local v10       #auth:Ljava/net/PasswordAuthentication;
    :cond_196
    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v7

    .line 562
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_1a3} :catch_1b2

    .end local v10           #auth:Ljava/net/PasswordAuthentication;
    .end local v20           #password:Ljava/lang/String;
    .end local v21           #port:I
    .end local v22           #protocol:Ljava/lang/String;
    .end local v23           #url:Ljava/net/URL;
    .restart local v5       #password:Ljava/lang/String;
    :goto_1a3
    move-object v4, v3

    .line 565
    check-cast v4, Ljcifs/ntlmssp/Type2Message;

    .line 566
    .local v4, type2:Ljcifs/ntlmssp/Type2Message;
    new-instance v3, Ljcifs/ntlmssp/Type3Message;

    .end local v3           #message:Ljcifs/ntlmssp/NtlmMessage;
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v3       #message:Ljcifs/ntlmssp/NtlmMessage;
    goto/16 :goto_46

    .line 563
    .end local v4           #type2:Ljcifs/ntlmssp/Type2Message;
    .end local v5           #password:Ljava/lang/String;
    .restart local v20       #password:Ljava/lang/String;
    :catch_1b2
    move-exception v8

    move-object/from16 v5, v20

    .end local v20           #password:Ljava/lang/String;
    .restart local v5       #password:Ljava/lang/String;
    goto :goto_1a3

    .end local v5           #password:Ljava/lang/String;
    .restart local v20       #password:Ljava/lang/String;
    :cond_1b6
    move-object/from16 v5, v20

    .end local v20           #password:Ljava/lang/String;
    .restart local v5       #password:Ljava/lang/String;
    goto :goto_1a3

    :cond_1b9
    move-object/from16 v20, v5

    .end local v5           #password:Ljava/lang/String;
    .restart local v20       #password:Ljava/lang/String;
    goto :goto_150
.end method

.method private doHandshake()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x197

    const/16 v10, 0x191

    const/4 v9, 0x0

    .line 434
    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->connect()V

    .line 436
    :try_start_8
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c4

    move-result v2

    .line 437
    .local v2, response:I
    if-eq v2, v10, :cond_13

    if-eq v2, v11, :cond_13

    .line 477
    iput-object v9, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    :goto_12
    return-void

    .line 440
    :cond_13
    :try_start_13
    invoke-direct {p0, v2}, Ljcifs/http/NtlmHttpURLConnection;->attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;

    move-result-object v3

    check-cast v3, Ljcifs/ntlmssp/Type1Message;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_c4

    .line 441
    .local v3, type1:Ljcifs/ntlmssp/Type1Message;
    if-nez v3, :cond_1e

    .line 477
    iput-object v9, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    goto :goto_12

    .line 442
    :cond_1e
    const/4 v0, 0x0

    .line 443
    .local v0, attempt:I
    :goto_1f
    :try_start_1f
    sget v5, Ljcifs/http/NtlmHttpURLConnection;->MAX_REDIRECTS:I

    if-ge v0, v5, :cond_c8

    .line 444
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 447
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I
    :try_end_53
    .catchall {:try_start_1f .. :try_end_53} :catchall_c4

    move-result v2

    .line 448
    if-eq v2, v10, :cond_5b

    if-eq v2, v11, :cond_5b

    .line 477
    iput-object v9, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    goto :goto_12

    .line 452
    :cond_5b
    :try_start_5b
    invoke-direct {p0, v2}, Ljcifs/http/NtlmHttpURLConnection;->attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;

    move-result-object v4

    check-cast v4, Ljcifs/ntlmssp/Type3Message;
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_c4

    .line 454
    .local v4, type3:Ljcifs/ntlmssp/Type3Message;
    if-nez v4, :cond_66

    .line 477
    iput-object v9, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    goto :goto_12

    .line 455
    :cond_66
    :try_start_66
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 458
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_a9

    iget-boolean v5, p0, Ljcifs/http/NtlmHttpURLConnection;->doOutput:Z

    if-eqz v5, :cond_a9

    .line 459
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 460
    .local v1, output:Ljava/io/OutputStream;
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 461
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 463
    .end local v1           #output:Ljava/io/OutputStream;
    :cond_a9
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I
    :try_end_ac
    .catchall {:try_start_66 .. :try_end_ac} :catchall_c4

    move-result v2

    .line 464
    if-eq v2, v10, :cond_b5

    if-eq v2, v11, :cond_b5

    .line 477
    iput-object v9, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    goto/16 :goto_12

    .line 468
    :cond_b5
    add-int/lit8 v0, v0, 0x1

    .line 469
    :try_start_b7
    iget-boolean v5, p0, Ljcifs/http/NtlmHttpURLConnection;->allowUserInteraction:Z

    if-eqz v5, :cond_c8

    sget v5, Ljcifs/http/NtlmHttpURLConnection;->MAX_REDIRECTS:I

    if-ge v0, v5, :cond_c8

    .line 470
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->reconnect()V
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_c4

    goto/16 :goto_1f

    .line 477
    .end local v0           #attempt:I
    .end local v2           #response:I
    .end local v3           #type1:Ljcifs/ntlmssp/Type1Message;
    .end local v4           #type3:Ljcifs/ntlmssp/Type3Message;
    :catchall_c4
    move-exception v5

    iput-object v9, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    throw v5

    .line 475
    .restart local v0       #attempt:I
    .restart local v2       #response:I
    .restart local v3       #type1:Ljcifs/ntlmssp/Type1Message;
    :cond_c8
    :try_start_c8
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unable to negotiate NTLM authentication."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d0
    .catchall {:try_start_c8 .. :try_end_d0} :catchall_c4
.end method

.method private getHeaderFields0()Ljava/util/Map;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 161
    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    if-eqz v7, :cond_8

    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    .line 181
    :goto_7
    return-object v7

    .line 162
    :cond_8
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v4, map:Ljava/util/Map;
    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, key:Ljava/lang/String;
    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, value:Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1a
    if-nez v3, :cond_1e

    if-eqz v5, :cond_40

    .line 166
    :cond_1e
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 167
    .local v6, values:Ljava/util/List;
    if-nez v6, :cond_2e

    .line 168
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #values:Ljava/util/List;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .restart local v6       #values:Ljava/util/List;
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_2e
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    .line 173
    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 175
    .end local v6           #values:Ljava/util/List;
    :cond_40
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 176
    .local v0, entries:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 181
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_62
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    goto :goto_7
.end method

.method private handshake()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    if-eqz v0, :cond_5

    .line 105
    :goto_4
    return-void

    .line 103
    :cond_5
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->doHandshake()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    goto :goto_4
.end method

.method private parseResponseCode()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    .line 424
    :try_start_2
    iget-object v3, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, response:Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 426
    .local v1, index:I
    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_18

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 427
    :cond_18
    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_23

    move-result v3

    return v3

    .line 428
    .end local v1           #index:I
    .end local v2           #response:Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 429
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private reconnect()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iput-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 574
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 575
    const/4 v5, 0x0

    iput-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    .line 576
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 577
    .local v1, properties:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 578
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 579
    .local v2, property:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 580
    .local v0, key:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    .local v3, value:Ljava/lang/StringBuffer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 582
    .local v4, values:Ljava/util/Iterator;
    :cond_43
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 583
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 584
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 586
    :cond_5c
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 588
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #property:Ljava/util/Map$Entry;
    .end local v3           #value:Ljava/lang/StringBuffer;
    .end local v4           #values:Ljava/util/Iterator;
    :cond_66
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v6, p0, Ljcifs/http/NtlmHttpURLConnection;->allowUserInteraction:Z

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 589
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v6, p0, Ljcifs/http/NtlmHttpURLConnection;->doInput:Z

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 590
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v6, p0, Ljcifs/http/NtlmHttpURLConnection;->doOutput:Z

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 591
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-wide v6, p0, Ljcifs/http/NtlmHttpURLConnection;->ifModifiedSince:J

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 592
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v6, p0, Ljcifs/http/NtlmHttpURLConnection;->useCaches:Z

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 593
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "key"
    .parameter "value"

    .prologue
    .line 330
    if-nez p1, :cond_8

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 331
    :cond_8
    const/4 v4, 0x0

    .line 332
    .local v4, values:Ljava/util/List;
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 333
    .local v1, entries:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 335
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 336
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #values:Ljava/util/List;
    check-cast v4, Ljava/util/List;

    .line 337
    .restart local v4       #values:Ljava/util/List;
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v2           #entry:Ljava/util/Map$Entry;
    :cond_34
    if-nez v4, :cond_43

    .line 342
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #values:Ljava/util/List;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .restart local v4       #values:Ljava/util/List;
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 348
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 349
    .local v3, propertyValues:Ljava/util/Iterator;
    :cond_4c
    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 350
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 351
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 352
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4c

    .line 355
    :cond_65
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connected:Z

    if-eqz v0, :cond_5

    .line 99
    :goto_4
    return-void

    .line 97
    :cond_5
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connected:Z

    goto :goto_4
.end method

.method public disconnect()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 407
    iput-boolean v1, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    .line 408
    iput-boolean v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connected:Z

    .line 409
    return-void
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 224
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 223
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter "classes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 231
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 230
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 129
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 113
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 115
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0

    .line 114
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 122
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 141
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 143
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0

    .line 142
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 417
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 419
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 418
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getExpiration()J
    .registers 3

    .prologue
    .line 134
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 136
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0

    .line 135
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 215
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 217
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "header"

    .prologue
    .line 155
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 157
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6
    .parameter "header"
    .parameter "def"

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 203
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 202
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4
    .parameter "header"
    .parameter "def"

    .prologue
    .line 194
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 196
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 195
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 208
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 210
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    .line 189
    :goto_6
    return-object v0

    .line 187
    :cond_7
    :try_start_7
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_f

    .line 189
    :goto_a
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->getHeaderFields0()Ljava/util/Map;

    move-result-object v0

    goto :goto_6

    .line 188
    :catch_f
    move-exception v0

    goto :goto_a
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 242
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 241
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 148
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 150
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0

    .line 149
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    :try_start_0
    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_18

    .line 249
    :goto_3
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 250
    .local v0, output:Ljava/io/OutputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 251
    new-instance v1, Ljcifs/http/NtlmHttpURLConnection$CacheStream;

    iget-object v2, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0, v2}, Ljcifs/http/NtlmHttpURLConnection$CacheStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v1

    .line 248
    .end local v0           #output:Ljava/io/OutputStream;
    :catch_18
    move-exception v1

    goto :goto_3
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 6

    .prologue
    .line 363
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v2, map:Ljava/util/Map;
    iget-object v3, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 365
    .local v0, entries:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 366
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 367
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 370
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_2d
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 359
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 395
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0

    .line 394
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a

    .line 402
    :goto_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 401
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3
    .parameter "allowUserInteraction"

    .prologue
    .line 277
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 278
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpURLConnection;->allowUserInteraction:Z

    .line 279
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3
    .parameter "defaultUseCaches"

    .prologue
    .line 308
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 309
    return-void
.end method

.method public setDoInput(Z)V
    .registers 3
    .parameter "doInput"

    .prologue
    .line 259
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 260
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpURLConnection;->doInput:Z

    .line 261
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3
    .parameter "doOutput"

    .prologue
    .line 268
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 269
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpURLConnection;->doOutput:Z

    .line 270
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4
    .parameter "ifModifiedSince"

    .prologue
    .line 295
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 296
    iput-wide p1, p0, Ljcifs/http/NtlmHttpURLConnection;->ifModifiedSince:J

    .line 297
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3
    .parameter "instanceFollowRedirects"

    .prologue
    .line 374
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 375
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3
    .parameter "requestMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 384
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->method:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 312
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 313
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v3, values:Ljava/util/List;
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, found:Z
    iget-object v4, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 317
    .local v0, entries:Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 319
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 320
    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const/4 v2, 0x1

    .line 325
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_37
    if-nez v2, :cond_3e

    iget-object v4, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_3e
    iget-object v4, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3
    .parameter "useCaches"

    .prologue
    .line 286
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 287
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpURLConnection;->useCaches:Z

    .line 288
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method