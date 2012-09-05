.class public final Ljavax/obex/ServerOperation;
.super Ljava/lang/Object;
.source "ServerOperation.java"

# interfaces
.implements Ljavax/obex/Operation;
.implements Ljavax/obex/BaseStream;


# instance fields
.field public finalBitSet:Z

.field public isAborted:Z

.field private mClosed:Z

.field private mExceptionString:Ljava/lang/String;

.field private mGetOperation:Z

.field private mHasBody:Z

.field private mInput:Ljava/io/InputStream;

.field private mListener:Ljavax/obex/ServerRequestHandler;

.field private mMaxPacketLength:I

.field private mParent:Ljavax/obex/ServerSession;

.field private mPrivateInput:Ljavax/obex/PrivateInputStream;

.field private mPrivateOutput:Ljavax/obex/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mRequestFinished:Z

.field private mResponseSize:I

.field public replyHeader:Ljavax/obex/HeaderSet;

.field public requestHeader:Ljavax/obex/HeaderSet;


# direct methods
.method public constructor <init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V
    .registers 15
    .parameter "p"
    .parameter "in"
    .parameter "request"
    .parameter "maxSize"
    .parameter "listen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 105
    iput-object p1, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    .line 106
    iput-object p2, p0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    .line 107
    iput p4, p0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    .line 108
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 109
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    .line 110
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v4, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    .line 111
    new-instance v4, Ljavax/obex/PrivateInputStream;

    invoke-direct {v4, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 112
    const/4 v4, 0x3

    iput v4, p0, Ljavax/obex/ServerOperation;->mResponseSize:I

    .line 113
    iput-object p5, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    .line 114
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    .line 115
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    .line 116
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    .line 122
    const/4 v4, 0x2

    if-eq p3, v4, :cond_39

    const/16 v4, 0x82

    if-ne p3, v4, :cond_6b

    .line 126
    :cond_39
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    .line 131
    and-int/lit16 v4, p3, 0x80

    if-nez v4, :cond_64

    .line 132
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 153
    :cond_43
    :goto_43
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 154
    .local v3, length:I
    shl-int/lit8 v4, v3, 0x8

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    add-int v3, v4, v5

    .line 159
    const v4, 0xfffe

    if-le v3, v4, :cond_88

    .line 160
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    const/16 v5, 0xce

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 161
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Packet received was too large"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    .end local v3           #length:I
    :cond_64
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 135
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    goto :goto_43

    .line 137
    :cond_6b
    const/4 v4, 0x3

    if-eq p3, v4, :cond_72

    const/16 v4, 0x83

    if-ne p3, v4, :cond_80

    .line 141
    :cond_72
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    .line 144
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 146
    const/16 v4, 0x83

    if-ne p3, v4, :cond_43

    .line 147
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    goto :goto_43

    .line 150
    :cond_80
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ServerOperation can not handle such request"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    .restart local v3       #length:I
    :cond_88
    const/4 v4, 0x3

    if-le v3, v4, :cond_133

    .line 168
    add-int/lit8 v4, v3, -0x3

    new-array v2, v4, [B

    .line 169
    .local v2, data:[B
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 171
    .local v1, bytesReceived:I
    :goto_93
    array-length v4, v2

    if-eq v1, v4, :cond_9e

    .line 172
    array-length v4, v2

    sub-int/2addr v4, v1

    invoke-virtual {p2, v2, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_93

    .line 175
    :cond_9e
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v4, v2}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    move-result-object v0

    .line 177
    .local v0, body:[B
    if-eqz v0, :cond_a9

    .line 178
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    .line 181
    :cond_a9
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v4}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_ef

    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz v4, :cond_ef

    .line 182
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v5, v5, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v5}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 187
    :goto_c8
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v4, :cond_f7

    .line 188
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v5, v5, Ljavax/obex/HeaderSet;->mAuthResp:[B

    invoke-virtual {v4, v5}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v4

    if-nez v4, :cond_f7

    .line 189
    const-string v4, "Authentication Failed"

    iput-object v4, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 190
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    const/16 v5, 0xc1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 191
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 192
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/4 v5, 0x0

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 231
    .end local v0           #body:[B
    .end local v1           #bytesReceived:I
    .end local v2           #data:[B
    :cond_ee
    return-void

    .line 184
    .restart local v0       #body:[B
    .restart local v1       #bytesReceived:I
    .restart local v2       #data:[B
    :cond_ef
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_c8

    .line 197
    :cond_f7
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v4, :cond_12b

    .line 198
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    invoke-virtual {v4, v5}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 200
    iget-object v4, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v5, v5, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v5, v5

    new-array v5, v5, [B

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 201
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v5, 0x0

    iget-object v6, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    iget-object v6, v6, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v7, 0x0

    iget-object v8, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    iget-object v8, v8, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/4 v5, 0x0

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 204
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/4 v5, 0x0

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 208
    :cond_12b
    if-eqz v0, :cond_15e

    .line 209
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Ljavax/obex/PrivateInputStream;->writeBytes([BI)V

    .line 220
    .end local v0           #body:[B
    .end local v1           #bytesReceived:I
    .end local v2           #data:[B
    :cond_133
    :goto_133
    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-nez v4, :cond_150

    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v4, :cond_150

    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v4}, Ljavax/obex/PrivateInputStream;->available()I

    move-result v4

    if-nez v4, :cond_150

    .line 221
    const/16 v4, 0x90

    invoke-virtual {p0, v4}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    .line 222
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v4}, Ljavax/obex/PrivateInputStream;->available()I

    move-result v4

    if-lez v4, :cond_133

    .line 228
    :cond_150
    :goto_150
    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-eqz v4, :cond_ee

    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    if-nez v4, :cond_ee

    .line 229
    const/16 v4, 0x90

    invoke-virtual {p0, v4}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    goto :goto_150

    .line 211
    .restart local v0       #body:[B
    .restart local v1       #bytesReceived:I
    .restart local v2       #data:[B
    :cond_15e
    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-nez v4, :cond_133

    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v4, :cond_133

    .line 212
    const/16 v4, 0x90

    invoke-virtual {p0, v4}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    .line 213
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v4}, Ljavax/obex/PrivateInputStream;->available()I

    move-result v4

    if-lez v4, :cond_15e

    goto :goto_133
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Called from a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 676
    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .registers 7
    .parameter "sendEmpty"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 251
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-nez v2, :cond_2e

    .line 252
    iget-boolean v2, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v2, :cond_2c

    .line 253
    if-eqz p1, :cond_14

    .line 254
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_27

    .line 269
    :goto_12
    monitor-exit p0

    return v0

    .line 257
    :cond_14
    :try_start_14
    iget v2, p0, Ljavax/obex/ServerOperation;->mResponseSize:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_21

    iget-object v2, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_2a

    .line 258
    :cond_21
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_27

    goto :goto_12

    .line 251
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2a
    move v0, v1

    .line 261
    goto :goto_12

    :cond_2c
    move v0, v1

    .line 265
    goto :goto_12

    .line 268
    :cond_2e
    const/16 v1, 0x90

    :try_start_30
    invoke-virtual {p0, v1}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_27

    goto :goto_12
.end method

.method public ensureNotDone()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    return-void
.end method

.method public ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 684
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_c
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    if-eqz v0, :cond_18

    .line 687
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_18
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderLength()I
    .registers 6

    .prologue
    .line 606
    iget-object v3, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v3}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v1

    .line 607
    .local v1, id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    .line 608
    iget-object v3, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    const/4 v4, 0x0

    iput-object v4, v3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 613
    :goto_11
    iget-object v3, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 615
    .local v0, headerArray:[B
    array-length v3, v0

    return v3

    .line 610
    .end local v0           #headerArray:[B
    :cond_1a
    iget-object v3, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    invoke-static {v1, v2}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v4

    iput-object v4, v3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto :goto_11
.end method

.method public getLength()J
    .registers 7

    .prologue
    const-wide/16 v2, -0x1

    .line 589
    :try_start_2
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/16 v5, 0xc3

    invoke-virtual {v4, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 591
    .local v1, temp:Ljava/lang/Long;
    if-nez v1, :cond_f

    .line 597
    .end local v1           #temp:Ljava/lang/Long;
    :goto_e
    return-wide v2

    .line 594
    .restart local v1       #temp:Ljava/lang/Long;
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_14

    move-result-wide v2

    goto :goto_e

    .line 596
    .end local v1           #temp:Ljava/lang/Long;
    :catch_14
    move-exception v0

    .line 597
    .local v0, e:Ljava/io/IOException;
    goto :goto_e
.end method

.method public getMaxPacketSize()I
    .registers 3

    .prologue
    .line 602
    iget v0, p0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getReceivedHeader()Ljavax/obex/HeaderSet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 515
    iget-object v0, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Called from a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 574
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 576
    :goto_a
    return-object v1

    .line 575
    :catch_b
    move-exception v0

    .line 576
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isValidBody()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    return v0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 625
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 645
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    if-eqz v0, :cond_f

    .line 646
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more input streams available, stream already opened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_f
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    if-nez v0, :cond_1b

    .line 650
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no  output streams available ,request not finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_1b
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-nez v0, :cond_2a

    .line 654
    new-instance v0, Ljavax/obex/PrivateOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->getMaxPacketSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljavax/obex/PrivateOutputStream;-><init>(Ljavax/obex/BaseStream;I)V

    iput-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    .line 656
    :cond_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    .line 657
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    return-object v0
.end method

.method public sendHeaders(Ljavax/obex/HeaderSet;)V
    .registers 7
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 530
    if-nez p1, :cond_d

    .line 531
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Headers may not be null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :cond_d
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 535
    .local v0, headerList:[I
    if-eqz v0, :cond_27

    .line 536
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_27

    .line 537
    iget-object v2, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 541
    .end local v1           #i:I
    :cond_27
    return-void
.end method

.method public declared-synchronized sendReply(I)Z
    .registers 25
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 287
    .local v14, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v10

    .line 288
    .local v10, id:J
    const-wide/16 v18, -0x1

    cmp-long v18, v10, v18

    if-nez v18, :cond_b8

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 294
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v8

    .line 295
    .local v8, headerArray:[B
    const/4 v4, -0x1

    .line 296
    .local v4, bodyLength:I
    const/4 v13, -0x1

    .line 298
    .local v13, orginalBodyLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_45

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v4

    .line 300
    move v13, v4

    .line 303
    :cond_45
    array-length v0, v8

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f8

    .line 305
    const/4 v7, 0x0

    .line 306
    .local v7, end:I
    const/16 v16, 0x0

    .line 308
    .local v16, start:I
    :goto_59
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v7, v0, :cond_ef

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x3

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Ljavax/obex/ObexHelper;->findHeaderEnd([BII)I

    move-result v7

    .line 311
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_ca

    .line 313
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8f

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/obex/PrivateInputStream;->close()V

    .line 319
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a0

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/obex/PrivateOutputStream;->close()V

    .line 322
    :cond_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v18, v0

    const/16 v19, 0xd0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 323
    new-instance v18, Ljava/io/IOException;

    const-string v19, "OBEX Packet exceeds max packet size"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_b5
    .catchall {:try_start_1 .. :try_end_b5} :catchall_b5

    .line 284
    .end local v4           #bodyLength:I
    .end local v7           #end:I
    .end local v8           #headerArray:[B
    .end local v10           #id:J
    .end local v13           #orginalBodyLength:I
    .end local v14           #out:Ljava/io/ByteArrayOutputStream;
    .end local v16           #start:I
    :catchall_b5
    move-exception v18

    monitor-exit p0

    throw v18

    .line 291
    .restart local v10       #id:J
    .restart local v14       #out:Ljava/io/ByteArrayOutputStream;
    :cond_b8
    :try_start_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    invoke-static {v10, v11}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto/16 :goto_24

    .line 325
    .restart local v4       #bodyLength:I
    .restart local v7       #end:I
    .restart local v8       #headerArray:[B
    .restart local v13       #orginalBodyLength:I
    .restart local v16       #start:I
    :cond_ca
    sub-int v18, v7, v16

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 326
    .local v15, sendHeader:[B
    const/16 v18, 0x0

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Ljavax/obex/ServerSession;->sendResponse(I[B)V
    :try_end_eb
    .catchall {:try_start_b8 .. :try_end_eb} :catchall_b5

    .line 329
    move/from16 v16, v7

    .line 330
    goto/16 :goto_59

    .line 332
    .end local v15           #sendHeader:[B
    :cond_ef
    if-lez v4, :cond_f5

    .line 333
    const/16 v18, 0x1

    .line 491
    .end local v7           #end:I
    .end local v16           #start:I
    :goto_f3
    monitor-exit p0

    return v18

    .line 335
    .restart local v7       #end:I
    .restart local v16       #start:I
    :cond_f5
    const/16 v18, 0x0

    goto :goto_f3

    .line 339
    .end local v7           #end:I
    .end local v16           #start:I
    :cond_f8
    :try_start_f8
    invoke-virtual {v14, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    move/from16 v18, v0

    if-eqz v18, :cond_113

    const/16 v18, 0xa0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_113

    .line 345
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 348
    :cond_113
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    move/from16 v18, v0

    if-nez v18, :cond_12c

    array-length v0, v8

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x14

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_18c

    .line 349
    :cond_12c
    if-lez v4, :cond_18c

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int/lit8 v18, v18, -0x6

    move/from16 v0, v18

    if-le v4, v0, :cond_14c

    .line 356
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int/lit8 v4, v18, -0x6

    .line 359
    :cond_14c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljavax/obex/PrivateOutputStream;->readBytes(I)[B

    move-result-object v3

    .line 366
    .local v3, body:[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    move/from16 v18, v0

    if-nez v18, :cond_16c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/obex/PrivateOutputStream;->isClosed()Z

    move-result v18

    if-eqz v18, :cond_256

    .line 367
    :cond_16c
    const/16 v18, 0x49

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 372
    :goto_173
    add-int/lit8 v4, v4, 0x3

    .line 373
    shr-int/lit8 v18, v4, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 374
    int-to-byte v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    invoke-virtual {v14, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 379
    .end local v3           #body:[B
    :cond_18c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1ba

    const/16 v18, 0xa0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1ba

    if-gtz v13, :cond_1ba

    .line 380
    const/16 v18, 0x49

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    const/4 v13, 0x3

    .line 382
    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 383
    int-to-byte v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 387
    :cond_1ba
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerOperation;->mResponseSize:I

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 390
    const/16 v18, 0x90

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_482

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 392
    .local v9, headerID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 393
    .local v12, length:I
    shl-int/lit8 v18, v12, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v19

    add-int v12, v18, v19

    .line 394
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v9, v0, :cond_2b7

    const/16 v18, 0x82

    move/from16 v0, v18

    if-eq v9, v0, :cond_2b7

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v9, v0, :cond_2b7

    const/16 v18, 0x83

    move/from16 v0, v18

    if-eq v9, v0, :cond_2b7

    .line 399
    const/16 v18, 0x3

    move/from16 v0, v18

    if-le v12, v0, :cond_25f

    .line 400
    add-int/lit8 v18, v12, -0x3

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 402
    .local v17, temp:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 404
    .local v5, bytesReceived:I
    :goto_233
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v5, v0, :cond_25f

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    sub-int v19, v19, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    add-int v5, v5, v18

    goto :goto_233

    .line 369
    .end local v5           #bytesReceived:I
    .end local v9           #headerID:I
    .end local v12           #length:I
    .end local v17           #temp:[B
    .restart local v3       #body:[B
    :cond_256
    const/16 v18, 0x48

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_173

    .line 413
    .end local v3           #body:[B
    .restart local v9       #headerID:I
    .restart local v12       #length:I
    :cond_25f
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v9, v0, :cond_292

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v18, v0

    const/16 v19, 0xa0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 415
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 416
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 417
    const-string v18, "Abort Received"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 418
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Abort Received"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 420
    :cond_292
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v18, v0

    const/16 v19, 0xc0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 421
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 422
    const-string v18, "Bad Request Received"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 423
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Bad Request Received"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 427
    :cond_2b7
    const/16 v18, 0x82

    move/from16 v0, v18

    if-ne v9, v0, :cond_2e1

    .line 428
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 436
    :cond_2c5
    :goto_2c5
    const v18, 0xfffe

    move/from16 v0, v18

    if-le v12, v0, :cond_2f0

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v18, v0

    const/16 v19, 0xce

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 438
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Packet received was too large"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 429
    :cond_2e1
    const/16 v18, 0x83

    move/from16 v0, v18

    if-ne v9, v0, :cond_2c5

    .line 430
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    goto :goto_2c5

    .line 444
    :cond_2f0
    const/16 v18, 0x3

    move/from16 v0, v18

    if-le v12, v0, :cond_47e

    .line 445
    add-int/lit8 v18, v12, -0x3

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 446
    .local v6, data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 448
    .restart local v5       #bytesReceived:I
    :goto_308
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v5, v0, :cond_325

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    array-length v0, v6

    move/from16 v19, v0

    sub-int v19, v19, v5

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v6, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    add-int v5, v5, v18

    goto :goto_308

    .line 452
    :cond_325
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    move-result-object v3

    .line 453
    .restart local v3       #body:[B
    if-eqz v3, :cond_33b

    .line 454
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mHasBody:Z

    .line 456
    :cond_33b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_3c7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_3c7

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 463
    :goto_372
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_3e1

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v18

    if-nez v18, :cond_3d3

    .line 465
    const-string v18, "Authentication Failed"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v18, v0

    const/16 v19, 0xc1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 467
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 469
    const/16 v18, 0x0

    goto/16 :goto_f3

    .line 460
    :cond_3c7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x1

    invoke-virtual/range {v18 .. v20}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_372

    .line 471
    :cond_3d3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 474
    :cond_3e1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_46d

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 484
    :cond_46d
    if-eqz v3, :cond_47e

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljavax/obex/PrivateInputStream;->writeBytes([BI)V
    :try_end_47e
    .catchall {:try_start_f8 .. :try_end_47e} :catchall_b5

    .line 489
    .end local v3           #body:[B
    .end local v5           #bytesReceived:I
    .end local v6           #data:[B
    :cond_47e
    const/16 v18, 0x1

    goto/16 :goto_f3

    .line 491
    .end local v9           #headerID:I
    .end local v12           #length:I
    :cond_482
    const/16 v18, 0x0

    goto/16 :goto_f3
.end method

.method public streamClosed(Z)V
    .registers 2
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    return-void
.end method
