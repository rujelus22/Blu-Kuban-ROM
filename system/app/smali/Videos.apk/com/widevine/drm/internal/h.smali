.class final Lcom/widevine/drm/internal/h;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/widevine/drm/internal/g;


# direct methods
.method synthetic constructor <init>(Lcom/widevine/drm/internal/g;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/widevine/drm/internal/h;-><init>(Lcom/widevine/drm/internal/g;B)V

    return-void
.end method

.method private constructor <init>(Lcom/widevine/drm/internal/g;B)V
    .registers 3

    iput-object p1, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-static {v1}, Lcom/widevine/drm/internal/g;->a(Lcom/widevine/drm/internal/g;)Z

    :goto_6
    :try_start_6
    iget-object v1, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v1, v1, Lcom/widevine/drm/internal/g;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/HTTPDecrypter;->b()Z
    :try_end_d
    .catch Lcom/widevine/drm/internal/ad; {:try_start_6 .. :try_end_d} :catch_8f

    move-result v1

    if-eqz v1, :cond_18

    const-wide/16 v1, 0x5

    :try_start_12
    invoke-static {v1, v2}, Lcom/widevine/drm/internal/h;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_16
    .catch Lcom/widevine/drm/internal/ad; {:try_start_12 .. :try_end_15} :catch_8f

    goto :goto_6

    :catch_16
    move-exception v1

    goto :goto_6

    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v1, v1, Lcom/widevine/drm/internal/g;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    iget-object v2, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v2, v2, Lcom/widevine/drm/internal/g;->h:Ljava/lang/String;

    sget-object v3, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    invoke-virtual {v3}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-virtual {v4}, Lcom/widevine/drm/internal/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2f
    .catch Lcom/widevine/drm/internal/ad; {:try_start_18 .. :try_end_2f} :catch_8f

    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-static {v1}, Lcom/widevine/drm/internal/g;->b(Lcom/widevine/drm/internal/g;)Z

    move-result v1

    if-eqz v1, :cond_22b

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v3, v3, Lcom/widevine/drm/internal/g;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    sget-object v4, Lcom/widevine/drm/internal/e;->a:Lcom/widevine/drm/internal/e;

    invoke-virtual {v3, v4}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Lcom/widevine/drm/internal/e;)V

    :try_start_42
    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v3, v3, Lcom/widevine/drm/internal/g;->b:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_49
    .catch Ljava/net/SocketTimeoutException; {:try_start_42 .. :try_end_49} :catch_25f
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_213

    move-result-object v1

    :try_start_4a
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v3, v3, Lcom/widevine/drm/internal/g;->b:Ljava/net/ServerSocket;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    const/high16 v3, 0x1

    new-array v8, v3, [B

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-virtual {v3}, Lcom/widevine/drm/internal/g;->c()Z

    move-result v4

    if-nez v4, :cond_68

    const/4 v5, 0x1

    :cond_68
    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-static {v3}, Lcom/widevine/drm/internal/g;->c(Lcom/widevine/drm/internal/g;)Ljava/io/RandomAccessFile;

    move-result-object v3

    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-static {v3}, Lcom/widevine/drm/internal/g;->c(Lcom/widevine/drm/internal/g;)Ljava/io/RandomAccessFile;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    :goto_7d
    iget-object v9, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v9, v9, Lcom/widevine/drm/internal/g;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v9}, Lcom/widevine/drm/internal/HTTPDecrypter;->b()Z
    :try_end_84
    .catch Ljava/net/SocketTimeoutException; {:try_start_4a .. :try_end_84} :catch_199
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_84} :catch_213

    move-result v9

    if-eqz v9, :cond_9d

    const-wide/16 v9, 0x5

    :try_start_89
    invoke-static {v9, v10}, Lcom/widevine/drm/internal/h;->sleep(J)V
    :try_end_8c
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_8c} :catch_8d
    .catch Ljava/net/SocketTimeoutException; {:try_start_89 .. :try_end_8c} :catch_199
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_213

    goto :goto_7d

    :catch_8d
    move-exception v9

    goto :goto_7d

    :catch_8f
    move-exception v1

    iget-object v2, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    const/4 v3, 0x1

    iget-object v4, v1, Lcom/widevine/drm/internal/ad;->a:Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/ad;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/widevine/drm/internal/g;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto :goto_2f

    :cond_9d
    :try_start_9d
    iget-object v9, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-virtual {v9, v8, v3}, Lcom/widevine/drm/internal/g;->b([BI)I

    move v3, v4

    :goto_a3
    iget-object v4, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-static {v4}, Lcom/widevine/drm/internal/g;->b(Lcom/widevine/drm/internal/g;)Z

    move-result v4

    if-eqz v4, :cond_224

    if-nez v3, :cond_265

    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-virtual {v3}, Lcom/widevine/drm/internal/g;->c()Z

    move-result v3

    if-nez v3, :cond_265

    add-int/lit8 v4, v5, 0x1

    const/4 v9, 0x5

    if-le v5, v9, :cond_c4

    iget-object v5, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    const/4 v9, 0x1

    sget-object v10, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    const-string v11, "serror (42)"

    invoke-virtual {v5, v9, v10, v11}, Lcom/widevine/drm/internal/g;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    :cond_c4
    move v5, v4

    move v4, v3

    :goto_c6
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_fc

    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_224

    if-lez v3, :cond_fc

    iget-object v9, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-static {v9, v8, v3}, Lcom/widevine/drm/internal/g;->a(Lcom/widevine/drm/internal/g;[BI)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_fc

    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v9, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP media player response:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_fc
    if-eqz v2, :cond_143

    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-boolean v3, v3, Lcom/widevine/drm/internal/g;->e:Z

    if-nez v3, :cond_1da

    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-static {v3}, Lcom/widevine/drm/internal/g;->c(Lcom/widevine/drm/internal/g;)Ljava/io/RandomAccessFile;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    if-gez v3, :cond_16a

    iget-object v9, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-virtual {v9}, Lcom/widevine/drm/internal/g;->a()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_161

    iget-object v11, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-static {v11}, Lcom/widevine/drm/internal/g;->c(Lcom/widevine/drm/internal/g;)Ljava/io/RandomAccessFile;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    cmp-long v9, v11, v9

    if-gez v9, :cond_161

    new-instance v9, Lcom/widevine/drm/internal/b;

    sget-object v10, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    sget-object v11, Lcom/widevine/drmapi/android/WVStatus;->OutOfRange:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v9, v10, v11}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    iget-object v10, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v10, v10, Lcom/widevine/drm/internal/g;->h:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/widevine/drm/internal/b;->a(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/widevine/drm/internal/b;->a()V

    :goto_13d
    if-lez v3, :cond_143

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_143
    .catch Ljava/net/SocketTimeoutException; {:try_start_9d .. :try_end_143} :catch_199
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_143} :catch_213

    :cond_143
    :try_start_143
    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget v3, v3, Lcom/widevine/drm/internal/g;->i:I

    const/16 v9, 0xa

    if-lt v3, v9, :cond_218

    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->c()Lcom/widevine/drm/internal/e;

    move-result-object v3

    sget-object v9, Lcom/widevine/drm/internal/e;->c:Lcom/widevine/drm/internal/e;

    if-eq v3, v9, :cond_218

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0xa

    if-ge v0, v3, :cond_218

    const-wide/16 v9, 0x32

    invoke-static {v9, v10}, Lcom/widevine/drm/internal/h;->sleep(J)V
    :try_end_15e
    .catch Ljava/lang/InterruptedException; {:try_start_143 .. :try_end_15e} :catch_220
    .catch Ljava/net/SocketTimeoutException; {:try_start_143 .. :try_end_15e} :catch_199
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_15e} :catch_213

    move v3, v4

    goto/16 :goto_a3

    :cond_161
    const/4 v3, 0x0

    :try_start_162
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    const/4 v2, 0x0

    move v13, v2

    move v2, v3

    move v3, v13

    goto :goto_13d

    :cond_16a
    :goto_16a
    iget-object v9, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v9, v9, Lcom/widevine/drm/internal/g;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v9}, Lcom/widevine/drm/internal/HTTPDecrypter;->b()Z
    :try_end_171
    .catch Ljava/net/SocketTimeoutException; {:try_start_162 .. :try_end_171} :catch_199
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_171} :catch_213

    move-result v9

    if-eqz v9, :cond_17c

    const-wide/16 v9, 0x5

    :try_start_176
    invoke-static {v9, v10}, Lcom/widevine/drm/internal/h;->sleep(J)V
    :try_end_179
    .catch Ljava/lang/InterruptedException; {:try_start_176 .. :try_end_179} :catch_17a
    .catch Ljava/net/SocketTimeoutException; {:try_start_176 .. :try_end_179} :catch_199
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_179} :catch_213

    goto :goto_16a

    :catch_17a
    move-exception v9

    goto :goto_16a

    :cond_17c
    :try_start_17c
    iget-object v9, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-virtual {v9, v8, v3}, Lcom/widevine/drm/internal/g;->b([BI)I

    move-result v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decrypt1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_198
    .catch Ljava/net/SocketTimeoutException; {:try_start_17c .. :try_end_198} :catch_199
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_198} :catch_213

    goto :goto_13d

    :catch_199
    move-exception v2

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    :goto_19d
    iget-object v2, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    const/4 v3, 0x1

    sget-object v4, Lcom/widevine/drmapi/android/WVStatus;->LostConnection:Lcom/widevine/drmapi/android/WVStatus;

    const-string v5, "Mediaplayer connection timeout"

    invoke-virtual {v2, v3, v4, v5}, Lcom/widevine/drm/internal/g;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    :goto_1aa
    if-eqz v1, :cond_2f

    :try_start_1ac
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1af} :catch_1b1

    goto/16 :goto_2f

    :catch_1b1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    goto/16 :goto_2f

    :cond_1da
    :try_start_1da
    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->c()Lcom/widevine/drm/internal/e;

    move-result-object v3

    sget-object v9, Lcom/widevine/drm/internal/e;->c:Lcom/widevine/drm/internal/e;

    if-ne v3, v9, :cond_215

    :goto_1e2
    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v3, v3, Lcom/widevine/drm/internal/g;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v3}, Lcom/widevine/drm/internal/HTTPDecrypter;->b()Z
    :try_end_1e9
    .catch Ljava/net/SocketTimeoutException; {:try_start_1da .. :try_end_1e9} :catch_199
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1e9} :catch_213

    move-result v3

    if-eqz v3, :cond_1f4

    const-wide/16 v9, 0x5

    :try_start_1ee
    invoke-static {v9, v10}, Lcom/widevine/drm/internal/h;->sleep(J)V
    :try_end_1f1
    .catch Ljava/lang/InterruptedException; {:try_start_1ee .. :try_end_1f1} :catch_1f2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1ee .. :try_end_1f1} :catch_199
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f1} :catch_213

    goto :goto_1e2

    :catch_1f2
    move-exception v3

    goto :goto_1e2

    :cond_1f4
    :try_start_1f4
    iget-object v3, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/widevine/drm/internal/g;->b([BI)I

    move-result v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decrypt2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_211
    .catch Ljava/net/SocketTimeoutException; {:try_start_1f4 .. :try_end_211} :catch_199
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_211} :catch_213

    goto/16 :goto_13d

    :catch_213
    move-exception v2

    goto :goto_1aa

    :cond_215
    const/4 v3, 0x0

    goto/16 :goto_13d

    :cond_218
    const-wide/16 v9, 0xa

    :try_start_21a
    invoke-static {v9, v10}, Lcom/widevine/drm/internal/h;->sleep(J)V
    :try_end_21d
    .catch Ljava/lang/InterruptedException; {:try_start_21a .. :try_end_21d} :catch_220
    .catch Ljava/net/SocketTimeoutException; {:try_start_21a .. :try_end_21d} :catch_199
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_21d} :catch_213

    move v3, v4

    goto/16 :goto_a3

    :catch_220
    move-exception v3

    move v3, v4

    goto/16 :goto_a3

    :cond_224
    :try_start_224
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_22a
    .catch Ljava/net/SocketTimeoutException; {:try_start_224 .. :try_end_22a} :catch_199
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_22a} :catch_213

    goto :goto_1aa

    :cond_22b
    iget-object v0, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-boolean v0, v0, Lcom/widevine/drm/internal/g;->g:Z

    if-eqz v0, :cond_242

    iget-object v0, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v0, v0, Lcom/widevine/drm/internal/g;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    iget-object v1, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v1, v1, Lcom/widevine/drm/internal/g;->h:Ljava/lang/String;

    sget-object v2, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    invoke-virtual {v2}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Ljava/lang/String;I)I

    :cond_242
    iget-object v0, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-boolean v0, v0, Lcom/widevine/drm/internal/g;->f:Z

    if-eqz v0, :cond_25e

    iget-object v0, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/widevine/drm/internal/g;->f:Z

    iget-object v0, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    iget-object v1, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-static {v1}, Lcom/widevine/drm/internal/g;->d(Lcom/widevine/drm/internal/g;)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/widevine/drm/internal/h;->a:Lcom/widevine/drm/internal/g;

    invoke-static {v2}, Lcom/widevine/drm/internal/g;->e(Lcom/widevine/drm/internal/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/widevine/drm/internal/g;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    :cond_25e
    return-void

    :catch_25f
    move-exception v2

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    goto/16 :goto_19d

    :cond_265
    move v4, v3

    goto/16 :goto_c6
.end method
