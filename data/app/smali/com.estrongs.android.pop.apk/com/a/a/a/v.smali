.class abstract Lcom/a/a/a/v;
.super Ljava/lang/Object;


# direct methods
.method static a(I)B
    .registers 2

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method static a(BB)I
    .registers 4

    shl-int/lit8 v0, p0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(B)Ljava/lang/String;
    .registers 2

    and-int/lit16 v0, p0, 0xff

    invoke-static {v0}, Lcom/a/a/a/v;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a([B)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    aget-byte v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    invoke-static {v2, v3}, Lcom/a/a/a/v;->a(BB)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_6
.end method

.method static a(Ljava/io/InputStream;Lcom/a/a/a/i;[B)V
    .registers 5

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/a/a/a/v;->a(Ljava/io/InputStream;Lcom/a/a/a/i;[BII)V

    return-void
.end method

.method static a(Ljava/io/InputStream;Lcom/a/a/a/i;[BII)V
    .registers 11

    if-gez p4, :cond_8

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    const/4 v0, 0x0

    :cond_9
    iget-boolean v1, p1, Lcom/a/a/a/i;->a:Z

    if-eqz v1, :cond_32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p1, Lcom/a/a/a/i;->b:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    :cond_15
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_2b

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "OBEX read timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const-wide/16 v4, 0x64

    :try_start_2d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_44

    :cond_30
    if-eqz v3, :cond_15

    :cond_32
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-virtual {p0, p2, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_4b

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF while reading OBEX packet"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_44
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_4b
    add-int/2addr v0, v1

    if-lt v0, p4, :cond_9

    return-void
.end method

.method static a(Ljava/lang/String;)[B
    .registers 6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_11

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/a/a/a/v;->a(I)B

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v3}, Lcom/a/a/a/v;->b(I)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method static b(I)B
    .registers 2

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method static b([B)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-16BE"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_e

    :goto_7
    return-object v0

    :catch_8
    move-exception v0

    invoke-static {p0}, Lcom/a/a/a/v;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :catch_e
    move-exception v0

    invoke-static {p0}, Lcom/a/a/a/v;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method static b(Ljava/lang/String;)[B
    .registers 2

    :try_start_0
    const-string v0, "UTF-16BE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_d

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    invoke-static {p0}, Lcom/a/a/a/v;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_6

    :catch_d
    move-exception v0

    invoke-static {p0}, Lcom/a/a/a/v;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_6
.end method

.method public static c(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_b2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :sswitch_17
    const-string v0, "CONNECT"

    goto :goto_16

    :sswitch_1a
    const-string v0, "DISCONNECT"

    goto :goto_16

    :sswitch_1d
    const-string v0, "ABORT"

    goto :goto_16

    :sswitch_20
    const-string v0, "SESSION"

    goto :goto_16

    :sswitch_23
    const-string v0, "SESSION FINAL"

    goto :goto_16

    :sswitch_26
    const-string v0, "PUT"

    goto :goto_16

    :sswitch_29
    const-string v0, "PUT FINAL"

    goto :goto_16

    :sswitch_2c
    const-string v0, "GET"

    goto :goto_16

    :sswitch_2f
    const-string v0, "GET FINAL"

    goto :goto_16

    :sswitch_32
    const-string v0, "SETPATH"

    goto :goto_16

    :sswitch_35
    const-string v0, "SETPATH FINAL"

    goto :goto_16

    :sswitch_38
    const-string v0, "OBEX_RESPONSE_CONTINUE"

    goto :goto_16

    :sswitch_3b
    const-string v0, "OBEX_HTTP_OK"

    goto :goto_16

    :sswitch_3e
    const-string v0, "OBEX_HTTP_CREATED"

    goto :goto_16

    :sswitch_41
    const-string v0, "OBEX_HTTP_ACCEPTED"

    goto :goto_16

    :sswitch_44
    const-string v0, "OBEX_HTTP_NOT_AUTHORITATIVE"

    goto :goto_16

    :sswitch_47
    const-string v0, "OBEX_HTTP_NO_CONTENT"

    goto :goto_16

    :sswitch_4a
    const-string v0, "OBEX_HTTP_RESET"

    goto :goto_16

    :sswitch_4d
    const-string v0, "OBEX_HTTP_PARTIAL"

    goto :goto_16

    :sswitch_50
    const-string v0, "OBEX_HTTP_MULT_CHOICE"

    goto :goto_16

    :sswitch_53
    const-string v0, "OBEX_HTTP_MOVED_PERM"

    goto :goto_16

    :sswitch_56
    const-string v0, "OBEX_HTTP_MOVED_TEMP"

    goto :goto_16

    :sswitch_59
    const-string v0, "OBEX_HTTP_SEE_OTHER"

    goto :goto_16

    :sswitch_5c
    const-string v0, "OBEX_HTTP_NOT_MODIFIED"

    goto :goto_16

    :sswitch_5f
    const-string v0, "OBEX_HTTP_USE_PROXY"

    goto :goto_16

    :sswitch_62
    const-string v0, "OBEX_HTTP_BAD_REQUEST"

    goto :goto_16

    :sswitch_65
    const-string v0, "OBEX_HTTP_UNAUTHORIZED"

    goto :goto_16

    :sswitch_68
    const-string v0, "OBEX_HTTP_PAYMENT_REQUIRED"

    goto :goto_16

    :sswitch_6b
    const-string v0, "OBEX_HTTP_FORBIDDEN"

    goto :goto_16

    :sswitch_6e
    const-string v0, "OBEX_HTTP_NOT_FOUND"

    goto :goto_16

    :sswitch_71
    const-string v0, "OBEX_HTTP_BAD_METHOD"

    goto :goto_16

    :sswitch_74
    const-string v0, "OBEX_HTTP_NOT_ACCEPTABLE"

    goto :goto_16

    :sswitch_77
    const-string v0, "OBEX_HTTP_PROXY_AUTH"

    goto :goto_16

    :sswitch_7a
    const-string v0, "OBEX_HTTP_TIMEOUT"

    goto :goto_16

    :sswitch_7d
    const-string v0, "OBEX_HTTP_CONFLICT"

    goto :goto_16

    :sswitch_80
    const-string v0, "OBEX_HTTP_GONE"

    goto :goto_16

    :sswitch_83
    const-string v0, "OBEX_HTTP_LENGTH_REQUIRED"

    goto :goto_16

    :sswitch_86
    const-string v0, "OBEX_HTTP_PRECON_FAILED"

    goto :goto_16

    :sswitch_89
    const-string v0, "OBEX_HTTP_ENTITY_TOO_LARGE"

    goto :goto_16

    :sswitch_8c
    const-string v0, "OBEX_HTTP_REQ_TOO_LARGE"

    goto :goto_16

    :sswitch_8f
    const-string v0, "OBEX_HTTP_UNSUPPORTED_TYPE"

    goto :goto_16

    :sswitch_92
    const-string v0, "OBEX_HTTP_INTERNAL_ERROR"

    goto :goto_16

    :sswitch_95
    const-string v0, "OBEX_HTTP_NOT_IMPLEMENTED"

    goto/16 :goto_16

    :sswitch_99
    const-string v0, "OBEX_HTTP_BAD_GATEWAY"

    goto/16 :goto_16

    :sswitch_9d
    const-string v0, "OBEX_HTTP_UNAVAILABLE"

    goto/16 :goto_16

    :sswitch_a1
    const-string v0, "OBEX_HTTP_GATEWAY_TIMEOUT"

    goto/16 :goto_16

    :sswitch_a5
    const-string v0, "OBEX_HTTP_VERSION"

    goto/16 :goto_16

    :sswitch_a9
    const-string v0, "OBEX_DATABASE_FULL"

    goto/16 :goto_16

    :sswitch_ad
    const-string v0, "OBEX_DATABASE_LOCKED"

    goto/16 :goto_16

    nop

    :sswitch_data_b2
    .sparse-switch
        0x2 -> :sswitch_26
        0x3 -> :sswitch_2c
        0x5 -> :sswitch_32
        0x7 -> :sswitch_20
        0x80 -> :sswitch_17
        0x81 -> :sswitch_1a
        0x82 -> :sswitch_29
        0x83 -> :sswitch_2f
        0x85 -> :sswitch_35
        0x87 -> :sswitch_23
        0x90 -> :sswitch_38
        0xa0 -> :sswitch_3b
        0xa1 -> :sswitch_3e
        0xa2 -> :sswitch_41
        0xa3 -> :sswitch_44
        0xa4 -> :sswitch_47
        0xa5 -> :sswitch_4a
        0xa6 -> :sswitch_4d
        0xb0 -> :sswitch_50
        0xb1 -> :sswitch_53
        0xb2 -> :sswitch_56
        0xb3 -> :sswitch_59
        0xb4 -> :sswitch_5c
        0xb5 -> :sswitch_5f
        0xc0 -> :sswitch_62
        0xc1 -> :sswitch_65
        0xc2 -> :sswitch_68
        0xc3 -> :sswitch_6b
        0xc4 -> :sswitch_6e
        0xc5 -> :sswitch_71
        0xc6 -> :sswitch_74
        0xc7 -> :sswitch_77
        0xc8 -> :sswitch_7a
        0xc9 -> :sswitch_7d
        0xca -> :sswitch_80
        0xcb -> :sswitch_83
        0xcc -> :sswitch_86
        0xcd -> :sswitch_89
        0xce -> :sswitch_8c
        0xcf -> :sswitch_8f
        0xd0 -> :sswitch_92
        0xd1 -> :sswitch_95
        0xd2 -> :sswitch_99
        0xd3 -> :sswitch_9d
        0xd4 -> :sswitch_a1
        0xd5 -> :sswitch_a5
        0xe0 -> :sswitch_a9
        0xe1 -> :sswitch_ad
        0xff -> :sswitch_1d
    .end sparse-switch
.end method
