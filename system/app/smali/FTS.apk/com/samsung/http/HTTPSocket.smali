.class public Lcom/samsung/http/HTTPSocket;
.super Ljava/lang/Object;
.source "HTTPSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/http/HTTPSocket$FlushedInputStream;
    }
.end annotation


# instance fields
.field private sockIn:Ljava/io/InputStream;

.field private sockOut:Ljava/io/BufferedOutputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .registers 3
    .parameter "socket"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 90
    iput-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 91
    iput-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->open()Z

    .line 48
    return-void
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    return-object v0
.end method

.method private post(Lcom/samsung/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z
    .registers 28
    .parameter "httpRes"
    .parameter "is"
    .parameter "contentOffset"
    .parameter "contentLength"
    .parameter "isOnlyHeader"

    .prologue
    .line 208
    new-instance v7, Lcom/samsung/http/HTTPSocket$FlushedInputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 209
    .local v7, in:Lcom/samsung/http/HTTPSocket$FlushedInputStream;
    if-eqz p1, :cond_b

    if-nez v7, :cond_e

    .line 210
    :cond_b
    const/16 v16, 0x0

    .line 282
    :goto_d
    return v16

    .line 211
    :cond_e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/http/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/samsung/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 214
    .local v9, out:Ljava/io/OutputStream;
    const-wide/16 v11, 0x0

    .line 216
    .local v11, readCnt:J
    :try_start_1f
    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 217
    const-string v16, "\r\n"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 219
    .local v4, crlf:[B
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 220
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 222
    if-eqz p7, :cond_62

    .line 223
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_146
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_41} :catch_107

    .line 275
    :try_start_41
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 276
    const-string v16, "HTTPSocket"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "input stream closed : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_5a} :catch_5d

    .line 224
    :goto_5a
    const/16 v16, 0x1

    goto :goto_d

    .line 277
    :catch_5d
    move-exception v5

    .line 278
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 227
    .end local v5           #e:Ljava/io/IOException;
    :cond_62
    :try_start_62
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/http/HTTPResponse;->isChunked()Z

    move-result v8

    .line 236
    .local v8, isChunkedResponse:Z
    const-wide/16 v16, 0x0

    cmp-long v16, v16, p3

    if-gez v16, :cond_71

    .line 237
    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->skip(J)J

    .line 239
    :cond_71
    const v3, 0x4b000

    .line 240
    .local v3, chunkSize:I
    new-array v10, v3, [B

    .line 241
    .local v10, readBuf:[B
    const-wide/16 v11, 0x0

    .line 242
    int-to-long v0, v3

    move-wide/from16 v16, v0

    cmp-long v16, v16, p5

    if-gez v16, :cond_c3

    int-to-long v14, v3

    .line 243
    .local v14, readSize:J
    :goto_80
    const/16 v16, 0x0

    long-to-int v0, v14

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v10, v0, v1}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->read([BII)I

    move-result v13

    .line 244
    .local v13, readLen:I
    :goto_8d
    if-lez v13, :cond_93

    cmp-long v16, v11, p5

    if-ltz v16, :cond_c6

    .line 257
    :cond_93
    if-eqz v8, :cond_a3

    .line 258
    const-string v16, "0"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 259
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 261
    :cond_a3
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_a6
    .catchall {:try_start_62 .. :try_end_a6} :catchall_146
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_a6} :catch_107

    .line 275
    :try_start_a6
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 276
    const-string v16, "HTTPSocket"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "input stream closed : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_bf} :catch_18c

    .line 282
    .end local v3           #chunkSize:I
    .end local v4           #crlf:[B
    .end local v8           #isChunkedResponse:Z
    .end local v10           #readBuf:[B
    .end local v13           #readLen:I
    .end local v14           #readSize:J
    :goto_bf
    const/16 v16, 0x1

    goto/16 :goto_d

    .restart local v3       #chunkSize:I
    .restart local v4       #crlf:[B
    .restart local v8       #isChunkedResponse:Z
    .restart local v10       #readBuf:[B
    :cond_c3
    move-wide/from16 v14, p5

    .line 242
    goto :goto_80

    .line 245
    .restart local v13       #readLen:I
    .restart local v14       #readSize:J
    :cond_c6
    if-eqz v8, :cond_db

    .line 247
    int-to-long v0, v13

    move-wide/from16 v16, v0

    :try_start_cb
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 248
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 250
    :cond_db
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v10, v0, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 251
    if-eqz v8, :cond_e7

    .line 252
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 253
    :cond_e7
    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v11, v11, v16

    .line 254
    int-to-long v0, v3

    move-wide/from16 v16, v0

    sub-long v18, p5, v11

    cmp-long v16, v16, v18

    if-gez v16, :cond_104

    int-to-long v14, v3

    .line 255
    :goto_f6
    const/16 v16, 0x0

    long-to-int v0, v14

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v10, v0, v1}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->read([BII)I
    :try_end_102
    .catchall {:try_start_cb .. :try_end_102} :catchall_146
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_102} :catch_107

    move-result v13

    goto :goto_8d

    .line 254
    :cond_104
    sub-long v14, p5, v11

    goto :goto_f6

    .line 263
    .end local v3           #chunkSize:I
    .end local v4           #crlf:[B
    .end local v8           #isChunkedResponse:Z
    .end local v10           #readBuf:[B
    .end local v13           #readLen:I
    .end local v14           #readSize:J
    :catch_107
    move-exception v5

    .line 264
    .local v5, e:Ljava/lang/Exception;
    :try_start_108
    const-string v16, "HTTPSocket"

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_10f
    .catchall {:try_start_108 .. :try_end_10f} :catchall_146

    .line 266
    :try_start_10f
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_146
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_141

    .line 270
    :goto_112
    :try_start_112
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_166

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    const-string v17, "broken pipe"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_121
    .catchall {:try_start_112 .. :try_end_121} :catchall_146

    move-result v16

    if-eqz v16, :cond_166

    .line 275
    :try_start_124
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 276
    const-string v16, "HTTPSocket"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "input stream closed : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_13d} :catch_161

    .line 271
    .end local v5           #e:Ljava/lang/Exception;
    :goto_13d
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 267
    .restart local v5       #e:Ljava/lang/Exception;
    :catch_141
    move-exception v6

    .line 268
    .local v6, e1:Ljava/io/IOException;
    :try_start_142
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_145
    .catchall {:try_start_142 .. :try_end_145} :catchall_146

    goto :goto_112

    .line 273
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #e1:Ljava/io/IOException;
    :catchall_146
    move-exception v16

    .line 275
    :try_start_147
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 276
    const-string v17, "HTTPSocket"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "input stream closed : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_160} :catch_187

    .line 280
    :goto_160
    throw v16

    .line 277
    .restart local v5       #e:Ljava/lang/Exception;
    :catch_161
    move-exception v5

    .line 278
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13d

    .line 275
    .local v5, e:Ljava/lang/Exception;
    :cond_166
    :try_start_166
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 276
    const-string v16, "HTTPSocket"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "input stream closed : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_17f} :catch_181

    goto/16 :goto_bf

    .line 277
    :catch_181
    move-exception v5

    .line 278
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_bf

    .line 277
    .end local v5           #e:Ljava/io/IOException;
    :catch_187
    move-exception v5

    .line 278
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_160

    .line 277
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #chunkSize:I
    .restart local v4       #crlf:[B
    .restart local v8       #isChunkedResponse:Z
    .restart local v10       #readBuf:[B
    .restart local v13       #readLen:I
    .restart local v14       #readSize:J
    :catch_18c
    move-exception v5

    .line 278
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_bf
.end method

.method private setSocket(Ljava/net/Socket;)V
    .registers 2
    .parameter "socket"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 66
    return-void
.end method


# virtual methods
.method public close()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    if-nez v2, :cond_6

    .line 152
    :goto_5
    return v1

    .line 139
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    .line 141
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    if-eqz v2, :cond_1d

    .line 142
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 143
    :cond_1d
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_26

    .line 144
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 145
    :cond_26
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 146
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_32

    goto :goto_5

    .line 148
    :catch_32
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public open()Z
    .registers 6

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 124
    .local v1, sock:Ljava/net/Socket;
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 125
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1b

    .line 130
    const/4 v2, 0x1

    :goto_1a
    return v2

    .line 127
    :catch_1b
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public post(Lcom/samsung/http/HTTPResponse;JJZ)Z
    .registers 15
    .parameter "httpRes"
    .parameter "contentOffset"
    .parameter "contentLength"
    .parameter "isOnlyHeader"

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/samsung/http/HTTPResponse;->hasContentInputStream()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 335
    invoke-virtual {p1}, Lcom/samsung/http/HTTPResponse;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/http/HTTPSocket;->post(Lcom/samsung/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z

    move-result v0

    .line 336
    :goto_13
    return v0

    :cond_14
    invoke-virtual {p1}, Lcom/samsung/http/HTTPResponse;->getContent()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/http/HTTPSocket;->post(Lcom/samsung/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z

    move-result v0

    goto :goto_13
.end method
