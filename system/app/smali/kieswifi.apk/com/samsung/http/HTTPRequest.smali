.class public Lcom/samsung/http/HTTPRequest;
.super Lcom/samsung/http/HTTPPacket;
.source "HTTPRequest.java"


# instance fields
.field private httpSocket:Lcom/samsung/http/HTTPSocket;

.field private method:Ljava/lang/String;

.field private postSocket:Ljava/net/Socket;

.field private requestHost:Ljava/lang/String;

.field private requestPort:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/samsung/http/HTTPPacket;-><init>()V

    .line 104
    iput-object v1, p0, Lcom/samsung/http/HTTPRequest;->method:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/samsung/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 239
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/http/HTTPRequest;->requestPort:I

    .line 267
    iput-object v1, p0, Lcom/samsung/http/HTTPRequest;->httpSocket:Lcom/samsung/http/HTTPSocket;

    .line 415
    iput-object v1, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 84
    const-string v0, "USER-AGENT"

    sget-object v1, Lcom/samsung/http/HTTP;->DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/http/HTTPRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getFirstLineString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->hasFirstLine()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 319
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/http/HTTPPacket;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getHeader()Ljava/lang/String;
    .registers 4

    .prologue
    .line 334
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v1, str:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getFirstLineString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, headerString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getSocket()Lcom/samsung/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/http/HTTPSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->method:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 114
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->method:Ljava/lang/String;

    .line 115
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getRequestHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->requestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPort()I
    .registers 2

    .prologue
    .line 260
    iget v0, p0, Lcom/samsung/http/HTTPRequest;->requestPort:I

    return v0
.end method

.method public getSocket()Lcom/samsung/http/HTTPSocket;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->httpSocket:Lcom/samsung/http/HTTPSocket;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/samsung/http/HTTPRequest;->uri:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 182
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 191
    :cond_6
    :goto_6
    return-object v0

    .line 185
    :cond_7
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, uriTemp:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 188
    invoke-static {v0}, Lcom/samsung/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    goto :goto_6
.end method

.method public isGetRequest()Z
    .registers 2

    .prologue
    .line 128
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHeadRequest()Z
    .registers 2

    .prologue
    .line 138
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeepAlive()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->isCloseConnection()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 358
    :cond_8
    :goto_8
    return v2

    .line 352
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->isKeepAliveConnection()Z

    move-result v4

    if-eqz v4, :cond_11

    move v2, v3

    .line 353
    goto :goto_8

    .line 354
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, httpVer:Ljava/lang/String;
    const-string v4, "1.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_22

    move v1, v3

    .line 356
    .local v1, isHTTP10:Z
    :goto_1e
    if-nez v1, :cond_8

    move v2, v3

    .line 358
    goto :goto_8

    .end local v1           #isHTTP10:Z
    :cond_22
    move v1, v2

    .line 355
    goto :goto_1e
.end method

