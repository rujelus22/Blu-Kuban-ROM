.class public final Ljavax/obex/ServerSession;
.super Ljavax/obex/ObexSession;
.source "ServerSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Obex ServerSession"


# instance fields
.field private mClosed:Z

.field private mInput:Ljava/io/InputStream;

.field private mListener:Ljavax/obex/ServerRequestHandler;

.field private mMaxPacketLength:I

.field private mOutput:Ljava/io/OutputStream;

.field private mProcessThread:Ljava/lang/Thread;

.field private mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method public constructor <init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V
    .registers 5
    .parameter "trans"
    .parameter "handler"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljavax/obex/ObexSession;-><init>()V

    .line 73
    iput-object p3, p0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    .line 74
    iput-object p1, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 75
    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    .line 76
    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    .line 77
    iput-object p2, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    .line 78
    const/16 v0, 0x100

    iput v0, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/obex/ServerSession;->mClosed:Z

    .line 81
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ljavax/obex/ServerSession;->mProcessThread:Ljava/lang/Thread;

    .line 82
    iget-object v0, p0, Ljavax/obex/ServerSession;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method private handleAbortRequest()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/16 v0, 0xa0

    .line 161
    .local v0, code:I
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    .line 162
    .local v4, request:Ljavax/obex/HeaderSet;
    new-instance v3, Ljavax/obex/HeaderSet;

    invoke-direct {v3}, Ljavax/obex/HeaderSet;-><init>()V

    .line 164
    .local v3, reply:Ljavax/obex/HeaderSet;
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 165
    .local v2, length:I
    shl-int/lit8 v5, v2, 0x8

    iget-object v6, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int v2, v5, v6

    .line 166
    const v5, 0xfffe

    if-le v2, v5, :cond_28

    .line 167
    const/16 v0, 0xce

    .line 176
    :goto_23
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 177
    return-void

    .line 169
    :cond_28
    const/4 v1, 0x3

    .local v1, i:I
    :goto_29
    if-ge v1, v2, :cond_33

    .line 170
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 172
    :cond_33
    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v5, v4, v3}, Ljavax/obex/ServerRequestHandler;->onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    move-result v0

    .line 173
    const-string v5, "Obex ServerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAbort request handler return value- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0, v0}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v0

    goto :goto_23
.end method

