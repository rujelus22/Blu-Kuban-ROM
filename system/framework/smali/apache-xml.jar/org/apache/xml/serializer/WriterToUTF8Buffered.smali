.class final Lorg/apache/xml/serializer/WriterToUTF8Buffered;
.super Ljava/io/Writer;
.source "WriterToUTF8Buffered.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;


# static fields
.field private static final BYTES_MAX:I = 0x4000

.field private static final CHARS_MAX:I = 0x1555


# instance fields
.field private count:I

.field private final m_inputChars:[C

.field private final m_os:Ljava/io/OutputStream;

.field private final m_outputBytes:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    .line 86
    const/16 v0, 0x4003

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    .line 90
    const/16 v0, 0x1557

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    .line 95
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 482
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 483
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 467
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 468
    return-void
.end method

.method public flushBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 445
    iget v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    if-lez v0, :cond_10

    .line 447
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 449
    iput v3, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    .line 451
    :cond_10
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public write(I)V
    .registers 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    const/16 v1, 0x4000

    if-lt v0, v1, :cond_9

    .line 139
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 141
    :cond_9
    const/16 v0, 0x80

    if-ge p1, v0, :cond_19

    .line 143
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 164
    :goto_18
    return-void

    .line 145
    :cond_19
    const/16 v0, 0x800

    if-ge p1, v0, :cond_3c

    .line 147
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x6

    add-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 148
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_18

    .line 150
    :cond_3c
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_70

    .line 152
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0xc

    add-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_18

    .line 158
    :cond_70
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x12

    add-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 159
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_18
.end method

.method public write(Ljava/lang/String;)V
    .registers 28
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 323
    .local v15, length:I
    mul-int/lit8 v16, v15, 0x3

    .line 325
    .local v16, lengthx3:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    move/from16 v22, v0

    move/from16 v0, v22

    rsub-int v0, v0, 0x4000

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_95

    .line 328
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 330
    const/16 v22, 0x4000

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_95

    .line 336
    const/16 v20, 0x0

    .line 337
    .local v20, start:I
    div-int/lit16 v0, v15, 0x1555

    move/from16 v19, v0

    .line 339
    .local v19, split:I
    rem-int/lit16 v0, v15, 0x1555

    move/from16 v22, v0

    if-lez v22, :cond_92

    .line 340
    add-int/lit8 v8, v19, 0x1

    .line 343
    .local v8, chunks:I
    :goto_31
    const/4 v11, 0x0

    .line 344
    .local v11, end_chunk:I
    const/4 v7, 0x1

    .local v7, chunk:I
    :goto_33
    if-gt v7, v8, :cond_1bb

    .line 346
    move/from16 v21, v11

    .line 347
    .local v21, start_chunk:I
    int-to-long v0, v15

    move-wide/from16 v22, v0

    int-to-long v0, v7

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    int-to-long v0, v8

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int/lit8 v11, v22, 0x0

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v11, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 349
    sub-int v14, v11, v21

    .line 354
    .local v14, len_chunk:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v14, -0x1

    aget-char v5, v22, v23

    .line 355
    .local v5, c:C
    const v22, 0xd800

    move/from16 v0, v22

    if-lt v5, v0, :cond_7e

    const v22, 0xdbff

    move/from16 v0, v22

    if-gt v5, v0, :cond_7e

    .line 359
    add-int/lit8 v11, v11, -0x1

    .line 360
    add-int/lit8 v14, v14, -0x1

    .line 361
    if-ne v7, v8, :cond_7e

    .line 371
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v14}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->write([CII)V

    .line 344
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 342
    .end local v5           #c:C
    .end local v7           #chunk:I
    .end local v8           #chunks:I
    .end local v11           #end_chunk:I
    .end local v14           #len_chunk:I
    .end local v21           #start_chunk:I
    :cond_92
    move/from16 v8, v19

    .restart local v8       #chunks:I
    goto :goto_31

    .line 378
    .end local v8           #chunks:I
    .end local v19           #split:I
    .end local v20           #start:I
    :cond_95
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v15, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 379
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    .line 380
    .local v6, chars:[C
    move/from16 v18, v15

    .line 381
    .local v18, n:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    .line 382
    .local v4, buf_loc:[B
    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    .line 383
    .local v9, count_loc:I
    const/4 v13, 0x0

    .local v13, i:I
    move v10, v9

    .line 391
    .end local v9           #count_loc:I
    .local v10, count_loc:I
    :goto_ba
    move/from16 v0, v18

    if-ge v13, v0, :cond_d1

    aget-char v5, v6, v13

    .restart local v5       #c:C
    const/16 v22, 0x80

    move/from16 v0, v22

    if-ge v5, v0, :cond_d1

    .line 392
    add-int/lit8 v9, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v9       #count_loc:I
    int-to-byte v0, v5

    move/from16 v22, v0

    aput-byte v22, v4, v10

    .line 391
    add-int/lit8 v13, v13, 0x1

    move v10, v9

    .end local v9           #count_loc:I
    .restart local v10       #count_loc:I
    goto :goto_ba

    .line 394
    .end local v5           #c:C
    :cond_d1
    :goto_d1
    move/from16 v0, v18

    if-ge v13, v0, :cond_1b7

    .line 397
    aget-char v5, v6, v13

    .line 399
    .restart local v5       #c:C
    const/16 v22, 0x80

    move/from16 v0, v22

    if-ge v5, v0, :cond_e8

    .line 400
    add-int/lit8 v9, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v9       #count_loc:I
    int-to-byte v0, v5

    move/from16 v22, v0

    aput-byte v22, v4, v10

    .line 394
    :goto_e4
    add-int/lit8 v13, v13, 0x1

    move v10, v9

    .end local v9           #count_loc:I
    .restart local v10       #count_loc:I
    goto :goto_d1

    .line 401
    :cond_e8
    const/16 v22, 0x800

    move/from16 v0, v22

    if-ge v5, v0, :cond_112

    .line 403
    add-int/lit8 v9, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v9       #count_loc:I
    shr-int/lit8 v22, v5, 0x6

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0xc0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v10

    .line 404
    add-int/lit8 v10, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v10       #count_loc:I
    and-int/lit8 v22, v5, 0x3f

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v9

    move v9, v10

    .end local v10           #count_loc:I
    .restart local v9       #count_loc:I
    goto :goto_e4

    .line 413
    .end local v9           #count_loc:I
    .restart local v10       #count_loc:I
    :cond_112
    const v22, 0xd800

    move/from16 v0, v22

    if-lt v5, v0, :cond_180

    const v22, 0xdbff

    move/from16 v0, v22

    if-gt v5, v0, :cond_180

    .line 416
    move v12, v5

    .line 417
    .local v12, high:C
    add-int/lit8 v13, v13, 0x1

    .line 418
    aget-char v17, v6, v13

    .line 420
    .local v17, low:C
    add-int/lit8 v9, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v9       #count_loc:I
    add-int/lit8 v22, v12, 0x40

    shr-int/lit8 v22, v22, 0x8

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xf0

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0xf0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v10

    .line 421
    add-int/lit8 v10, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v10       #count_loc:I
    add-int/lit8 v22, v12, 0x40

    shr-int/lit8 v22, v22, 0x2

    and-int/lit8 v22, v22, 0x3f

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v9

    .line 422
    add-int/lit8 v9, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v9       #count_loc:I
    shr-int/lit8 v22, v17, 0x6

    and-int/lit8 v22, v22, 0xf

    shl-int/lit8 v23, v12, 0x4

    and-int/lit8 v23, v23, 0x30

    add-int v22, v22, v23

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v10

    .line 423
    add-int/lit8 v10, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v10       #count_loc:I
    and-int/lit8 v22, v17, 0x3f

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v9

    move v9, v10

    .line 424
    .end local v10           #count_loc:I
    .restart local v9       #count_loc:I
    goto/16 :goto_e4

    .line 427
    .end local v9           #count_loc:I
    .end local v12           #high:C
    .end local v17           #low:C
    .restart local v10       #count_loc:I
    :cond_180
    add-int/lit8 v9, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v9       #count_loc:I
    shr-int/lit8 v22, v5, 0xc

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0xe0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v10

    .line 428
    add-int/lit8 v10, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v10       #count_loc:I
    shr-int/lit8 v22, v5, 0x6

    and-int/lit8 v22, v22, 0x3f

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v9

    .line 429
    add-int/lit8 v9, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v9       #count_loc:I
    and-int/lit8 v22, v5, 0x3f

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v10

    goto/16 :goto_e4

    .line 433
    .end local v5           #c:C
    .end local v9           #count_loc:I
    .restart local v10       #count_loc:I
    :cond_1b7
    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    .line 435
    .end local v4           #buf_loc:[B
    .end local v6           #chars:[C
    .end local v10           #count_loc:I
    .end local v13           #i:I
    .end local v18           #n:I
    :cond_1bb
    return-void
.end method

.method public write([CII)V
    .registers 27
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    mul-int/lit8 v14, p3, 0x3

    .line 188
    .local v14, lengthx3:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    move/from16 v19, v0

    move/from16 v0, v19

    rsub-int v0, v0, 0x4000

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v14, v0, :cond_7a

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 193
    const/16 v19, 0x4000

    move/from16 v0, v19

    if-le v14, v0, :cond_7a

    .line 202
    move/from16 v0, p3

    div-int/lit16 v0, v0, 0x1555

    move/from16 v17, v0

    .line 204
    .local v17, split:I
    move/from16 v0, p3

    rem-int/lit16 v0, v0, 0x1555

    move/from16 v19, v0

    if-lez v19, :cond_74

    .line 205
    add-int/lit8 v6, v17, 0x1

    .line 208
    .local v6, chunks:I
    :goto_2b
    move/from16 v9, p2

    .line 209
    .local v9, end_chunk:I
    const/4 v5, 0x1

    .local v5, chunk:I
    :goto_2e
    if-gt v5, v6, :cond_188

    .line 211
    move/from16 v18, v9

    .line 212
    .local v18, start_chunk:I
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v19, v0

    int-to-long v0, v5

    move-wide/from16 v21, v0

    mul-long v19, v19, v21

    int-to-long v0, v6

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v9, p2, v19

    .line 217
    add-int/lit8 v19, v9, -0x1

    aget-char v4, p1, v19

    .line 218
    .local v4, c:C
    add-int/lit8 v19, v9, -0x1

    aget-char v12, p1, v19

    .line 219
    .local v12, ic:I
    const v19, 0xd800

    move/from16 v0, v19

    if-lt v4, v0, :cond_66

    const v19, 0xdbff

    move/from16 v0, v19

    if-gt v4, v0, :cond_66

    .line 225
    add-int v19, p2, p3

    move/from16 v0, v19

    if-ge v9, v0, :cond_77

    .line 228
    add-int/lit8 v9, v9, 0x1

    .line 243
    :cond_66
    :goto_66
    sub-int v13, v9, v18

    .line 244
    .local v13, len_chunk:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->write([CII)V

    .line 209
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 207
    .end local v4           #c:C
    .end local v5           #chunk:I
    .end local v6           #chunks:I
    .end local v9           #end_chunk:I
    .end local v12           #ic:I
    .end local v13           #len_chunk:I
    .end local v18           #start_chunk:I
    :cond_74
    move/from16 v6, v17

    .restart local v6       #chunks:I
    goto :goto_2b

    .line 238
    .restart local v4       #c:C
    .restart local v5       #chunk:I
    .restart local v9       #end_chunk:I
    .restart local v12       #ic:I
    .restart local v18       #start_chunk:I
    :cond_77
    add-int/lit8 v9, v9, -0x1

    goto :goto_66

    .line 252
    .end local v4           #c:C
    .end local v5           #chunk:I
    .end local v6           #chunks:I
    .end local v9           #end_chunk:I
    .end local v12           #ic:I
    .end local v17           #split:I
    .end local v18           #start_chunk:I
    :cond_7a
    add-int v16, p3, p2

    .line 253
    .local v16, n:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    .line 254
    .local v3, buf_loc:[B
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    .line 255
    .local v7, count_loc:I
    move/from16 v11, p2

    .local v11, i:I
    move v8, v7

    .line 263
    .end local v7           #count_loc:I
    .local v8, count_loc:I
    :goto_87
    move/from16 v0, v16

    if-ge v11, v0, :cond_9e

    aget-char v4, p1, v11

    .restart local v4       #c:C
    const/16 v19, 0x80

    move/from16 v0, v19

    if-ge v4, v0, :cond_9e

    .line 264
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v7       #count_loc:I
    int-to-byte v0, v4

    move/from16 v19, v0

    aput-byte v19, v3, v8

    .line 263
    add-int/lit8 v11, v11, 0x1

    move v8, v7

    .end local v7           #count_loc:I
    .restart local v8       #count_loc:I
    goto :goto_87

    .line 266
    .end local v4           #c:C
    :cond_9e
    :goto_9e
    move/from16 v0, v16

    if-ge v11, v0, :cond_184

    .line 269
    aget-char v4, p1, v11

    .line 271
    .restart local v4       #c:C
    const/16 v19, 0x80

    move/from16 v0, v19

    if-ge v4, v0, :cond_b5

    .line 272
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v7       #count_loc:I
    int-to-byte v0, v4

    move/from16 v19, v0

    aput-byte v19, v3, v8

    .line 266
    :goto_b1
    add-int/lit8 v11, v11, 0x1

    move v8, v7

    .end local v7           #count_loc:I
    .restart local v8       #count_loc:I
    goto :goto_9e

    .line 273
    :cond_b5
    const/16 v19, 0x800

    move/from16 v0, v19

    if-ge v4, v0, :cond_df

    .line 275
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v7       #count_loc:I
    shr-int/lit8 v19, v4, 0x6

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    .line 276
    add-int/lit8 v8, v7, 0x1

    .end local v7           #count_loc:I
    .restart local v8       #count_loc:I
    and-int/lit8 v19, v4, 0x3f

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v7

    move v7, v8

    .end local v8           #count_loc:I
    .restart local v7       #count_loc:I
    goto :goto_b1

    .line 285
    .end local v7           #count_loc:I
    .restart local v8       #count_loc:I
    :cond_df
    const v19, 0xd800

    move/from16 v0, v19

    if-lt v4, v0, :cond_14d

    const v19, 0xdbff

    move/from16 v0, v19

    if-gt v4, v0, :cond_14d

    .line 288
    move v10, v4

    .line 289
    .local v10, high:C
    add-int/lit8 v11, v11, 0x1

    .line 290
    aget-char v15, p1, v11

    .line 292
    .local v15, low:C
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v7       #count_loc:I
    add-int/lit8 v19, v10, 0x40

    shr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    .line 293
    add-int/lit8 v8, v7, 0x1

    .end local v7           #count_loc:I
    .restart local v8       #count_loc:I
    add-int/lit8 v19, v10, 0x40

    shr-int/lit8 v19, v19, 0x2

    and-int/lit8 v19, v19, 0x3f

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v7

    .line 294
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v7       #count_loc:I
    shr-int/lit8 v19, v15, 0x6

    and-int/lit8 v19, v19, 0xf

    shl-int/lit8 v20, v10, 0x4

    and-int/lit8 v20, v20, 0x30

    add-int v19, v19, v20

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    .line 295
    add-int/lit8 v8, v7, 0x1

    .end local v7           #count_loc:I
    .restart local v8       #count_loc:I
    and-int/lit8 v19, v15, 0x3f

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v7

    move v7, v8

    .line 296
    .end local v8           #count_loc:I
    .restart local v7       #count_loc:I
    goto/16 :goto_b1

    .line 299
    .end local v7           #count_loc:I
    .end local v10           #high:C
    .end local v15           #low:C
    .restart local v8       #count_loc:I
    :cond_14d
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v7       #count_loc:I
    shr-int/lit8 v19, v4, 0xc

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0xe0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    .line 300
    add-int/lit8 v8, v7, 0x1

    .end local v7           #count_loc:I
    .restart local v8       #count_loc:I
    shr-int/lit8 v19, v4, 0x6

    and-int/lit8 v19, v19, 0x3f

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v7

    .line 301
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v7       #count_loc:I
    and-int/lit8 v19, v4, 0x3f

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    goto/16 :goto_b1

    .line 305
    .end local v4           #c:C
    .end local v7           #count_loc:I
    .restart local v8       #count_loc:I
    :cond_184
    move-object/from16 v0, p0

    iput v8, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    .line 307
    .end local v3           #buf_loc:[B
    .end local v8           #count_loc:I
    .end local v11           #i:I
    .end local v16           #n:I
    :cond_188
    return-void
.end method