.method public isMethod(Ljava/lang/String;)Z
    .registers 4
    .parameter "method"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, headerMethod:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 122
    const/4 v1, 0x0

    .line 123
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public isNotifyRequest()Z
    .registers 2

    .prologue
    .line 153
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPostRequest()Z
    .registers 2

    .prologue
    .line 133
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSOAPAction()Z
    .registers 2

    .prologue
    .line 232
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribeRequest()Z
    .registers 2

    .prologue
    .line 143
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribeRequest()Z
    .registers 2

    .prologue
    .line 148
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public post(Ljava/lang/String;I)Lcom/samsung/http/HTTPResponse;
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 502
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/http/HTTPRequest;->post(Ljava/lang/String;IZ)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;IZ)Lcom/samsung/http/HTTPResponse;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 426
    new-instance v3, Lcom/samsung/http/HTTPResponse;

    invoke-direct {v3}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 428
    if-eqz p3, :cond_97

    const-string v0, "Keep-Alive"

    :goto_a
    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->setConnection(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->isHeadRequest()Z

    move-result v4

    .line 436
    :try_start_11
    invoke-static {p1}, Lcom/samsung/util/IPAddressUtil;->getIPAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 438
    iget-object v2, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-nez v2, :cond_24

    .line 440
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v0, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 442
    :cond_24
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 443
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_d3
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_2f} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_b7

    move-result-object v2

    .line 444
    :try_start_30
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 445
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 446
    const-string v0, "\r\n"

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->isChunked()Z

    move-result v6

    .line 450
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v7

    .line 451
    const/4 v0, 0x0

    .line 452
    if-eqz v7, :cond_50

    .line 453
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 455
    :cond_50
    if-lez v0, :cond_6b

    .line 456
    if-eqz v6, :cond_61

    .line 457
    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 459
    const-string v0, "\r\n"

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 461
    :cond_61
    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 462
    if-eqz v6, :cond_6b

    .line 463
    const-string v0, "\r\n"

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 466
    :cond_6b
    if-eqz v6, :cond_77

    .line 467
    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 468
    const-string v0, "\r\n"

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 471
    :cond_77
    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    .line 472
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_7f
    .catchall {:try_start_30 .. :try_end_7f} :catchall_f6
    .catch Ljava/net/SocketTimeoutException; {:try_start_30 .. :try_end_7f} :catch_109
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_7f} :catch_102

    move-result-object v0

    .line 473
    :try_start_80
    invoke-virtual {v3, v0, v4}, Lcom/samsung/http/HTTPResponse;->set(Ljava/io/InputStream;Z)Z
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_fa
    .catch Ljava/net/SocketTimeoutException; {:try_start_80 .. :try_end_83} :catch_10c
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_105

    .line 481
    if-nez p3, :cond_96

    .line 482
    if-eqz v0, :cond_8a

    .line 484
    :try_start_87
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_f0

    .line 487
    :cond_8a
    :goto_8a
    if-eqz v2, :cond_96

    .line 489
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 490
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_94} :catch_f2

    .line 492
    :goto_94
    iput-object v1, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 497
    :cond_96
    :goto_96
    return-object v3

    .line 428
    :cond_97
    const-string v0, "close"

    goto/16 :goto_a

    .line 475
    :catch_9b
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 476
    :goto_9e
    const/16 v4, 0x19a

    :try_start_a0
    invoke-virtual {v3, v4}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_fa

    .line 481
    if-nez p3, :cond_96

    .line 482
    if-eqz v0, :cond_aa

    .line 484
    :try_start_a7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_ea

    .line 487
    :cond_aa
    :goto_aa
    if-eqz v2, :cond_96

    .line 489
    :try_start_ac
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 490
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b4} :catch_107

    .line 492
    :goto_b4
    iput-object v1, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    goto :goto_96

    .line 478
    :catch_b7
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 479
    :goto_ba
    const/16 v4, 0x1f4

    :try_start_bc
    invoke-virtual {v3, v4}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_fa

    .line 481
    if-nez p3, :cond_96

    .line 482
    if-eqz v0, :cond_c6

    .line 484
    :try_start_c3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_ec

    .line 487
    :cond_c6
    :goto_c6
    if-eqz v2, :cond_96

    .line 489
    :try_start_c8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 490
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d0} :catch_100

    .line 492
    :goto_d0
    iput-object v1, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    goto :goto_96

    .line 480
    :catchall_d3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 481
    :goto_d6
    if-nez p3, :cond_e9

    .line 482
    if-eqz v2, :cond_dd

    .line 484
    :try_start_da
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_ee

    .line 487
    :cond_dd
    :goto_dd
    if-eqz v3, :cond_e9

    .line 489
    :try_start_df
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 490
    iget-object v2, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e7} :catch_f4

    .line 492
    :goto_e7
    iput-object v1, p0, Lcom/samsung/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 495
    :cond_e9
    throw v0

    .line 485
    :catch_ea
    move-exception v0

    goto :goto_aa

    :catch_ec
    move-exception v0

    goto :goto_c6

    :catch_ee
    move-exception v2

    goto :goto_dd

    :catch_f0
    move-exception v0

    goto :goto_8a

    .line 491
    :catch_f2
    move-exception v0

    goto :goto_94

    :catch_f4
    move-exception v2

    goto :goto_e7

    .line 480
    :catchall_f6
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_d6

    :catchall_fa
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_d6

    .line 491
    :catch_100
    move-exception v0

    goto :goto_d0

    .line 478
    :catch_102
    move-exception v0

    move-object v0, v1

    goto :goto_ba

    :catch_105
    move-exception v4

    goto :goto_ba

    .line 491
    :catch_107
    move-exception v0

    goto :goto_b4

    .line 475
    :catch_109
    move-exception v0

    move-object v0, v1

    goto :goto_9e

    :catch_10c
    move-exception v4

    goto :goto_9e
.end method

