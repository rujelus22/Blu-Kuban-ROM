.class final Lcom/widevine/drm/internal/j;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/widevine/drm/internal/i;


# direct methods
.method synthetic constructor <init>(Lcom/widevine/drm/internal/i;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/widevine/drm/internal/j;-><init>(Lcom/widevine/drm/internal/i;B)V

    return-void
.end method

.method private constructor <init>(Lcom/widevine/drm/internal/i;B)V
    .registers 3

    iput-object p1, p0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 25

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-static {v3}, Lcom/widevine/drm/internal/i;->a(Lcom/widevine/drm/internal/i;)Z

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v6, v6, Lcom/widevine/drm/internal/i;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v6}, Lcom/widevine/drm/internal/HTTPDecrypter;->b()Z
    :try_end_13
    .catch Lcom/widevine/drm/internal/ad; {:try_start_a .. :try_end_13} :catch_d6

    move-result v6

    if-eqz v6, :cond_1e

    const-wide/16 v6, 0x5

    :try_start_18
    invoke-static {v6, v7}, Lcom/widevine/drm/internal/j;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catch Lcom/widevine/drm/internal/ad; {:try_start_18 .. :try_end_1b} :catch_d6

    goto :goto_a

    :catch_1c
    move-exception v6

    goto :goto_a

    :cond_1e
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v6, v6, Lcom/widevine/drm/internal/i;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v7, v7, Lcom/widevine/drm/internal/i;->h:Ljava/lang/String;

    sget-object v8, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    invoke-virtual {v8}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-virtual {v9}, Lcom/widevine/drm/internal/i;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3b
    .catch Lcom/widevine/drm/internal/ad; {:try_start_1e .. :try_end_3b} :catch_d6

    :cond_3b
    :goto_3b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-static {v6}, Lcom/widevine/drm/internal/i;->b(Lcom/widevine/drm/internal/i;)Z

    move-result v6

    if-eqz v6, :cond_39d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/widevine/drm/internal/i;->e:Z

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v6, v6, Lcom/widevine/drm/internal/i;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    sget-object v9, Lcom/widevine/drm/internal/e;->a:Lcom/widevine/drm/internal/e;

    invoke-virtual {v6, v9}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Lcom/widevine/drm/internal/e;)V

    :try_start_59
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V
    :try_end_5e
    .catch Ljava/net/SocketTimeoutException; {:try_start_59 .. :try_end_5e} :catch_41a
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_3f4

    :try_start_5e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-static {v7}, Lcom/widevine/drm/internal/i;->c(Lcom/widevine/drm/internal/i;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPort()I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_6f

    const/16 v7, 0x50

    :cond_6f
    new-instance v9, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-static {v10}, Lcom/widevine/drm/internal/i;->c(Lcom/widevine/drm/internal/i;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x1388

    invoke-virtual {v6, v9, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v7, v7, Lcom/widevine/drm/internal/i;->b:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_8e
    .catch Ljava/net/SocketTimeoutException; {:try_start_5e .. :try_end_8e} :catch_422
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_8e} :catch_3fb

    move-result-object v9

    :try_start_8f
    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v7, v7, Lcom/widevine/drm/internal/i;->b:Ljava/net/ServerSocket;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    const/high16 v7, 0x1

    new-array v0, v7, [B

    move-object/from16 v17, v0

    const/4 v7, 0x2

    new-array v0, v7, [J

    move-object/from16 v20, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-virtual {v11}, Lcom/widevine/drm/internal/i;->c()Z

    move-result v15

    if-nez v15, :cond_c0

    const/4 v7, 0x1

    :cond_c0
    if-eqz v4, :cond_ef

    :goto_c2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v11, v11, Lcom/widevine/drm/internal/i;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v11}, Lcom/widevine/drm/internal/HTTPDecrypter;->b()Z
    :try_end_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_8f .. :try_end_cb} :catch_429
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_cb} :catch_401

    move-result v11

    if-eqz v11, :cond_e7

    const-wide/16 v11, 0x5

    :try_start_d0
    invoke-static {v11, v12}, Lcom/widevine/drm/internal/j;->sleep(J)V
    :try_end_d3
    .catch Ljava/lang/InterruptedException; {:try_start_d0 .. :try_end_d3} :catch_d4
    .catch Ljava/net/SocketTimeoutException; {:try_start_d0 .. :try_end_d3} :catch_429
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_401

    goto :goto_c2

    :catch_d4
    move-exception v11

    goto :goto_c2

    :catch_d6
    move-exception v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    const/4 v8, 0x1

    iget-object v9, v6, Lcom/widevine/drm/internal/ad;->a:Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {v6}, Lcom/widevine/drm/internal/ad;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v9, v6}, Lcom/widevine/drm/internal/i;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_3b

    :cond_e7
    :try_start_e7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    array-length v12, v4

    invoke-virtual {v11, v4, v12}, Lcom/widevine/drm/internal/i;->b([BI)I
    :try_end_ef
    .catch Ljava/net/SocketTimeoutException; {:try_start_e7 .. :try_end_ef} :catch_429
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ef} :catch_401

    :cond_ef
    const/4 v11, 0x0

    const/4 v14, 0x0

    move v12, v15

    move-object/from16 v23, v14

    move v14, v7

    move-object v7, v4

    move-object v4, v8

    move v8, v5

    move-object v5, v10

    move v10, v3

    move-object/from16 v3, v23

    :goto_fc
    :try_start_fc
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-static {v13}, Lcom/widevine/drm/internal/i;->b(Lcom/widevine/drm/internal/i;)Z

    move-result v13

    if-eqz v13, :cond_43e

    if-nez v12, :cond_441

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-virtual {v12}, Lcom/widevine/drm/internal/i;->c()Z

    move-result v12

    if-nez v12, :cond_441

    add-int/lit8 v13, v14, 0x1

    const/4 v15, 0x5

    if-le v14, v15, :cond_127

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    const/4 v15, 0x1

    sget-object v16, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    const-string v21, "serror (32)"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v14, v15, v0, v1}, Lcom/widevine/drm/internal/i;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    :cond_127
    move v15, v12

    move/from16 v16, v13

    :goto_12a
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->available()I

    move-result v12

    if-gtz v12, :cond_132

    if-eqz v11, :cond_43a

    :cond_132
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->available()I

    move-result v12

    if-lez v12, :cond_221

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v12

    :goto_140
    const/4 v13, -0x1

    if-eq v12, v13, :cond_43e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v13, v0, v12, v1}, Lcom/widevine/drm/internal/i;->a(Lcom/widevine/drm/internal/i;[BI[J)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_43a

    new-array v3, v12, [B

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v11, v3, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v11, v12, v14}, Ljava/io/OutputStream;->write([BII)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTTP remote server request:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v11, 0x0

    move-object v14, v3

    move v3, v11

    :goto_17b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-boolean v11, v11, Lcom/widevine/drm/internal/i;->e:Z

    if-nez v11, :cond_33e

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v11

    if-lez v11, :cond_334

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_2ed

    move-object/from16 v0, v17

    invoke-static {v0, v12}, Lcom/widevine/drm/internal/i;->a([BI)I

    move-result v11

    if-lez v11, :cond_436

    new-instance v13, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v13, v0, v1, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v13}, Lcom/widevine/drm/internal/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_436

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1b4
    .catch Ljava/net/SocketTimeoutException; {:try_start_fc .. :try_end_1b4} :catch_22b
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_1b4} :catch_397

    :try_start_1b4
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1b7} :catch_3e1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b4 .. :try_end_1b7} :catch_22b

    :goto_1b7
    :try_start_1b7
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V
    :try_end_1bc
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b7 .. :try_end_1bc} :catch_22b
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1bc} :catch_397

    :try_start_1bc
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v6, v0}, Lcom/widevine/drm/internal/i;->a(Lcom/widevine/drm/internal/i;Landroid/net/Uri;)Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-static {v6}, Lcom/widevine/drm/internal/i;->c(Lcom/widevine/drm/internal/i;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-static {v6}, Lcom/widevine/drm/internal/i;->c(Lcom/widevine/drm/internal/i;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPort()I

    move-result v6

    if-nez v22, :cond_23f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    const/4 v11, 0x1

    sget-object v12, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToMediaServer:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid redirection: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v11, v12, v13}, Lcom/widevine/drm/internal/i;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    :try_end_202
    .catch Ljava/net/SocketTimeoutException; {:try_start_1bc .. :try_end_202} :catch_40f
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_202} :catch_3ee

    move-object v6, v3

    move v3, v10

    :goto_204
    :try_start_204
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_210
    .catch Ljava/net/SocketTimeoutException; {:try_start_204 .. :try_end_210} :catch_415
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_210} :catch_3f1

    move-object v4, v7

    move v5, v8

    :goto_212
    if-eqz v9, :cond_217

    :try_start_214
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_217
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_217} :catch_3e4

    :cond_217
    :goto_217
    if-eqz v6, :cond_3b

    :try_start_219
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_21c
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_21c} :catch_21e

    goto/16 :goto_3b

    :catch_21e
    move-exception v6

    goto/16 :goto_3b

    :cond_221
    :try_start_221
    array-length v12, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, v17

    invoke-static {v3, v13, v0, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_229
    .catch Ljava/net/SocketTimeoutException; {:try_start_221 .. :try_end_229} :catch_22b
    .catch Ljava/io/IOException; {:try_start_221 .. :try_end_229} :catch_397

    goto/16 :goto_140

    :catch_22b
    move-exception v3

    move-object v3, v9

    move v4, v10

    :goto_22e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    const/4 v9, 0x1

    sget-object v10, Lcom/widevine/drmapi/android/WVStatus;->LostConnection:Lcom/widevine/drmapi/android/WVStatus;

    const-string v11, "Mediaplayer connection timeout"

    invoke-virtual {v5, v9, v10, v11}, Lcom/widevine/drm/internal/i;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move-object v9, v3

    move v5, v8

    move v3, v4

    move-object v4, v7

    goto :goto_212

    :cond_23f
    const/4 v4, -0x1

    if-ne v6, v4, :cond_433

    const/16 v4, 0x50

    :goto_244
    :try_start_244
    new-instance v5, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v3, v5, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_257
    .catch Ljava/net/SocketTimeoutException; {:try_start_244 .. :try_end_257} :catch_40f
    .catch Ljava/io/IOException; {:try_start_244 .. :try_end_257} :catch_3ee

    move-result-object v4

    move-object v6, v3

    move v3, v13

    move v13, v11

    move v11, v12

    :goto_25c
    const/4 v12, 0x0

    if-lez v13, :cond_276

    :try_start_25f
    new-instance v12, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v12, v0, v1, v13}, Ljava/lang/String;-><init>([BII)V

    sub-int/2addr v11, v13

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v13, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_276
    if-lez v11, :cond_2ae

    if-nez v7, :cond_27c

    move-object/from16 v7, v17

    :cond_27c
    :goto_27c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v13, v13, Lcom/widevine/drm/internal/i;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v13}, Lcom/widevine/drm/internal/HTTPDecrypter;->b()Z
    :try_end_285
    .catch Ljava/net/SocketTimeoutException; {:try_start_25f .. :try_end_285} :catch_22b
    .catch Ljava/io/IOException; {:try_start_25f .. :try_end_285} :catch_397

    move-result v13

    if-eqz v13, :cond_290

    const-wide/16 v21, 0x5

    :try_start_28a
    invoke-static/range {v21 .. v22}, Lcom/widevine/drm/internal/j;->sleep(J)V
    :try_end_28d
    .catch Ljava/lang/InterruptedException; {:try_start_28a .. :try_end_28d} :catch_28e
    .catch Ljava/net/SocketTimeoutException; {:try_start_28a .. :try_end_28d} :catch_22b
    .catch Ljava/io/IOException; {:try_start_28a .. :try_end_28d} :catch_397

    goto :goto_27c

    :catch_28e
    move-exception v13

    goto :goto_27c

    :cond_290
    :try_start_290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v11}, Lcom/widevine/drm/internal/i;->b([BI)I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "decrypt: "

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2ae
    if-eqz v12, :cond_2e3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    move-object/from16 v0, v20

    invoke-static {v13, v12, v0}, Lcom/widevine/drm/internal/i;->a(Lcom/widevine/drm/internal/i;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2e3

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v21, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v13, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HTTP media player response:\n"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2e3
    if-lez v11, :cond_2ed

    const/4 v12, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2ed
    .catch Ljava/net/SocketTimeoutException; {:try_start_290 .. :try_end_2ed} :catch_22b
    .catch Ljava/io/IOException; {:try_start_290 .. :try_end_2ed} :catch_397

    :cond_2ed
    move v11, v3

    move-object/from16 v23, v4

    move v4, v10

    move-object v10, v5

    move-object/from16 v5, v23

    :goto_2f4
    :try_start_2f4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget v3, v3, Lcom/widevine/drm/internal/i;->i:I

    const/16 v12, 0xa

    if-ne v3, v12, :cond_38a

    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->c()Lcom/widevine/drm/internal/e;

    move-result-object v3

    sget-object v12, Lcom/widevine/drm/internal/e;->c:Lcom/widevine/drm/internal/e;
    :try_end_304
    .catch Ljava/lang/InterruptedException; {:try_start_2f4 .. :try_end_304} :catch_392
    .catch Ljava/net/SocketTimeoutException; {:try_start_2f4 .. :try_end_304} :catch_406
    .catch Ljava/io/IOException; {:try_start_2f4 .. :try_end_304} :catch_3e7

    if-eq v3, v12, :cond_38a

    add-int/lit8 v3, v8, 0x1

    const/16 v8, 0xa

    if-ge v3, v8, :cond_38b

    const-wide/16 v12, 0x32

    :try_start_30e
    invoke-static {v12, v13}, Lcom/widevine/drm/internal/j;->sleep(J)V
    :try_end_311
    .catch Ljava/lang/InterruptedException; {:try_start_30e .. :try_end_311} :catch_430
    .catch Ljava/net/SocketTimeoutException; {:try_start_30e .. :try_end_311} :catch_40a
    .catch Ljava/io/IOException; {:try_start_30e .. :try_end_311} :catch_3ea

    move v8, v3

    :goto_312
    :try_start_312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget v3, v3, Lcom/widevine/drm/internal/i;->a:I

    if-le v4, v3, :cond_446

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    const/4 v12, 0x1

    sget-object v13, Lcom/widevine/drmapi/android/WVStatus;->LostConnection:Lcom/widevine/drmapi/android/WVStatus;

    const-string v21, "Media server connection timeout"

    move-object/from16 v0, v21

    invoke-virtual {v3, v12, v13, v0}, Lcom/widevine/drm/internal/i;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    :try_end_328
    .catch Ljava/net/SocketTimeoutException; {:try_start_312 .. :try_end_328} :catch_406
    .catch Ljava/io/IOException; {:try_start_312 .. :try_end_328} :catch_3e7

    move-object v3, v14

    move v12, v15

    move/from16 v14, v16

    move-object/from16 v23, v5

    move-object v5, v10

    move v10, v4

    move-object/from16 v4, v23

    goto/16 :goto_fc

    :cond_334
    add-int/lit8 v10, v10, 0x1

    move v11, v3

    move-object/from16 v23, v4

    move v4, v10

    move-object v10, v5

    move-object/from16 v5, v23

    goto :goto_2f4

    :cond_33e
    :try_start_33e
    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->c()Lcom/widevine/drm/internal/e;

    move-result-object v11

    sget-object v12, Lcom/widevine/drm/internal/e;->c:Lcom/widevine/drm/internal/e;

    if-ne v11, v12, :cond_381

    :goto_346
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v11, v11, Lcom/widevine/drm/internal/i;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v11}, Lcom/widevine/drm/internal/HTTPDecrypter;->b()Z
    :try_end_34f
    .catch Ljava/net/SocketTimeoutException; {:try_start_33e .. :try_end_34f} :catch_22b
    .catch Ljava/io/IOException; {:try_start_33e .. :try_end_34f} :catch_397

    move-result v11

    if-eqz v11, :cond_35a

    const-wide/16 v11, 0x5

    :try_start_354
    invoke-static {v11, v12}, Lcom/widevine/drm/internal/j;->sleep(J)V
    :try_end_357
    .catch Ljava/lang/InterruptedException; {:try_start_354 .. :try_end_357} :catch_358
    .catch Ljava/net/SocketTimeoutException; {:try_start_354 .. :try_end_357} :catch_22b
    .catch Ljava/io/IOException; {:try_start_354 .. :try_end_357} :catch_397

    goto :goto_346

    :catch_358
    move-exception v11

    goto :goto_346

    :cond_35a
    :try_start_35a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    const/4 v12, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v12}, Lcom/widevine/drm/internal/i;->b([BI)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "decrypt (key received): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-lez v11, :cond_381

    const/4 v12, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_381
    .catch Ljava/net/SocketTimeoutException; {:try_start_35a .. :try_end_381} :catch_22b
    .catch Ljava/io/IOException; {:try_start_35a .. :try_end_381} :catch_397

    :cond_381
    move v11, v3

    move-object/from16 v23, v4

    move v4, v10

    move-object v10, v5

    move-object/from16 v5, v23

    goto/16 :goto_2f4

    :cond_38a
    move v3, v8

    :cond_38b
    const-wide/16 v12, 0xa

    :try_start_38d
    invoke-static {v12, v13}, Lcom/widevine/drm/internal/j;->sleep(J)V
    :try_end_390
    .catch Ljava/lang/InterruptedException; {:try_start_38d .. :try_end_390} :catch_430
    .catch Ljava/net/SocketTimeoutException; {:try_start_38d .. :try_end_390} :catch_40a
    .catch Ljava/io/IOException; {:try_start_38d .. :try_end_390} :catch_3ea

    move v8, v3

    goto :goto_312

    :catch_392
    move-exception v3

    move v3, v8

    :goto_394
    move v8, v3

    goto/16 :goto_312

    :catch_397
    move-exception v3

    :goto_398
    move v3, v10

    move-object v4, v7

    move v5, v8

    goto/16 :goto_212

    :cond_39d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-boolean v3, v3, Lcom/widevine/drm/internal/i;->g:Z

    if-eqz v3, :cond_3ba

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v3, v3, Lcom/widevine/drm/internal/i;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-object v4, v4, Lcom/widevine/drm/internal/i;->h:Ljava/lang/String;

    sget-object v5, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    invoke-virtual {v5}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Ljava/lang/String;I)I

    :cond_3ba
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    iget-boolean v3, v3, Lcom/widevine/drm/internal/i;->f:Z

    if-eqz v3, :cond_3e0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/widevine/drm/internal/i;->f:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-static {v4}, Lcom/widevine/drm/internal/i;->d(Lcom/widevine/drm/internal/i;)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/widevine/drm/internal/j;->a:Lcom/widevine/drm/internal/i;

    invoke-static {v5}, Lcom/widevine/drm/internal/i;->e(Lcom/widevine/drm/internal/i;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/widevine/drm/internal/i;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    :cond_3e0
    return-void

    :catch_3e1
    move-exception v3

    goto/16 :goto_1b7

    :catch_3e4
    move-exception v7

    goto/16 :goto_217

    :catch_3e7
    move-exception v3

    move v10, v4

    goto :goto_398

    :catch_3ea
    move-exception v5

    move v10, v4

    move v8, v3

    goto :goto_398

    :catch_3ee
    move-exception v4

    move-object v6, v3

    goto :goto_398

    :catch_3f1
    move-exception v4

    move v10, v3

    goto :goto_398

    :catch_3f4
    move-exception v6

    move-object v6, v7

    move-object v9, v8

    move v10, v3

    move-object v7, v4

    move v8, v5

    goto :goto_398

    :catch_3fb
    move-exception v7

    move-object v9, v8

    move v10, v3

    move-object v7, v4

    move v8, v5

    goto :goto_398

    :catch_401
    move-exception v7

    move v10, v3

    move-object v7, v4

    move v8, v5

    goto :goto_398

    :catch_406
    move-exception v3

    move-object v3, v9

    goto/16 :goto_22e

    :catch_40a
    move-exception v5

    move v8, v3

    move-object v3, v9

    goto/16 :goto_22e

    :catch_40f
    move-exception v4

    move-object v6, v3

    move v4, v10

    move-object v3, v9

    goto/16 :goto_22e

    :catch_415
    move-exception v4

    move v4, v3

    move-object v3, v9

    goto/16 :goto_22e

    :catch_41a
    move-exception v6

    move-object v6, v7

    move-object v7, v4

    move v4, v3

    move-object v3, v8

    move v8, v5

    goto/16 :goto_22e

    :catch_422
    move-exception v7

    move-object v7, v4

    move v4, v3

    move-object v3, v8

    move v8, v5

    goto/16 :goto_22e

    :catch_429
    move-exception v7

    move-object v7, v4

    move v8, v5

    move v4, v3

    move-object v3, v9

    goto/16 :goto_22e

    :catch_430
    move-exception v8

    goto/16 :goto_394

    :cond_433
    move v4, v6

    goto/16 :goto_244

    :cond_436
    move v13, v11

    move v11, v12

    goto/16 :goto_25c

    :cond_43a
    move-object v14, v3

    move v3, v11

    goto/16 :goto_17b

    :cond_43e
    move v3, v10

    goto/16 :goto_204

    :cond_441
    move v15, v12

    move/from16 v16, v14

    goto/16 :goto_12a

    :cond_446
    move-object v3, v14

    move v12, v15

    move/from16 v14, v16

    move-object/from16 v23, v5

    move-object v5, v10

    move v10, v4

    move-object/from16 v4, v23

    goto/16 :goto_fc
.end method
