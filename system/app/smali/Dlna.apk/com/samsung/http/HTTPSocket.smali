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

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 93
    iput-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 94
    iput-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->open()Z

    .line 51
    return-void
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 116
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
    .line 211
    new-instance v7, Lcom/samsung/http/HTTPSocket$FlushedInputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 212
    .local v7, in:Lcom/samsung/http/HTTPSocket$FlushedInputStream;
    if-eqz p1, :cond_b

    if-nez v7, :cond_e

    .line 213
    :cond_b
    const/16 v16, 0x0

    .line 288
    :goto_d
    return v16

    .line 214
    :cond_e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/http/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/samsung/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 217
    .local v9, out:Ljava/io/OutputStream;
    const-wide/16 v11, 0x0

    .line 219
    .local v11, readCnt:J
    :try_start_1f
    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 220
    const-string v16, "\r\n"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 222
    .local v4, crlf:[B
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 223
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 225
    if-eqz p7, :cond_62

    .line 226
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_1a0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_41} :catch_11b

    .line 281
    :try_start_41
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 282
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

    .line 227
    :goto_5a
    const/16 v16, 0x1

    goto :goto_d

    .line 283
    :catch_5d
    move-exception v5

    .line 284
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 230
    .end local v5           #e:Ljava/io/IOException;
    :cond_62
    :try_start_62
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/http/HTTPResponse;->isChunked()Z

    move-result v8

    .line 232
    .local v8, isChunkedResponse:Z
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_cd

    .line 233
    const-wide/16 v16, 0x0

    cmp-long v16, v16, p3

    if-gez v16, :cond_7b

    .line 234
    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->skip(J)J

    .line 245
    :cond_7b
    :goto_7b
    const v3, 0x4b000

    .line 246
    .local v3, chunkSize:I
    new-array v10, v3, [B

    .line 247
    .local v10, readBuf:[B
    const-wide/16 v11, 0x0

    .line 248
    int-to-long v0, v3

    move-wide/from16 v16, v0

    cmp-long v16, v16, p5

    if-gez v16, :cond_155

    int-to-long v14, v3

    .line 249
    .local v14, readSize:J
    :goto_8a
    const/16 v16, 0x0

    long-to-int v0, v14

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v10, v0, v1}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->read([BII)I

    move-result v13

    .line 250
    .local v13, readLen:I
    :goto_97
    if-lez v13, :cond_9d

    cmp-long v16, v11, p5

    if-ltz v16, :cond_159

    .line 263
    :cond_9d
    if-eqz v8, :cond_ad

    .line 264
    const-string v16, "0"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 265
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 267
    :cond_ad
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_b0
    .catchall {:try_start_62 .. :try_end_b0} :catchall_1a0
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_b0} :catch_11b

    .line 281
    :try_start_b0
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 282
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
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_c9} :catch_1e6

    .line 288
    .end local v3           #chunkSize:I
    .end local v4           #crlf:[B
    .end local v8           #isChunkedResponse:Z
    .end local v10           #readBuf:[B
    .end local v13           #readLen:I
    .end local v14           #readSize:J
    :goto_c9
    const/16 v16, 0x1

    goto/16 :goto_d

    .line 236
    .restart local v4       #crlf:[B
    .restart local v8       #isChunkedResponse:Z
    :cond_cd
    const-wide/16 v16, 0x0

    cmp-long v16, v16, p3

    if-gez v16, :cond_7b

    .line 237
    :try_start_d3
    const-string v16, "HTTPSocket"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "content offset size : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_d3 .. :try_end_eb} :catchall_1a0
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_eb} :catch_11b

    .line 238
    const-wide/32 v16, 0x7fffffff

    cmp-long v16, p3, v16

    if-lez v16, :cond_114

    .line 281
    :try_start_f2
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 282
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
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_10b} :catch_10f

    .line 239
    :goto_10b
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 283
    :catch_10f
    move-exception v5

    .line 284
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10b

    .line 241
    .end local v5           #e:Ljava/io/IOException;
    :cond_114
    :try_start_114
    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->skip(J)J
    :try_end_119
    .catchall {:try_start_114 .. :try_end_119} :catchall_1a0
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_119} :catch_11b

    goto/16 :goto_7b

    .line 269
    .end local v4           #crlf:[B
    .end local v8           #isChunkedResponse:Z
    :catch_11b
    move-exception v5

    .line 270
    .local v5, e:Ljava/lang/Exception;
    :try_start_11c
    const-string v16, "HTTPSocket"

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_1a0

    .line 272
    :try_start_123
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_1a0
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_19b

    .line 276
    :goto_126
    :try_start_126
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1c0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    const-string v17, "broken pipe"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_135
    .catchall {:try_start_126 .. :try_end_135} :catchall_1a0

    move-result v16

    if-eqz v16, :cond_1c0

    .line 281
    :try_start_138
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 282
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
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_151} :catch_1bb

    .line 277
    .end local v5           #e:Ljava/lang/Exception;
    :goto_151
    const/16 v16, 0x0

    goto/16 :goto_d

    .restart local v3       #chunkSize:I
    .restart local v4       #crlf:[B
    .restart local v8       #isChunkedResponse:Z
    .restart local v10       #readBuf:[B
    :cond_155
    move-wide/from16 v14, p5

    .line 248
    goto/16 :goto_8a

    .line 251
    .restart local v13       #readLen:I
    .restart local v14       #readSize:J
    :cond_159
    if-eqz v8, :cond_16e

    .line 253
    int-to-long v0, v13

    move-wide/from16 v16, v0

    :try_start_15e
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 254
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 256
    :cond_16e
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v10, v0, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 257
    if-eqz v8, :cond_17a

    .line 258
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 259
    :cond_17a
    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v11, v11, v16

    .line 260
    int-to-long v0, v3

    move-wide/from16 v16, v0

    sub-long v18, p5, v11

    cmp-long v16, v16, v18

    if-gez v16, :cond_198

    int-to-long v14, v3

    .line 261
    :goto_189
    const/16 v16, 0x0

    long-to-int v0, v14

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v10, v0, v1}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->read([BII)I
    :try_end_195
    .catchall {:try_start_15e .. :try_end_195} :catchall_1a0
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_195} :catch_11b

    move-result v13

    goto/16 :goto_97

    .line 260
    :cond_198
    sub-long v14, p5, v11

    goto :goto_189

    .line 273
    .end local v3           #chunkSize:I
    .end local v4           #crlf:[B
    .end local v8           #isChunkedResponse:Z
    .end local v10           #readBuf:[B
    .end local v13           #readLen:I
    .end local v14           #readSize:J
    .restart local v5       #e:Ljava/lang/Exception;
    :catch_19b
    move-exception v6

    .line 274
    .local v6, e1:Ljava/io/IOException;
    :try_start_19c
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19f
    .catchall {:try_start_19c .. :try_end_19f} :catchall_1a0

    goto :goto_126

    .line 279
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #e1:Ljava/io/IOException;
    :catchall_1a0
    move-exception v16

    .line 281
    :try_start_1a1
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 282
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
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1ba} :catch_1e1

    .line 286
    :goto_1ba
    throw v16

    .line 283
    .restart local v5       #e:Ljava/lang/Exception;
    :catch_1bb
    move-exception v5

    .line 284
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_151

    .line 281
    .local v5, e:Ljava/lang/Exception;
    :cond_1c0
    :try_start_1c0
    invoke-virtual {v7}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->close()V

    .line 282
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
    :try_end_1d9
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1d9} :catch_1db

    goto/16 :goto_c9

    .line 283
    :catch_1db
    move-exception v5

    .line 284
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c9

    .line 283
    .end local v5           #e:Ljava/io/IOException;
    :catch_1e1
    move-exception v5

    .line 284
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1ba

    .line 283
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #chunkSize:I
    .restart local v4       #crlf:[B
    .restart local v8       #isChunkedResponse:Z
    .restart local v10       #readBuf:[B
    .restart local v13       #readLen:I
    .restart local v14       #readSize:J
    :catch_1e6
    move-exception v5

    .line 284
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c9
.end method

.method private setSocket(Ljava/net/Socket;)V
    .registers 2
    .parameter "socket"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 69
    return-void
.end method


# virtual methods
.method public close()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 138
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    if-nez v2, :cond_6

    .line 155
    :goto_5
    return v1

    .line 142
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    .line 144
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    if-eqz v2, :cond_1d

    .line 145
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 146
    :cond_1d
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_26

    .line 147
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 148
    :cond_26
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 149
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_32

    goto :goto_5

    .line 151
    :catch_32
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
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
    .line 73
    iget-object v0, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public open()Z
    .registers 6

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 127
    .local v1, sock:Ljava/net/Socket;
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 128
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1b

    .line 133
    const/4 v2, 0x1

    :goto_1a
    return v2

    .line 130
    :catch_1b
    move-exception v0

    .line 131
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
    .line 340
    invoke-virtual {p1}, Lcom/samsung/http/HTTPResponse;->hasContentInputStream()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 341
    invoke-virtual {p1}, Lcom/samsung/http/HTTPResponse;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/http/HTTPSocket;->post(Lcom/samsung/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z

    move-result v0

    .line 342
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