.method public post(Lcom/samsung/http/HTTPResponse;)Z
    .registers 18
    .parameter "httpRes"

    .prologue
    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/http/HTTPRequest;->getSocket()Lcom/samsung/http/HTTPSocket;

    move-result-object v8

    .line 383
    .local v8, httpSock:Lcom/samsung/http/HTTPSocket;
    const-wide/16 v10, 0x0

    .line 384
    .local v10, offset:J
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/http/HTTPResponse;->getContentLength()J

    move-result-wide v6

    .line 385
    .local v6, length:J
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/http/HTTPRequest;->hasContentRange()Z

    move-result v1

    if-eqz v1, :cond_60

    const-wide/16 v12, 0x0

    cmp-long v1, v6, v12

    if-eqz v1, :cond_60

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/http/HTTPRequest;->getContentRangeFirstPosition()J

    move-result-wide v2

    .line 387
    .local v2, firstPos:J
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/http/HTTPRequest;->getContentRangeLastPosition()J

    move-result-wide v4

    .line 389
    .local v4, lastPos:J
    const-wide/16 v12, 0x0

    cmp-long v1, v4, v12

    if-gtz v1, :cond_28

    .line 390
    const-wide/16 v12, 0x1

    sub-long v4, v6, v12

    .line 393
    :cond_28
    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-gez v1, :cond_33

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    move-result v1

    .line 408
    .end local v2           #firstPos:J
    .end local v4           #lastPos:J
    :goto_32
    return v1

    .line 396
    .restart local v2       #firstPos:J
    .restart local v4       #lastPos:J
    :cond_33
    cmp-long v1, v2, v6

    if-gtz v1, :cond_3b

    cmp-long v1, v4, v6

    if-lez v1, :cond_44

    .line 397
    :cond_3b
    const/16 v1, 0x1a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/http/HTTPRequest;->returnResponse(I)Z

    move-result v1

    goto :goto_32

    .line 399
    :cond_44
    cmp-long v1, v2, v4

    if-lez v1, :cond_4d

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    move-result v1

    goto :goto_32

    :cond_4d
    move-object/from16 v1, p1

    .line 402
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/http/HTTPResponse;->setContentRange(JJJ)V

    .line 403
    const/16 v1, 0xce

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 405
    move-wide v10, v2

    .line 406
    sub-long v12, v4, v2

    const-wide/16 v14, 0x1

    add-long v6, v12, v14

    .line 408
    .end local v2           #firstPos:J
    .end local v4           #lastPos:J
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/http/HTTPRequest;->isHeadRequest()Z

    move-result v14

    move-object/from16 v9, p1

    move-wide v12, v6

    invoke-virtual/range {v8 .. v14}, Lcom/samsung/http/HTTPSocket;->post(Lcom/samsung/http/HTTPResponse;JJZ)Z

    move-result v1

    goto :goto_32
.end method

.method public print()V
    .registers 1

    .prologue
    .line 562
    return-void
.end method

.method public read()Z
    .registers 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getSocket()Lcom/samsung/http/HTTPSocket;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/http/HTTPPacket;->read(Lcom/samsung/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method public returnBadRequest()Z
    .registers 2

    .prologue
    .line 534
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnNotFoundRequest()Z
    .registers 2

    .prologue
    .line 539
    const/16 v0, 0x194

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnOK()Z
    .registers 2

    .prologue
    .line 529
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnResponse(I)Z
    .registers 5
    .parameter "statusCode"

    .prologue
    .line 521
    new-instance v0, Lcom/samsung/http/HTTPResponse;

    invoke-direct {v0}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 522
    .local v0, httpRes:Lcom/samsung/http/HTTPResponse;
    invoke-virtual {v0, p1}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 523
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 524
    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    move-result v1

    return v1
.end method

.method public set(Lcom/samsung/http/HTTPRequest;)V
    .registers 3
    .parameter "httpReq"

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPRequest;->set(Lcom/samsung/http/HTTPPacket;)V

    .line 512
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getSocket()Lcom/samsung/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPRequest;->setSocket(Lcom/samsung/http/HTTPSocket;)V

    .line 513
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/http/HTTPRequest;->method:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setRequestHost(Ljava/lang/String;)V
    .registers 2
    .parameter "host"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setRequestPort(I)V
    .registers 2
    .parameter "host"

    .prologue
    .line 255
    iput p1, p0, Lcom/samsung/http/HTTPRequest;->requestPort:I

    .line 256
    return-void
.end method

.method public setSocket(Lcom/samsung/http/HTTPSocket;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/samsung/http/HTTPRequest;->httpSocket:Lcom/samsung/http/HTTPSocket;

    .line 272
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/http/HTTPRequest;->setURI(Ljava/lang/String;Z)V

    .line 174
    return-void
.end method

.method public setURI(Ljava/lang/String;Z)V
    .registers 4
    .parameter "value"
    .parameter "isCheckRelativeURL"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 165
    if-nez p2, :cond_5

    .line 169
    :goto_4
    return-void

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/samsung/http/HTTPRequest;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/http/HTTPRequest;->uri:Ljava/lang/String;

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method
