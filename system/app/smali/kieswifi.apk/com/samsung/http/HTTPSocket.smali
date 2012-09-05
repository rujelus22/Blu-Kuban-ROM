.class public Lcom/samsung/http/HTTPSocket;
.super Ljava/lang/Object;
.source "HTTPSocket.java"


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

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 89
    iput-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 90
    iput-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->open()Z

    .line 47
    return-void
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    return-object v0
.end method

.method private post(Lcom/samsung/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z
    .registers 27
    .parameter "httpRes"
    .parameter "in"
    .parameter "contentOffset"
    .parameter "contentLength"
    .parameter "isOnlyHeader"

    .prologue
    .line 206
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 207
    :cond_4
    const/4 v15, 0x0

    .line 277
    :goto_5
    return v15

    .line 208
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/samsung/http/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/samsung/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 211
    .local v8, out:Ljava/io/OutputStream;
    const-wide/16 v10, 0x0

    .line 213
    .local v10, readCnt:J
    :try_start_15
    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 214
    const-string v15, "\r\n"

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 216
    .local v4, crlf:[B
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/io/OutputStream;->write([B)V

    .line 217
    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write([B)V

    .line 219
    if-eqz p7, :cond_55

    .line 220
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_125

    .line 270
    :try_start_35
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 271
    const-string v15, "HTTPSocket"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "input stream closed : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4e} :catch_50

    .line 221
    :goto_4e
    const/4 v15, 0x1

    goto :goto_5

    .line 272
    :catch_50
    move-exception v5

    .line 273
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 224
    .end local v5           #e:Ljava/io/IOException;
    :cond_55
    :try_start_55
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/http/HTTPResponse;->isChunked()Z

    move-result v7

    .line 226
    .local v7, isChunkedResponse:Z
    const-wide/16 v15, 0x0

    cmp-long v15, v15, p3

    if-gez v15, :cond_a2

    .line 227
    const-string v15, "HTTPSocket"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "content offset size : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_55 .. :try_end_77} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_77} :catch_125

    .line 228
    const-wide/32 v15, 0x7fffffff

    cmp-long v15, p3, v15

    if-lez v15, :cond_9f

    .line 270
    :try_start_7e
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 271
    const-string v15, "HTTPSocket"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "input stream closed : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_97} :catch_9a

    .line 229
    :goto_97
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 272
    :catch_9a
    move-exception v5

    .line 273
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_97

    .line 231
    .end local v5           #e:Ljava/io/IOException;
    :cond_9f
    :try_start_9f
    invoke-virtual/range {p2 .. p4}, Ljava/io/InputStream;->skip(J)J

    .line 234
    :cond_a2
    const v3, 0x4b000

    .line 235
    .local v3, chunkSize:I
    new-array v9, v3, [B

    .line 236
    .local v9, readBuf:[B
    const-wide/16 v10, 0x0

    .line 237
    int-to-long v15, v3

    cmp-long v15, v15, p5

    if-gez v15, :cond_ee

    int-to-long v13, v3

    .line 238
    .local v13, readSize:J
    :goto_af
    const/4 v15, 0x0

    long-to-int v0, v13

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v9, v15, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .line 239
    .local v12, readLen:I
    :goto_bb
    if-lez v12, :cond_c1

    cmp-long v15, v10, p5

    if-ltz v15, :cond_f1

    .line 252
    :cond_c1
    if-eqz v7, :cond_cf

    .line 253
    const-string v15, "0"

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/io/OutputStream;->write([B)V

    .line 254
    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write([B)V

    .line 256
    :cond_cf
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_d2
    .catchall {:try_start_9f .. :try_end_d2} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_d2} :catch_125

    .line 270
    :try_start_d2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 271
    const-string v15, "HTTPSocket"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "input stream closed : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_eb} :catch_1a7

    .line 277
    .end local v3           #chunkSize:I
    .end local v4           #crlf:[B
    .end local v7           #isChunkedResponse:Z
    .end local v9           #readBuf:[B
    .end local v12           #readLen:I
    .end local v13           #readSize:J
    :goto_eb
    const/4 v15, 0x1

    goto/16 :goto_5

    .restart local v3       #chunkSize:I
    .restart local v4       #crlf:[B
    .restart local v7       #isChunkedResponse:Z
    .restart local v9       #readBuf:[B
    :cond_ee
    move-wide/from16 v13, p5

    .line 237
    goto :goto_af

    .line 240
    .restart local v12       #readLen:I
    .restart local v13       #readSize:J
    :cond_f1
    if-eqz v7, :cond_102

    .line 242
    int-to-long v15, v12

    :try_start_f4
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/io/OutputStream;->write([B)V

    .line 243
    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write([B)V

    .line 245
    :cond_102
    const/4 v15, 0x0

    invoke-virtual {v8, v9, v15, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 246
    if-eqz v7, :cond_10b

    .line 247
    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write([B)V

    .line 248
    :cond_10b
    int-to-long v15, v12

    add-long/2addr v10, v15

    .line 249
    int-to-long v15, v3

    sub-long v17, p5, v10

    cmp-long v15, v15, v17

    if-gez v15, :cond_122

    int-to-long v13, v3

    .line 250
    :goto_115
    const/4 v15, 0x0

    long-to-int v0, v13

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v9, v15, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_120
    .catchall {:try_start_f4 .. :try_end_120} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_120} :catch_125

    move-result v12

    goto :goto_bb

    .line 249
    :cond_122
    sub-long v13, p5, v10

    goto :goto_115

    .line 258
    .end local v3           #chunkSize:I
    .end local v4           #crlf:[B
    .end local v7           #isChunkedResponse:Z
    .end local v9           #readBuf:[B
    .end local v12           #readLen:I
    .end local v13           #readSize:J
    :catch_125
    move-exception v5

    .line 259
    .local v5, e:Ljava/lang/Exception;
    :try_start_126
    const-string v15, "HTTPSocket"

    invoke-static {v15, v5}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_12b
    .catchall {:try_start_126 .. :try_end_12b} :catchall_161

    .line 261
    :try_start_12b
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_12e
    .catchall {:try_start_12b .. :try_end_12e} :catchall_161
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_15c

    .line 265
    :goto_12e
    :try_start_12e
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_181

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    const-string v16, "broken pipe"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_13d
    .catchall {:try_start_12e .. :try_end_13d} :catchall_161

    move-result v15

    if-eqz v15, :cond_181

    .line 270
    :try_start_140
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 271
    const-string v15, "HTTPSocket"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "input stream closed : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_159} :catch_17c

    .line 266
    .end local v5           #e:Ljava/lang/Exception;
    :goto_159
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 262
    .restart local v5       #e:Ljava/lang/Exception;
    :catch_15c
    move-exception v6

    .line 263
    .local v6, e1:Ljava/io/IOException;
    :try_start_15d
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_160
    .catchall {:try_start_15d .. :try_end_160} :catchall_161

    goto :goto_12e

    .line 268
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #e1:Ljava/io/IOException;
    :catchall_161
    move-exception v15

    .line 270
    :try_start_162
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 271
    const-string v16, "HTTPSocket"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "input stream closed : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_17b} :catch_1a2

    .line 275
    :goto_17b
    throw v15

    .line 272
    .restart local v5       #e:Ljava/lang/Exception;
    :catch_17c
    move-exception v5

    .line 273
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_159

    .line 270
    .local v5, e:Ljava/lang/Exception;
    :cond_181
    :try_start_181
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 271
    const-string v15, "HTTPSocket"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "input stream closed : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_19a} :catch_19c

    goto/16 :goto_eb

    .line 272
    :catch_19c
    move-exception v5

    .line 273
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_eb

    .line 272
    .end local v5           #e:Ljava/io/IOException;
    :catch_1a2
    move-exception v5

    .line 273
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17b

    .line 272
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #chunkSize:I
    .restart local v4       #crlf:[B
    .restart local v7       #isChunkedResponse:Z
    .restart local v9       #readBuf:[B
    .restart local v12       #readLen:I
    .restart local v13       #readSize:J
    :catch_1a7
    move-exception v5

    .line 273
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_eb
.end method

.method private setSocket(Ljava/net/Socket;)V
    .registers 2
    .parameter "socket"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 65
    return-void
.end method


# virtual methods
.method public close()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 134
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    if-nez v2, :cond_6

    .line 151
    :goto_5
    return v1

    .line 138
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    .line 140
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    if-eqz v2, :cond_1d

    .line 141
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 142
    :cond_1d
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_26

    .line 143
    iget-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 144
    :cond_26
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 145
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_32

    goto :goto_5

    .line 147
    :catch_32
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
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
    .line 69
    iget-object v0, p0, Lcom/samsung/http/HTTPSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public open()Z
    .registers 6

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 123
    .local v1, sock:Ljava/net/Socket;
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 124
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/samsung/http/HTTPSocket;->sockOut:Ljava/io/BufferedOutputStream;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1b

    .line 129
    const/4 v2, 0x1

    :goto_1a
    return v2

    .line 126
    :catch_1b
    move-exception v0

    .line 127
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
    .line 282
    invoke-virtual {p1}, Lcom/samsung/http/HTTPResponse;->hasContentInputStream()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 283
    invoke-virtual {p1}, Lcom/samsung/http/HTTPResponse;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/http/HTTPSocket;->post(Lcom/samsung/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z

    move-result v0

    .line 284
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
