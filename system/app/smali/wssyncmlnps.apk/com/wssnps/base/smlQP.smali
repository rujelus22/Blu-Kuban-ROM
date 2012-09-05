.class public Lcom/wssnps/base/smlQP;
.super Ljava/lang/Object;
.source "smlQP.java"


# static fields
.field private static final CRLF:[B

.field private static final EQCRLF:[B

.field private static final hexmap:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/wssnps/base/smlQP;->CRLF:[B

    .line 55
    const-string v0, "=\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/wssnps/base/smlQP;->EQCRLF:[B

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    .line 58
    sput-object v0, Lcom/wssnps/base/smlQP;->hexmap:[B

    .line 36
    return-void

    .line 59
    :array_1a
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeQP(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wssnps/base/smlMimeException;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, decodedString:Ljava/lang/String;
    if-nez p0, :cond_5

    .line 284
    const/4 v2, 0x0

    .line 294
    :goto_4
    return-object v2

    .line 288
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/String;

    .end local v0           #decodedString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlQP;->decodeQP([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_14

    .restart local v0       #decodedString:Ljava/lang/String;
    move-object v2, v0

    .line 294
    goto :goto_4

    .line 290
    .end local v0           #decodedString:Ljava/lang/String;
    :catch_14
    move-exception v1

    .line 292
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lcom/wssnps/base/smlMimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wssnps/base/smlMimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static decodeQP([B)[B
    .registers 2
    .parameter "bytesIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wssnps/base/smlMimeException;
        }
    .end annotation

    .prologue
    .line 306
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/wssnps/base/smlQP;->decodeQP([BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected static decodeQP([BI)[B
    .registers 27
    .parameter "bytesIn"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wssnps/base/smlMimeException;
        }
    .end annotation

    .prologue
    .line 346
    if-nez p0, :cond_a

    .line 347
    new-instance v20, Lcom/wssnps/base/smlMimeException;

    const-string v21, "Error: Bad parameter"

    invoke-direct/range {v20 .. v21}, Lcom/wssnps/base/smlMimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 349
    :cond_a
    add-int/lit8 v20, p1, 0x1

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 350
    .local v17, res:[B
    move-object/from16 v19, p0

    .line 351
    .local v19, src:[B
    const-string v20, "\r\n"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 353
    .local v15, nl:[B
    const/4 v12, 0x0

    .local v12, last:I
    const/4 v9, 0x0

    .line 355
    .local v9, j:I
    const/4 v6, 0x0

    .local v6, i:I
    move v7, v6

    .end local v6           #i:I
    .local v7, i:I
    move v10, v9

    .end local v9           #j:I
    .local v10, j:I
    :goto_1f
    move/from16 v0, p1

    if-lt v7, v0, :cond_2c

    .line 408
    new-array v0, v10, [B

    move-object/from16 v18, v0

    .line 409
    .local v18, res2:[B
    const/4 v11, 0x0

    .line 410
    .local v11, k:I
    const/4 v11, 0x0

    :goto_29
    if-lt v11, v10, :cond_113

    .line 414
    return-object v18

    .line 357
    .end local v11           #k:I
    .end local v18           #res2:[B
    :cond_2c
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    aget-byte v4, v19, v7

    .line 359
    .local v4, ch:B
    const/16 v20, 0x3d

    move/from16 v0, v20

    if-ne v4, v0, :cond_c3

    .line 361
    aget-byte v20, v19, v6

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4a

    aget-byte v20, v19, v6

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_69

    .line 363
    :cond_4a
    add-int/lit8 v6, v6, 0x1

    .line 365
    add-int/lit8 v20, v6, -0x1

    aget-byte v20, v19, v20

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11f

    aget-byte v20, v19, v6

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11f

    .line 366
    add-int/lit8 v6, v6, 0x1

    move v9, v10

    .line 387
    .end local v10           #j:I
    .restart local v9       #j:I
    :goto_65
    move v12, v9

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    move v10, v9

    .end local v9           #j:I
    .restart local v10       #j:I
    goto :goto_1f

    .line 371
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_69
    aget-byte v20, v19, v6

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 372
    .local v5, hi:I
    add-int/lit8 v20, v6, 0x1

    aget-byte v20, v19, v20

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Character;->digit(CI)I

    move-result v14

    .line 374
    .local v14, lo:I
    or-int v20, v5, v14

    if-gez v20, :cond_b3

    .line 376
    new-instance v20, Lcom/wssnps/base/smlMimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    new-instance v22, Ljava/lang/String;

    add-int/lit8 v23, v6, -0x1

    const/16 v24, 0x3

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "is an invalid code"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/wssnps/base/smlMimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 380
    :cond_b3
    shl-int/lit8 v20, v5, 0x4

    or-int v20, v20, v14

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 381
    .local v16, repl:B
    add-int/lit8 v6, v6, 0x2

    .line 384
    add-int/lit8 v9, v10, 0x1

    .end local v10           #j:I
    .restart local v9       #j:I
    aput-byte v16, v17, v10

    goto :goto_65

    .line 389
    .end local v5           #hi:I
    .end local v9           #j:I
    .end local v14           #lo:I
    .end local v16           #repl:B
    .restart local v10       #j:I
    :cond_c3
    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v4, v0, :cond_cf

    const/16 v20, 0xd

    move/from16 v0, v20

    if-ne v4, v0, :cond_fe

    .line 391
    :cond_cf
    add-int/lit8 v20, v6, -0x1

    aget-byte v20, v19, v20

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e7

    aget-byte v20, v19, v6

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e7

    .line 392
    add-int/lit8 v6, v6, 0x1

    .line 394
    :cond_e7
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_e8
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_f4

    .line 397
    move v9, v12

    .end local v10           #j:I
    .restart local v9       #j:I
    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    move v10, v9

    .end local v9           #j:I
    .restart local v10       #j:I
    goto/16 :goto_1f

    .line 395
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_f4
    add-int/lit8 v13, v12, 0x1

    .end local v12           #last:I
    .local v13, last:I
    aget-byte v20, v15, v8

    aput-byte v20, v17, v12

    .line 394
    add-int/lit8 v8, v8, 0x1

    move v12, v13

    .end local v13           #last:I
    .restart local v12       #last:I
    goto :goto_e8

    .line 401
    .end local v8           #idx:I
    :cond_fe
    add-int/lit8 v9, v10, 0x1

    .end local v10           #j:I
    .restart local v9       #j:I
    aput-byte v4, v17, v10

    .line 403
    const/16 v20, 0x20

    move/from16 v0, v20

    if-eq v4, v0, :cond_11b

    const/16 v20, 0x9

    move/from16 v0, v20

    if-eq v4, v0, :cond_11b

    .line 404
    move v12, v9

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    move v10, v9

    .end local v9           #j:I
    .restart local v10       #j:I
    goto/16 :goto_1f

    .line 412
    .end local v4           #ch:B
    .restart local v11       #k:I
    .restart local v18       #res2:[B
    :cond_113
    aget-byte v20, v17, v11

    aput-byte v20, v18, v11

    .line 410
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_29

    .end local v7           #i:I
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v18           #res2:[B
    .restart local v4       #ch:B
    .restart local v6       #i:I
    .restart local v9       #j:I
    :cond_11b
    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    move v10, v9

    .end local v9           #j:I
    .restart local v10       #j:I
    goto/16 :goto_1f

    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_11f
    move v9, v10

    .end local v10           #j:I
    .restart local v9       #j:I
    goto/16 :goto_65
.end method

.method public static encodeQP(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)J
    .registers 15
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wssnps/base/smlMimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .local v0, current:B
    const/4 v7, 0x0

    .line 76
    .local v7, previous:B
    const/4 v4, 0x0

    .local v4, linelen:I
    const/4 v10, 0x0

    .local v10, written:I
    const/4 v3, 0x0

    .local v3, lastspace:I
    const/4 v6, 0x0

    .line 77
    .local v6, nullCount:I
    const/16 v11, 0x50

    new-array v2, v11, [B

    .line 81
    .local v2, l_bufenc:[B
    :goto_a
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 83
    .local v8, read:I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_19

    .line 85
    if-lez v4, :cond_17

    .line 87
    const/4 v11, 0x0

    invoke-virtual {p1, v2, v11, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 92
    :cond_17
    int-to-long v11, v10

    return-wide v11

    .line 95
    :cond_19
    const/16 v11, 0x4a

    if-le v4, v11, :cond_2a

    .line 97
    const/4 v11, 0x0

    invoke-virtual {p1, v2, v11, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 98
    sget-object v11, Lcom/wssnps/base/smlQP;->EQCRLF:[B

    invoke-virtual {p1, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 99
    add-int/lit8 v10, v10, 0x3

    .line 100
    const/4 v4, 0x0

    .line 101
    const/4 v7, 0x0

    .line 103
    :cond_2a
    int-to-byte v0, v8

    .line 105
    if-nez v0, :cond_32

    .line 107
    add-int/lit8 v6, v6, 0x1

    .line 108
    move v7, v0

    .line 109
    const/4 v3, 0x0

    .line 110
    goto :goto_a

    .line 112
    :cond_32
    if-lez v6, :cond_171

    .line 115
    const/4 v1, 0x1

    .local v1, idx:I
    move v5, v4

    .end local v4           #linelen:I
    .local v5, linelen:I
    :goto_36
    if-le v1, v6, :cond_5f

    .line 134
    const/4 v7, 0x0

    .line 135
    const/4 v6, 0x0

    .line 138
    .end local v1           #idx:I
    :goto_3a
    const/16 v11, 0x20

    if-le v0, v11, :cond_8e

    const/16 v11, 0x7f

    if-ge v0, v11, :cond_8e

    const/16 v11, 0x3d

    if-eq v0, v11, :cond_8e

    const/16 v11, 0x28

    if-eq v0, v11, :cond_8e

    const/16 v11, 0x29

    if-eq v0, v11, :cond_8e

    const/16 v11, 0x3b

    if-eq v0, v11, :cond_8e

    const/16 v11, 0x3a

    if-eq v0, v11, :cond_8e

    .line 142
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    aput-byte v0, v2, v5

    .line 144
    add-int/lit8 v10, v10, 0x1

    .line 145
    const/4 v3, 0x0

    .line 146
    move v7, v0

    goto :goto_a

    .line 117
    .end local v4           #linelen:I
    .restart local v1       #idx:I
    .restart local v5       #linelen:I
    :cond_5f
    const/4 v9, 0x0

    .line 118
    .local v9, tmp:B
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    const/16 v11, 0x3d

    aput-byte v11, v2, v5

    .line 119
    add-int/lit8 v5, v4, 0x1

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    sget-object v11, Lcom/wssnps/base/smlQP;->hexmap:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    aput-byte v11, v2, v4

    .line 120
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    sget-object v11, Lcom/wssnps/base/smlQP;->hexmap:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    aput-byte v11, v2, v5

    .line 123
    add-int/lit8 v10, v10, 0x3

    .line 125
    const/16 v11, 0x4a

    if-le v4, v11, :cond_8a

    .line 127
    const/4 v11, 0x0

    invoke-virtual {p1, v2, v11, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 128
    sget-object v11, Lcom/wssnps/base/smlQP;->EQCRLF:[B

    invoke-virtual {p1, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    add-int/lit8 v10, v10, 0x3

    .line 130
    const/4 v4, 0x0

    .line 115
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    goto :goto_36

    .line 148
    .end local v1           #idx:I
    .end local v9           #tmp:B
    :cond_8e
    const/16 v11, 0x20

    if-eq v0, v11, :cond_96

    const/16 v11, 0x9

    if-ne v0, v11, :cond_a0

    .line 151
    :cond_96
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    aput-byte v0, v2, v5

    .line 152
    add-int/lit8 v10, v10, 0x1

    .line 153
    const/4 v3, 0x1

    .line 154
    move v7, v0

    goto/16 :goto_a

    .line 156
    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    :cond_a0
    const/16 v11, 0xa

    if-ne v0, v11, :cond_ac

    const/16 v11, 0xd

    if-ne v7, v11, :cond_ac

    .line 159
    const/4 v7, 0x0

    move v4, v5

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    goto/16 :goto_a

    .line 161
    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    :cond_ac
    const/16 v11, 0xa

    if-ne v0, v11, :cond_eb

    .line 163
    const/4 v11, 0x1

    if-eq v3, v11, :cond_ba

    const/16 v11, 0x2e

    if-ne v7, v11, :cond_16e

    const/4 v11, 0x1

    if-ne v5, v11, :cond_16e

    .line 165
    :cond_ba
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    const/16 v11, 0x3d

    aput-byte v11, v2, v5

    .line 166
    add-int/lit8 v5, v4, 0x1

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    const/16 v11, 0xd

    aput-byte v11, v2, v4

    .line 167
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    const/16 v11, 0xa

    aput-byte v11, v2, v5

    .line 168
    add-int/lit8 v10, v10, 0x3

    .line 171
    :goto_ce
    add-int/lit8 v5, v4, 0x1

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    const/16 v11, 0x3d

    aput-byte v11, v2, v4

    .line 172
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    const/16 v11, 0x30

    aput-byte v11, v2, v5

    .line 173
    add-int/lit8 v5, v4, 0x1

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    const/16 v11, 0x41

    aput-byte v11, v2, v4

    .line 174
    const/4 v3, 0x0

    .line 175
    add-int/lit8 v10, v10, 0x3

    .line 177
    const/4 v11, 0x0

    invoke-virtual {p1, v2, v11, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 178
    const/4 v7, 0x0

    .line 179
    const/4 v4, 0x0

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    goto/16 :goto_a

    .line 181
    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    :cond_eb
    const/16 v11, 0xd

    if-ne v0, v11, :cond_124

    .line 185
    const/4 v11, 0x1

    if-eq v3, v11, :cond_f9

    const/16 v11, 0x2e

    if-ne v7, v11, :cond_16c

    const/4 v11, 0x1

    if-ne v5, v11, :cond_16c

    .line 187
    :cond_f9
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    const/16 v11, 0x3d

    aput-byte v11, v2, v5

    .line 188
    add-int/lit8 v5, v4, 0x1

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    const/16 v11, 0xd

    aput-byte v11, v2, v4

    .line 189
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    const/16 v11, 0xa

    aput-byte v11, v2, v5

    .line 190
    add-int/lit8 v10, v10, 0x3

    .line 193
    :goto_10d
    add-int/lit8 v5, v4, 0x1

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    const/16 v11, 0xd

    aput-byte v11, v2, v4

    .line 194
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    const/16 v11, 0xa

    aput-byte v11, v2, v5

    .line 195
    const/4 v3, 0x0

    .line 196
    add-int/lit8 v10, v10, 0x2

    .line 197
    const/4 v11, 0x0

    invoke-virtual {p1, v2, v11, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 198
    const/4 v7, 0x0

    .line 199
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 203
    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    :cond_124
    const/16 v11, 0x20

    if-lt v0, v11, :cond_140

    const/16 v11, 0x3d

    if-eq v0, v11, :cond_140

    const/16 v11, 0x7f

    if-ge v0, v11, :cond_140

    const/16 v11, 0x28

    if-eq v0, v11, :cond_140

    const/16 v11, 0x29

    if-eq v0, v11, :cond_140

    const/16 v11, 0x3b

    if-eq v0, v11, :cond_140

    const/16 v11, 0x3a

    if-ne v0, v11, :cond_162

    .line 209
    :cond_140
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    const/16 v11, 0x3d

    aput-byte v11, v2, v5

    .line 211
    add-int/lit8 v5, v4, 0x1

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    sget-object v11, Lcom/wssnps/base/smlQP;->hexmap:[B

    ushr-int/lit8 v12, v0, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-byte v11, v11, v12

    aput-byte v11, v2, v4

    .line 212
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    sget-object v11, Lcom/wssnps/base/smlQP;->hexmap:[B

    and-int/lit8 v12, v0, 0xf

    aget-byte v11, v11, v12

    aput-byte v11, v2, v5

    .line 213
    const/4 v3, 0x0

    .line 215
    add-int/lit8 v10, v10, 0x3

    .line 216
    move v7, v0

    goto/16 :goto_a

    .line 221
    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    :cond_162
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    aput-byte v0, v2, v5

    .line 222
    const/4 v3, 0x0

    .line 224
    add-int/lit8 v10, v10, 0x1

    .line 225
    move v7, v0

    .line 79
    goto/16 :goto_a

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    :cond_16c
    move v4, v5

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    goto :goto_10d

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    :cond_16e
    move v4, v5

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    goto/16 :goto_ce

    :cond_171
    move v5, v4

    .end local v4           #linelen:I
    .restart local v5       #linelen:I
    goto/16 :goto_3a
.end method

.method public static encodeQP(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wssnps/base/smlMimeException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 234
    .local v1, input:Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    .local v2, output:Ljava/io/ByteArrayOutputStream;
    :try_start_e
    invoke-static {v1, v2}, Lcom/wssnps/base/smlQP;->encodeQP(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)J
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_16

    .line 241
    :goto_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, ret:Ljava/lang/String;
    return-object v3

    .line 238
    .end local v3           #ret:Ljava/lang/String;
    :catch_16
    move-exception v0

    .line 239
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11
.end method
