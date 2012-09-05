.class public Lcom/syncmldstmo/base/smlQP;
.super Ljava/lang/Object;
.source "smlQP.java"


# static fields
.field private static final EQCRLF:[B

.field private static final hexmap:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "=\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/syncmldstmo/base/smlQP;->EQCRLF:[B

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 54
    sput-object v0, Lcom/syncmldstmo/base/smlQP;->hexmap:[B

    .line 35
    return-void

    .line 55
    :array_12
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
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeQP(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/syncmldstmo/base/smlMimeException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, decodedString:Ljava/lang/String;
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 287
    const/4 v2, 0x0

    .line 298
    :goto_8
    return-object v2

    .line 291
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/String;

    .end local v0           #decodedString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlQP;->decodeQP([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_18

    .restart local v0       #decodedString:Ljava/lang/String;
    move-object v2, v0

    .line 298
    goto :goto_8

    .line 293
    .end local v0           #decodedString:Ljava/lang/String;
    :catch_18
    move-exception v1

    .line 295
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lcom/syncmldstmo/base/smlMimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/syncmldstmo/base/smlMimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static decodeQP([B)[B
    .registers 2
    .parameter "bytesIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/syncmldstmo/base/smlMimeException;
        }
    .end annotation

    .prologue
    .line 309
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/syncmldstmo/base/smlQP;->decodeQP([BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected static decodeQP([BI)[B
    .registers 26
    .parameter "bytesIn"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/syncmldstmo/base/smlMimeException;
        }
    .end annotation

    .prologue
    .line 347
    if-nez p0, :cond_a

    .line 348
    new-instance v19, Lcom/syncmldstmo/base/smlMimeException;

    const-string v20, "Error: Bad parameter"

    invoke-direct/range {v19 .. v20}, Lcom/syncmldstmo/base/smlMimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 350
    :cond_a
    add-int/lit8 v19, p1, 0x1

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 351
    .local v16, res:[B
    move-object/from16 v18, p0

    .line 352
    .local v18, src:[B
    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 354
    .local v14, nl:[B
    const/4 v11, 0x0

    .local v11, last:I
    const/4 v9, 0x0

    .line 356
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

    if-lt v7, v0, :cond_37

    .line 409
    new-array v0, v10, [B

    move-object/from16 v17, v0

    .line 411
    .local v17, res2:[B
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    return-object v17

    .line 358
    .end local v17           #res2:[B
    :cond_37
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    aget-byte v4, v18, v7

    .line 360
    .local v4, ch:B
    const/16 v19, 0x3d

    move/from16 v0, v19

    if-ne v4, v0, :cond_cc

    .line 362
    aget-byte v19, v18, v6

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_55

    aget-byte v19, v18, v6

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_74

    .line 364
    :cond_55
    add-int/lit8 v6, v6, 0x1

    .line 366
    add-int/lit8 v19, v6, -0x1

    aget-byte v19, v18, v19

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_120

    aget-byte v19, v18, v6

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_120

    .line 367
    add-int/lit8 v6, v6, 0x1

    move v9, v10

    .line 387
    .end local v10           #j:I
    .restart local v9       #j:I
    :goto_70
    move v11, v9

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    move v10, v9

    .end local v9           #j:I
    .restart local v10       #j:I
    goto :goto_1f

    .line 373
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_74
    aget-byte v19, v18, v6

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .local v5, hi:I
    add-int/lit8 v19, v6, 0x1

    aget-byte v19, v18, v19

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    .line 375
    .local v13, lo:I
    or-int v19, v5, v13

    if-gez v19, :cond_be

    .line 376
    new-instance v19, Lcom/syncmldstmo/base/smlMimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/String;

    add-int/lit8 v22, v6, -0x1

    const/16 v23, 0x3

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "is an invalid code"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/syncmldstmo/base/smlMimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 379
    :cond_be
    shl-int/lit8 v19, v5, 0x4

    or-int v19, v19, v13

    move/from16 v0, v19

    int-to-byte v15, v0

    .line 380
    .local v15, repl:B
    add-int/lit8 v6, v6, 0x2

    .line 383
    add-int/lit8 v9, v10, 0x1

    .end local v10           #j:I
    .restart local v9       #j:I
    aput-byte v15, v16, v10

    goto :goto_70

    .line 389
    .end local v5           #hi:I
    .end local v9           #j:I
    .end local v13           #lo:I
    .end local v15           #repl:B
    .restart local v10       #j:I
    :cond_cc
    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v4, v0, :cond_d8

    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v4, v0, :cond_107

    .line 391
    :cond_d8
    add-int/lit8 v19, v6, -0x1

    aget-byte v19, v18, v19

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f0

    aget-byte v19, v18, v6

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f0

    .line 392
    add-int/lit8 v6, v6, 0x1

    .line 394
    :cond_f0
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_f1
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v8, v0, :cond_fd

    .line 397
    move v9, v11

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
    :cond_fd
    add-int/lit8 v12, v11, 0x1

    .end local v11           #last:I
    .local v12, last:I
    aget-byte v19, v14, v8

    aput-byte v19, v16, v11

    .line 394
    add-int/lit8 v8, v8, 0x1

    move v11, v12

    .end local v12           #last:I
    .restart local v11       #last:I
    goto :goto_f1

    .line 402
    .end local v8           #idx:I
    :cond_107
    add-int/lit8 v9, v10, 0x1

    .end local v10           #j:I
    .restart local v9       #j:I
    aput-byte v4, v16, v10

    .line 404
    const/16 v19, 0x20

    move/from16 v0, v19

    if-eq v4, v0, :cond_11c

    const/16 v19, 0x9

    move/from16 v0, v19

    if-eq v4, v0, :cond_11c

    .line 405
    move v11, v9

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    move v10, v9

    .end local v9           #j:I
    .restart local v10       #j:I
    goto/16 :goto_1f

    .end local v7           #i:I
    .end local v10           #j:I
    .restart local v6       #i:I
    .restart local v9       #j:I
    :cond_11c
    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    move v10, v9

    .end local v9           #j:I
    .restart local v10       #j:I
    goto/16 :goto_1f

    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_120
    move v9, v10

    .end local v10           #j:I
    .restart local v9       #j:I
    goto/16 :goto_70
.end method

.method public static encodeQP(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)J
    .registers 15
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/syncmldstmo/base/smlMimeException;,
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
    sget-object v11, Lcom/syncmldstmo/base/smlQP;->EQCRLF:[B

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
    sget-object v11, Lcom/syncmldstmo/base/smlQP;->hexmap:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    aput-byte v11, v2, v4

    .line 120
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    sget-object v11, Lcom/syncmldstmo/base/smlQP;->hexmap:[B

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
    sget-object v11, Lcom/syncmldstmo/base/smlQP;->EQCRLF:[B

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
    sget-object v11, Lcom/syncmldstmo/base/smlQP;->hexmap:[B

    ushr-int/lit8 v12, v0, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-byte v11, v11, v12

    aput-byte v11, v2, v4

    .line 212
    add-int/lit8 v4, v5, 0x1

    .end local v5           #linelen:I
    .restart local v4       #linelen:I
    sget-object v11, Lcom/syncmldstmo/base/smlQP;->hexmap:[B

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
            Lcom/syncmldstmo/base/smlMimeException;
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

    .line 237
    .local v2, output:Ljava/io/ByteArrayOutputStream;
    :try_start_e
    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlQP;->encodeQP(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)J
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_16

    .line 244
    :goto_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, ret:Ljava/lang/String;
    return-object v3

    .line 240
    .end local v3           #ret:Ljava/lang/String;
    :catch_16
    move-exception v0

    .line 242
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_11
.end method