.method private handleConnectRequest()V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    const/16 v16, 0x7

    .line 524
    .local v16, totalLength:I
    const/4 v7, 0x0

    .line 525
    .local v7, head:[B
    const/4 v4, -0x1

    .line 526
    .local v4, code:I
    new-instance v14, Ljavax/obex/HeaderSet;

    invoke-direct {v14}, Ljavax/obex/HeaderSet;-><init>()V

    .line 527
    .local v14, request:Ljavax/obex/HeaderSet;
    new-instance v13, Ljavax/obex/HeaderSet;

    invoke-direct {v13}, Ljavax/obex/HeaderSet;-><init>()V

    .line 534
    .local v13, reply:Ljavax/obex/HeaderSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 535
    .local v12, packetLength:I
    shl-int/lit8 v18, v12, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v19

    add-int v12, v18, v19

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v17

    .line 537
    .local v17, version:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 538
    .local v6, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    .line 539
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    .line 542
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v18, v0

    const v19, 0xfffe

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7c

    .line 543
    const v18, 0xfffe

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    .line 546
    :cond_7c
    const v18, 0xfffe

    move/from16 v0, v18

    if-le v12, v0, :cond_ea

    .line 547
    const/16 v4, 0xce

    .line 548
    const/16 v16, 0x7

    .line 623
    :cond_87
    :goto_87
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v11

    .line 631
    .local v11, length:[B
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 632
    .local v15, sendData:[B
    const/16 v18, 0x0

    int-to-byte v0, v4

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 633
    const/16 v18, 0x1

    const/16 v19, 0x2

    aget-byte v19, v11, v19

    aput-byte v19, v15, v18

    .line 634
    const/16 v18, 0x2

    const/16 v19, 0x3

    aget-byte v19, v11, v19

    aput-byte v19, v15, v18

    .line 635
    const/16 v18, 0x3

    const/16 v19, 0x10

    aput-byte v19, v15, v18

    .line 636
    const/16 v18, 0x4

    const/16 v19, 0x0

    aput-byte v19, v15, v18

    .line 637
    const/16 v18, 0x5

    const/16 v19, -0x1

    aput-byte v19, v15, v18

    .line 638
    const/16 v18, 0x6

    const/16 v19, -0x2

    aput-byte v19, v15, v18

    .line 640
    if-eqz v7, :cond_d5

    .line 641
    const/16 v18, 0x0

    const/16 v19, 0x7

    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v7, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    :cond_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/io/OutputStream;->write([B)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 646
    return-void

    .line 550
    .end local v11           #length:[B
    .end local v15           #sendData:[B
    :cond_ea
    const/16 v18, 0x7

    move/from16 v0, v18

    if-le v12, v0, :cond_122

    .line 551
    add-int/lit8 v18, v12, -0x7

    move/from16 v0, v18

    new-array v8, v0, [B

    .line 552
    .local v8, headers:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 554
    .local v3, bytesReceived:I
    :goto_102
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v3, v0, :cond_11f

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    sub-int v19, v19, v3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    add-int v3, v3, v18

    goto :goto_102

    .line 559
    :cond_11f
    invoke-static {v14, v8}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    .line 562
    .end local v3           #bytesReceived:I
    .end local v8           #headers:[B
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_22f

    iget-object v0, v14, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_22f

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v18, v0

    iget-object v0, v14, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 568
    :goto_149
    iget-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_178

    .line 569
    iget-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v18

    if-nez v18, :cond_172

    .line 570
    const/16 v4, 0xc1

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    iget-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    .line 574
    :cond_172
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 577
    :cond_178
    const/16 v18, 0xc1

    move/from16 v0, v18

    if-eq v4, v0, :cond_87

    .line 578
    iget-object v0, v14, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c0

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 580
    iget-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v13, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 581
    iget-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v13, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v13, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v14, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 584
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 588
    :cond_1c0
    :try_start_1c0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v13}, Ljavax/obex/ServerRequestHandler;->onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    move-result v4

    .line 589
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v4

    .line 591
    iget-object v0, v13, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_23c

    .line 592
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    .line 593
    iget-object v0, v13, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x10

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    :goto_1f9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v9

    .line 598
    .local v9, id:J
    const-wide/16 v18, -0x1

    cmp-long v18, v9, v18

    if-nez v18, :cond_250

    .line 599
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v13, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 604
    :goto_20f
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v0}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v7

    .line 605
    array-length v0, v7

    move/from16 v18, v0

    add-int v16, v16, v18

    .line 607
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v18, v0
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_222} :catch_245

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_87

    .line 608
    const/16 v16, 0x7

    .line 609
    const/4 v7, 0x0

    .line 610
    const/16 v4, 0xd0

    goto/16 :goto_87

    .line 565
    .end local v9           #id:J
    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x1

    invoke-virtual/range {v18 .. v20}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto/16 :goto_149

    .line 595
    :cond_23c
    const/16 v18, 0x0

    :try_start_23e
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ObexSession;->mChallengeDigest:[B
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_244} :catch_245

    goto :goto_1f9

    .line 612
    :catch_245
    move-exception v5

    .line 613
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    const/16 v16, 0x7

    .line 615
    const/4 v7, 0x0

    .line 616
    const/16 v4, 0xd0

    goto/16 :goto_87

    .line 601
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v9       #id:J
    :cond_250
    :try_start_250
    invoke-static {v9, v10}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Ljavax/obex/HeaderSet;->mConnectionID:[B
    :try_end_258
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_258} :catch_245

    goto :goto_20f
.end method

.method private handleDisconnectRequest()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    const/16 v2, 0xa0

    .line 415
    .local v2, code:I
    const/4 v12, 0x3

    .line 416
    .local v12, totalLength:I
    const/4 v4, 0x0

    .line 418
    .local v4, head:[B
    new-instance v11, Ljavax/obex/HeaderSet;

    invoke-direct {v11}, Ljavax/obex/HeaderSet;-><init>()V

    .line 419
    .local v11, request:Ljavax/obex/HeaderSet;
    new-instance v9, Ljavax/obex/HeaderSet;

    invoke-direct {v9}, Ljavax/obex/HeaderSet;-><init>()V

    .line 421
    .local v9, reply:Ljavax/obex/HeaderSet;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 422
    .local v8, length:I
    shl-int/lit8 v13, v8, 0x8

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v14

    add-int v8, v13, v14

    .line 424
    const v13, 0xfffe

    if-le v8, v13, :cond_56

    .line 425
    const/16 v2, 0xce

    .line 426
    const/4 v12, 0x3

    .line 489
    :cond_2a
    :goto_2a
    if-eqz v4, :cond_10e

    .line 490
    array-length v13, v4

    add-int/lit8 v13, v13, 0x3

    new-array v10, v13, [B

    .line 494
    .local v10, replyData:[B
    :goto_31
    const/4 v13, 0x0

    int-to-byte v14, v2

    aput-byte v14, v10, v13

    .line 495
    const/4 v13, 0x1

    shr-int/lit8 v14, v12, 0x8

    int-to-byte v14, v14

    aput-byte v14, v10, v13

    .line 496
    const/4 v13, 0x2

    int-to-byte v14, v12

    aput-byte v14, v10, v13

    .line 497
    if-eqz v4, :cond_47

    .line 498
    const/4 v13, 0x0

    const/4 v14, 0x3

    array-length v15, v4

    invoke-static {v4, v13, v10, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    :cond_47
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v13, v10}, Ljava/io/OutputStream;->write([B)V

    .line 505
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 506
    .end local v10           #replyData:[B
    :goto_55
    return-void

    .line 428
    :cond_56
    const/4 v13, 0x3

    if-le v8, v13, :cond_77

    .line 429
    add-int/lit8 v13, v8, -0x3

    new-array v5, v13, [B

    .line 430
    .local v5, headers:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v13, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 432
    .local v1, bytesReceived:I
    :goto_65
    array-length v13, v5

    if-eq v1, v13, :cond_74

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    array-length v14, v5

    sub-int/2addr v14, v1

    invoke-virtual {v13, v5, v1, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    add-int/2addr v1, v13

    goto :goto_65

    .line 437
    :cond_74
    invoke-static {v11, v5}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    .line 440
    .end local v1           #bytesReceived:I
    .end local v5           #headers:[B
    :cond_77
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v13}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_f2

    iget-object v13, v11, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz v13, :cond_f2

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    iget-object v14, v11, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v14}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 446
    :goto_96
    iget-object v13, v11, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v13, :cond_b7

    .line 447
    iget-object v13, v11, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v13

    if-nez v13, :cond_b4

    .line 448
    const/16 v2, 0xc1

    .line 449
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    const/4 v14, 0x1

    iget-object v15, v11, Ljavax/obex/HeaderSet;->mAuthResp:[B

    invoke-static {v14, v15}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    .line 452
    :cond_b4
    const/4 v13, 0x0

    iput-object v13, v11, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 455
    :cond_b7
    const/16 v13, 0xc1

    if-eq v2, v13, :cond_2a

    .line 457
    iget-object v13, v11, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v13, :cond_c7

    .line 458
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 459
    const/4 v13, 0x0

    iput-object v13, v11, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 463
    :cond_c7
    :try_start_c7
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v13, v11, v9}, Ljavax/obex/ServerRequestHandler;->onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ce} :catch_fc

    .line 469
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v13}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v6

    .line 470
    .local v6, id:J
    const-wide/16 v13, -0x1

    cmp-long v13, v6, v13

    if-nez v13, :cond_107

    .line 471
    const/4 v13, 0x0

    iput-object v13, v9, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 476
    :goto_df
    const/4 v13, 0x0

    invoke-static {v9, v13}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v4

    .line 477
    array-length v13, v4

    add-int/2addr v12, v13

    .line 479
    move-object/from16 v0, p0

    iget v13, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    if-le v12, v13, :cond_2a

    .line 480
    const/4 v12, 0x3

    .line 481
    const/4 v4, 0x0

    .line 482
    const/16 v2, 0xd0

    goto/16 :goto_2a

    .line 443
    .end local v6           #id:J
    :cond_f2
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    const-wide/16 v14, 0x1

    invoke-virtual {v13, v14, v15}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_96

    .line 464
    :catch_fc
    move-exception v3

    .line 465
    .local v3, e:Ljava/lang/Exception;
    const/16 v13, 0xd0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto/16 :goto_55

    .line 473
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v6       #id:J
    :cond_107
    invoke-static {v6, v7}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v13

    iput-object v13, v9, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto :goto_df

    .line 492
    .end local v6           #id:J
    :cond_10e
    const/4 v13, 0x3

    new-array v10, v13, [B

    .restart local v10       #replyData:[B
    goto/16 :goto_31
.end method

.method private handleGetRequest(I)V
    .registers 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljavax/obex/ServerOperation;

    iget-object v2, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    iget v4, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ljavax/obex/ServerOperation;-><init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V

    .line 240
    .local v0, op:Ljavax/obex/ServerOperation;
    :try_start_d
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v1, v0}, Ljavax/obex/ServerRequestHandler;->onGet(Ljavax/obex/Operation;)I

    move-result v1

    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v7

    .line 242
    .local v7, response:I
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_1e

    .line 243
    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    .line 248
    .end local v7           #response:I
    :cond_1e
    :goto_1e
    return-void

    .line 245
    :catch_1f
    move-exception v6

    .line 246
    .local v6, e:Ljava/lang/Exception;
    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto :goto_1e
.end method

.method private handlePutRequest(I)V
    .registers 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljavax/obex/ServerOperation;

    iget-object v2, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    iget v4, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ljavax/obex/ServerOperation;-><init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V

    .line 195
    .local v0, op:Ljavax/obex/ServerOperation;
    const/4 v7, -0x1

    .line 197
    .local v7, response:I
    :try_start_e
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Ljavax/obex/ServerOperation;->isValidBody()Z

    move-result v1

    if-nez v1, :cond_32

    .line 198
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    iget-object v2, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    invoke-virtual {v1, v2, v3}, Ljavax/obex/ServerRequestHandler;->onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    move-result v1

    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v7

    .line 203
    :goto_26
    const/16 v1, 0xa0

    if-eq v7, v1, :cond_3d

    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_3d

    .line 204
    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    .line 222
    :cond_31
    :goto_31
    return-void

    .line 201
    :cond_32
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v1, v0}, Ljavax/obex/ServerRequestHandler;->onPut(Ljavax/obex/Operation;)I

    move-result v1

    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v7

    goto :goto_26

    .line 205
    :cond_3d
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_31

    .line 207
    :goto_41
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v1, :cond_57

    .line 208
    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4a} :catch_4b

    goto :goto_41

    .line 212
    :catch_4b
    move-exception v6

    .line 218
    .local v6, e:Ljava/lang/Exception;
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_31

    .line 219
    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto :goto_31

    .line 210
    .end local v6           #e:Ljava/lang/Exception;
    :cond_57
    :try_start_57
    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_4b

    goto :goto_31
.end method

.method private handleSetPathRequest()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    const/16 v19, 0x3

    .line 292
    .local v19, totalLength:I
    const/4 v11, 0x0

    .line 293
    .local v11, head:[B
    const/4 v6, -0x1

    .line 295
    .local v6, code:I
    new-instance v18, Ljavax/obex/HeaderSet;

    invoke-direct/range {v18 .. v18}, Ljavax/obex/HeaderSet;-><init>()V

    .line 296
    .local v18, request:Ljavax/obex/HeaderSet;
    new-instance v16, Ljavax/obex/HeaderSet;

    invoke-direct/range {v16 .. v16}, Ljavax/obex/HeaderSet;-><init>()V

    .line 298
    .local v16, reply:Ljavax/obex/HeaderSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v15

    .line 299
    .local v15, length:I
    shl-int/lit8 v20, v15, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->read()I

    move-result v21

    add-int v15, v20, v21

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 301
    .local v10, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 303
    .local v7, constants:I
    const v20, 0xfffe

    move/from16 v0, v20

    if-le v15, v0, :cond_91

    .line 304
    const/16 v6, 0xce

    .line 305
    const/16 v19, 0x3

    .line 389
    :cond_45
    :goto_45
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 390
    .local v17, replyData:[B
    const/16 v20, 0x0

    int-to-byte v0, v6

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 391
    const/16 v20, 0x1

    shr-int/lit8 v21, v19, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 392
    const/16 v20, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 393
    if-eqz v11, :cond_7a

    .line 394
    const/16 v20, 0x0

    const/16 v21, 0x3

    array-length v0, v11

    move/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 402
    .end local v17           #replyData:[B
    :goto_90
    return-void

    .line 307
    :cond_91
    const/16 v20, 0x5

    move/from16 v0, v20

    if-le v15, v0, :cond_12d

    .line 308
    add-int/lit8 v20, v15, -0x5

    move/from16 v0, v20

    new-array v12, v0, [B

    .line 309
    .local v12, headers:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 311
    .local v5, bytesReceived:I
    :goto_a9
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_c6

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    array-length v0, v12

    move/from16 v21, v0

    sub-int v21, v21, v5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    add-int v5, v5, v20

    goto :goto_a9

    .line 316
    :cond_c6
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_20e

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_20e

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 324
    :goto_f6
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_12d

    .line 325
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v20

    if-nez v20, :cond_125

    .line 326
    const/16 v6, 0xc1

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    .line 330
    :cond_125
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 334
    .end local v5           #bytesReceived:I
    .end local v12           #headers:[B
    :cond_12d
    const/16 v20, 0xc1

    move/from16 v0, v20

    if-eq v6, v0, :cond_45

    .line 337
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_187

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 339
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 340
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 343
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 345
    :cond_187
    const/4 v4, 0x0

    .line 346
    .local v4, backup:Z
    const/4 v8, 0x1

    .line 347
    .local v8, create:Z
    and-int/lit8 v20, v10, 0x1

    if-eqz v20, :cond_18e

    .line 348
    const/4 v4, 0x1

    .line 350
    :cond_18e
    and-int/lit8 v20, v10, 0x2

    if-eqz v20, :cond_193

    .line 351
    const/4 v8, 0x0

    .line 355
    :cond_193
    :try_start_193
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4, v8}, Ljavax/obex/ServerRequestHandler;->onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1a2} :catch_21b

    move-result v6

    .line 361
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v6

    .line 363
    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_22b

    .line 364
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    .line 365
    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x10

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    :goto_1d4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v13

    .line 371
    .local v13, id:J
    const-wide/16 v20, -0x1

    cmp-long v20, v13, v20

    if-nez v20, :cond_234

    .line 372
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 377
    :goto_1ec
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v11

    .line 378
    array-length v0, v11

    move/from16 v20, v0

    add-int v19, v19, v20

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_45

    .line 381
    const/16 v19, 0x3

    .line 382
    const/4 v11, 0x0

    .line 383
    const/16 v6, 0xd0

    goto/16 :goto_45

    .line 321
    .end local v4           #backup:Z
    .end local v8           #create:Z
    .end local v13           #id:J
    .restart local v5       #bytesReceived:I
    .restart local v12       #headers:[B
    :cond_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x1

    invoke-virtual/range {v20 .. v22}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto/16 :goto_f6

    .line 356
    .end local v5           #bytesReceived:I
    .end local v12           #headers:[B
    .restart local v4       #backup:Z
    .restart local v8       #create:Z
    :catch_21b
    move-exception v9

    .line 357
    .local v9, e:Ljava/lang/Exception;
    const/16 v20, 0xd0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto/16 :goto_90

    .line 367
    .end local v9           #e:Ljava/lang/Exception;
    :cond_22b
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    goto :goto_1d4

    .line 374
    .restart local v13       #id:J
    :cond_234
    invoke-static {v13, v14}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto :goto_1ec
.end method

.method private validateResponseCode(I)I
    .registers 4
    .parameter "code"

    .prologue
    const/16 v0, 0xd0

    .line 679
    const/16 v1, 0xa0

    if-lt p1, v1, :cond_b

    const/16 v1, 0xa6

    if-gt p1, v1, :cond_b

    .line 698
    .end local p1
    :cond_a
    :goto_a
    return p1

    .line 682
    .restart local p1
    :cond_b
    const/16 v1, 0xb0

    if-lt p1, v1, :cond_13

    const/16 v1, 0xb5

    if-le p1, v1, :cond_a

    .line 686
    :cond_13
    const/16 v1, 0xc0

    if-lt p1, v1, :cond_1b

    const/16 v1, 0xcf

    if-le p1, v1, :cond_a

    .line 690
    :cond_1b
    if-lt p1, v0, :cond_21

    const/16 v1, 0xd5

    if-le p1, v1, :cond_a

    .line 694
    :cond_21
    const/16 v1, 0xe0

    if-lt p1, v1, :cond_29

    const/16 v1, 0xe1

    if-le p1, v1, :cond_a

    :cond_29
    move p1, v0

    .line 698
    goto :goto_a
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 654
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    if-eqz v0, :cond_a

    .line 655
    iget-object v0, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v0}, Ljavax/obex/ServerRequestHandler;->onClose()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_2a

    .line 658
    :cond_a
    :try_start_a
    iget-object v0, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 659
    iget-object v0, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 660
    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->close()V

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ServerSession;->mClosed:Z
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_2d

    .line 664
    :goto_1c
    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_2a

    .line 668
    monitor-exit p0

    return-void

    .line 654
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 662
    :catch_2d
    move-exception v0

    goto :goto_1c
.end method

.method public run()V
    .registers 8

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, done:Z
    :goto_1
    if-nez v0, :cond_39

    :try_start_3
    iget-boolean v5, p0, Ljavax/obex/ServerSession;->mClosed:Z

    if-nez v5, :cond_39

    .line 94
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 95
    .local v4, requestType:I
    sparse-switch v4, :sswitch_data_66

    .line 133
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 134
    .local v3, length:I
    shl-int/lit8 v5, v3, 0x8

    iget-object v6, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int v3, v5, v6

    .line 135
    const/4 v2, 0x3

    .local v2, i:I
    :goto_21
    if-ge v2, v3, :cond_5f

    .line 136
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 97
    .end local v2           #i:I
    .end local v3           #length:I
    :sswitch_2b
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleConnectRequest()V
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_46

    goto :goto_1

    .line 142
    .end local v4           #requestType:I
    :catch_2f
    move-exception v1

    .line 143
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "Obex ServerSession"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_39
    :goto_39
    invoke-virtual {p0}, Ljavax/obex/ServerSession;->close()V

    .line 148
    return-void

    .line 101
    .restart local v4       #requestType:I
    :sswitch_3d
    :try_start_3d
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleDisconnectRequest()V

    .line 102
    const/4 v0, 0x1

    .line 103
    goto :goto_1

    .line 107
    :sswitch_42
    invoke-direct {p0, v4}, Ljavax/obex/ServerSession;->handleGetRequest(I)V
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_45} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_45} :catch_46

    goto :goto_1

    .line 144
    .end local v4           #requestType:I
    :catch_46
    move-exception v1

    .line 145
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Obex ServerSession"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 112
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #requestType:I
    :sswitch_51
    :try_start_51
    invoke-direct {p0, v4}, Ljavax/obex/ServerSession;->handlePutRequest(I)V

    goto :goto_1

    .line 116
    :sswitch_55
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleSetPathRequest()V

    goto :goto_1

    .line 119
    :sswitch_59
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleAbortRequest()V

    goto :goto_1

    .line 123
    :sswitch_5d
    const/4 v0, 0x1

    .line 124
    goto :goto_1

    .line 138
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_5f
    const/16 v5, 0xd1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Ljavax/obex/ServerSession;->sendResponse(I[B)V
    :try_end_65
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_65} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_65} :catch_46

    goto :goto_1

    .line 95
    :sswitch_data_66
    .sparse-switch
        -0x1 -> :sswitch_5d
        0x2 -> :sswitch_51
        0x3 -> :sswitch_42
        0x80 -> :sswitch_2b
        0x81 -> :sswitch_3d
        0x82 -> :sswitch_51
        0x83 -> :sswitch_42
        0x85 -> :sswitch_55
        0xff -> :sswitch_59
    .end sparse-switch
.end method

.method public sendResponse(I[B)V
    .registers 9
    .parameter "code"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 257
    const/4 v1, 0x3

    .line 258
    .local v1, totalLength:I
    const/4 v0, 0x0

    .line 260
    .local v0, data:[B
    if-eqz p2, :cond_26

    .line 261
    array-length v2, p2

    add-int/2addr v1, v2

    .line 262
    new-array v0, v1, [B

    .line 263
    int-to-byte v2, p1

    aput-byte v2, v0, v4

    .line 264
    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 265
    int-to-byte v2, v1

    aput-byte v2, v0, v5

    .line 266
    const/4 v2, 0x3

    array-length v3, p2

    invoke-static {p2, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    :goto_1b
    iget-object v2, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 274
    iget-object v2, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 275
    return-void

    .line 268
    :cond_26
    new-array v0, v1, [B

    .line 269
    int-to-byte v2, p1

    aput-byte v2, v0, v4

    .line 270
    aput-byte v4, v0, v3

    .line 271
    int-to-byte v2, v1

    aput-byte v2, v0, v5

    goto :goto_1b
.end method
