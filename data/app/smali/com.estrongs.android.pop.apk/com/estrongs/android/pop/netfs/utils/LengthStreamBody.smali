.class public Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;


# instance fields
.field private final filename:Ljava/lang/String;

.field private final in:Ljava/io/InputStream;

.field private left_data:J

.field private final length:J

.field private send_length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;J)V
    .registers 11

    const-string v2, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;JJ)V
    .registers 13

    const-string v2, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)V

    iput-wide p5, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    iput-wide p3, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    invoke-direct {p0, p2}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->filename:Ljava/lang/String;

    iput-wide p4, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->length:J

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 5

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->length:J

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    goto :goto_a

    :cond_16
    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    goto :goto_a
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 10

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->writeTo2(Ljava/io/OutputStream;)V

    :goto_c
    return-void

    :cond_d
    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/16 v0, 0x4000

    :try_start_19
    new-array v4, v0, [B

    const-wide/16 v2, 0x0

    move v0, v1

    :cond_1e
    :goto_1e
    iget-wide v5, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->length:J

    cmp-long v5, v2, v5

    if-gez v5, :cond_2f

    iget-object v5, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    rsub-int v6, v0, 0x4000

    invoke-virtual {v5, v4, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_52

    :cond_2f
    if-eqz v0, :cond_49

    const-string v1, "LengthStream"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last send:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_49
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_4c
    .catchall {:try_start_19 .. :try_end_4c} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4c} :catch_6d

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_c

    :cond_52
    add-int v6, v5, v0

    const/16 v7, 0x400

    if-le v6, v7, :cond_6b

    const/4 v6, 0x0

    add-int/2addr v0, v5

    :try_start_5a
    invoke-virtual {p1, v4, v6, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_6d

    move v0, v1

    :goto_5e
    int-to-long v6, v5

    add-long/2addr v2, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1e

    const-wide/16 v5, 0x14

    :try_start_65
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_1e

    :catch_69
    move-exception v5

    goto :goto_1e

    :cond_6b
    add-int/2addr v0, v5

    goto :goto_5e

    :catch_6d
    move-exception v0

    :try_start_6e
    const-string v1, "LengthStream"

    const-string v2, "occur exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_7e

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_c

    :catchall_7e
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeTo2(Ljava/io/OutputStream;)V
    .registers 15

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4d

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    :goto_14
    const/16 v2, 0x4000

    :try_start_16
    new-array v7, v2, [B
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_18} :catch_c4

    const/4 v4, 0x0

    move v6, v4

    move-wide v2, v0

    :goto_1b
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_50

    :cond_21
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_84

    :try_start_27
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v0

    move-wide v1, v2

    :goto_2f
    :try_start_2f
    const-string v3, "LengthStream"

    const-string v4, "occur exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_c1

    iget-wide v3, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_47

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_4c

    :cond_47
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    goto :goto_14

    :cond_50
    rsub-int v4, v6, 0x4000

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_7a

    move-wide v4, v2

    :goto_58
    :try_start_58
    iget-object v8, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    long-to-int v4, v4

    invoke-virtual {v8, v7, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v4, -0x1

    if-eq v5, v4, :cond_21

    add-int v4, v5, v6

    const/16 v8, 0x400

    if-le v4, v8, :cond_7e

    const/4 v4, 0x0

    add-int/2addr v6, v5

    invoke-virtual {p1, v7, v4, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6d
    .catchall {:try_start_58 .. :try_end_6d} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6d} :catch_2d

    const/4 v4, 0x0

    :goto_6e
    int-to-long v8, v5

    sub-long/2addr v2, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_cb

    const-wide/16 v5, 0x14

    :try_start_75
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_81

    move v6, v4

    goto :goto_1b

    :cond_7a
    rsub-int v4, v6, 0x4000

    int-to-long v4, v4

    goto :goto_58

    :cond_7e
    add-int v4, v6, v5

    goto :goto_6e

    :catch_81
    move-exception v5

    move v6, v4

    goto :goto_1b

    :cond_84
    if-eqz v6, :cond_8a

    const/4 v4, 0x0

    :try_start_87
    invoke-virtual {p1, v7, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    :cond_8a
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-wide v4, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J
    :try_end_93
    .catchall {:try_start_87 .. :try_end_93} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_93} :catch_2d

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_4c

    :cond_a1
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_4c

    :catchall_a7
    move-exception v2

    move-object v10, v2

    move-wide v2, v0

    move-object v0, v10

    :goto_ab
    iget-wide v4, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b9

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_be

    :cond_b9
    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_be
    throw v0

    :catchall_bf
    move-exception v0

    goto :goto_ab

    :catchall_c1
    move-exception v0

    move-wide v2, v1

    goto :goto_ab

    :catch_c4
    move-exception v2

    move-object v10, v2

    move-wide v11, v0

    move-wide v1, v11

    move-object v0, v10

    goto/16 :goto_2f

    :cond_cb
    move v6, v4

    goto/16 :goto_1b
.end method
