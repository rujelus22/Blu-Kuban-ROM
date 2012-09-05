.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "BZip2CompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    }
.end annotation


# static fields
.field private static final EOF:I = 0x0

.field private static final NO_RAND_PART_A_STATE:I = 0x5

.field private static final NO_RAND_PART_B_STATE:I = 0x6

.field private static final NO_RAND_PART_C_STATE:I = 0x7

.field private static final RAND_PART_A_STATE:I = 0x2

.field private static final RAND_PART_B_STATE:I = 0x3

.field private static final RAND_PART_C_STATE:I = 0x4

.field private static final START_BLOCK_STATE:I = 0x1


# instance fields
.field private blockRandomised:Z

.field private blockSize100k:I

.field private bsBuff:I

.field private bsLive:I

.field private computedBlockCRC:I

.field private computedCombinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentChar:I

.field private currentState:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

.field private in:Ljava/io/InputStream;

.field private last:I

.field private nInUse:I

.field private origPtr:I

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private su_ch2:I

.field private su_chPrev:I

.field private su_count:I

.field private su_i2:I

.field private su_j2:I

.field private su_rNToGo:I

.field private su_rTPos:I

.field private su_tPos:I

.field private su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 60
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 111
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 112
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init()V

    .line 113
    return-void
.end method

.method private bsGetBit()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 348
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 349
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 351
    .local v0, bsBuffShadow:I
    if-ge v1, v3, :cond_1f

    .line 352
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 354
    .local v2, thech:I
    if-gez v2, :cond_17

    .line 355
    new-instance v3, Ljava/io/IOException;

    const-string v4, "unexpected end of stream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 358
    :cond_17
    shl-int/lit8 v4, v0, 0x8

    or-int v0, v4, v2

    .line 359
    add-int/lit8 v1, v1, 0x8

    .line 360
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 363
    .end local v2           #thech:I
    :cond_1f
    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 364
    add-int/lit8 v4, v1, -0x1

    shr-int v4, v0, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2c

    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method private bsGetInt()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 372
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private bsGetUByte()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private bsR(I)I
    .registers 8
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 325
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 327
    .local v0, bsBuffShadow:I
    if-ge v1, p1, :cond_20

    .line 328
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 330
    .local v2, inShadow:Ljava/io/InputStream;
    :cond_8
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 332
    .local v3, thech:I
    if-gez v3, :cond_16

    .line 333
    new-instance v4, Ljava/io/IOException;

    const-string v5, "unexpected end of stream"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 336
    :cond_16
    shl-int/lit8 v4, v0, 0x8

    or-int v0, v4, v3

    .line 337
    add-int/lit8 v1, v1, 0x8

    .line 338
    if-lt v1, p1, :cond_8

    .line 340
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 343
    .end local v2           #inShadow:Ljava/io/InputStream;
    .end local v3           #thech:I
    :cond_20
    sub-int v4, v1, p1

    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 344
    sub-int v4, v1, p1

    shr-int v4, v0, v4

    const/4 v5, 0x1

    shl-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    return v4
.end method

.method private checkMagicChar(CLjava/lang/String;)V
    .registers 7
    .parameter "expected"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 233
    .local v0, magic:I
    if-eq v0, p1, :cond_3c

    .line 234
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Stream is not BZip2 formatted: expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " byte but got \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_3c
    return-void
.end method

.method private complete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 304
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    if-eq v0, v1, :cond_1a

    .line 305
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1a
    return-void
.end method

.method private createHuffmanDecodingTables(II)V
    .registers 22
    .parameter "alphaSize"
    .parameter "nGroups"

    .prologue
    .line 502
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 503
    .local v10, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v12, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 504
    .local v12, len:[[C
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    move-object/from16 v16, v0

    .line 505
    .local v16, minLens:[I
    iget-object v15, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 506
    .local v15, limit:[[I
    iget-object v9, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 507
    .local v9, base:[[I
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    move-object/from16 v17, v0

    .line 509
    .local v17, perm:[[I
    const/16 v18, 0x0

    .local v18, t:I
    :goto_14
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_40

    .line 510
    const/16 v6, 0x20

    .line 511
    .local v6, minLen:I
    const/4 v7, 0x0

    .line 512
    .local v7, maxLen:I
    aget-object v13, v12, v18

    .line 513
    .local v13, len_t:[C
    move/from16 v11, p1

    .local v11, i:I
    :cond_21
    :goto_21
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_2e

    .line 514
    aget-char v14, v13, v11

    .line 515
    .local v14, lent:C
    if-le v14, v7, :cond_2a

    .line 516
    move v7, v14

    .line 518
    :cond_2a
    if-ge v14, v6, :cond_21

    .line 519
    move v6, v14

    goto :goto_21

    .line 522
    .end local v14           #lent:C
    :cond_2e
    aget-object v2, v15, v18

    aget-object v3, v9, v18

    aget-object v4, v17, v18

    aget-object v5, v12, v18

    move/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    .line 524
    aput v6, v16, v18

    .line 509
    add-int/lit8 v18, v18, 0x1

    goto :goto_14

    .line 526
    .end local v6           #minLen:I
    .end local v7           #maxLen:I
    .end local v11           #i:I
    .end local v13           #len_t:[C
    :cond_40
    return-void
.end method

.method private endBlock()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    .line 284
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    if-eq v0, v1, :cond_28

    .line 287
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 289
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 291
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_28
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 296
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 297
    return-void
.end method

.method private getAndMoveToFrontDecode()V
    .registers 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    const/16 v40, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 530
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->recvDecodingTables()V

    .line 532
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 533
    .local v15, inShadow:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 534
    .local v10, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    move-object/from16 v22, v0

    .line 535
    .local v22, ll8:[B
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    move-object/from16 v35, v0

    .line 536
    .local v35, unzftab:[I
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    move-object/from16 v31, v0

    .line 537
    .local v31, selector:[B
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    move-object/from16 v32, v0

    .line 538
    .local v32, seqToUnseq:[B
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    move-object/from16 v36, v0

    .line 539
    .local v36, yy:[C
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    move-object/from16 v23, v0

    .line 540
    .local v23, minLens:[I
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    move-object/from16 v19, v0

    .line 541
    .local v19, limit:[[I
    iget-object v5, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 542
    .local v5, base:[[I
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    move-object/from16 v27, v0

    .line 543
    .local v27, perm:[[I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    move/from16 v40, v0

    const v41, 0x186a0

    mul-int v20, v40, v41

    .line 550
    .local v20, limitLast:I
    const/16 v14, 0x100

    .local v14, i:I
    :goto_4a
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_58

    .line 551
    int-to-char v0, v14

    move/from16 v40, v0

    aput-char v40, v36, v14

    .line 552
    const/16 v40, 0x0

    aput v40, v35, v14

    goto :goto_4a

    .line 555
    :cond_58
    const/4 v12, 0x0

    .line 556
    .local v12, groupNo:I
    const/16 v13, 0x31

    .line 557
    .local v13, groupPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    move/from16 v40, v0

    add-int/lit8 v11, v40, 0x1

    .line 558
    .local v11, eob:I
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode0(I)I

    move-result v26

    .line 559
    .local v26, nextSym:I
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 560
    .local v7, bsBuffShadow:I
    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 561
    .local v8, bsLiveShadow:I
    const/16 v18, -0x1

    .line 562
    .local v18, lastShadow:I
    aget-byte v40, v31, v12

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    .line 563
    .local v38, zt:I
    aget-object v6, v5, v38

    .line 564
    .local v6, base_zt:[I
    aget-object v21, v19, v38

    .line 565
    .local v21, limit_zt:[I
    aget-object v28, v27, v38

    .line 566
    .local v28, perm_zt:[I
    aget v24, v23, v38

    .line 568
    .local v24, minLens_zt:I
    :cond_87
    :goto_87
    move/from16 v0, v26

    if-eq v0, v11, :cond_221

    .line 569
    if-eqz v26, :cond_95

    const/16 v40, 0x1

    move/from16 v0, v26

    move/from16 v1, v40

    if-ne v0, v1, :cond_153

    .line 570
    :cond_95
    const/16 v29, -0x1

    .line 572
    .local v29, s:I
    const/16 v25, 0x1

    .line 573
    .local v25, n:I
    :goto_99
    if-nez v26, :cond_c6

    .line 574
    add-int v29, v29, v25

    .line 581
    :goto_9d
    if-nez v13, :cond_d3

    .line 582
    const/16 v13, 0x31

    .line 583
    add-int/lit8 v12, v12, 0x1

    aget-byte v40, v31, v12

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    .line 584
    aget-object v6, v5, v38

    .line 585
    aget-object v21, v19, v38

    .line 586
    aget-object v28, v27, v38

    .line 587
    aget v24, v23, v38

    .line 592
    :goto_b3
    move/from16 v37, v24

    .line 596
    .local v37, zn:I
    :goto_b5
    move/from16 v0, v37

    if-ge v8, v0, :cond_de

    .line 597
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v33

    .line 598
    .local v33, thech:I
    if-ltz v33, :cond_d6

    .line 599
    shl-int/lit8 v40, v7, 0x8

    or-int v7, v40, v33

    .line 600
    add-int/lit8 v8, v8, 0x8

    .line 601
    goto :goto_b5

    .line 575
    .end local v33           #thech:I
    .end local v37           #zn:I
    :cond_c6
    const/16 v40, 0x1

    move/from16 v0, v26

    move/from16 v1, v40

    if-ne v0, v1, :cond_126

    .line 576
    shl-int/lit8 v40, v25, 0x1

    add-int v29, v29, v40

    goto :goto_9d

    .line 589
    :cond_d3
    add-int/lit8 v13, v13, -0x1

    goto :goto_b3

    .line 603
    .restart local v33       #thech:I
    .restart local v37       #zn:I
    :cond_d6
    new-instance v40, Ljava/io/IOException;

    const-string v41, "unexpected end of stream"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 606
    .end local v33           #thech:I
    :cond_de
    sub-int v40, v8, v37

    shr-int v40, v7, v40

    const/16 v41, 0x1

    shl-int v41, v41, v37

    add-int/lit8 v41, v41, -0x1

    and-int v39, v40, v41

    .line 608
    .local v39, zvec:I
    sub-int v8, v8, v37

    .line 610
    :goto_ec
    aget v40, v21, v37

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_11c

    .line 611
    add-int/lit8 v37, v37, 0x1

    .line 612
    :goto_f6
    const/16 v40, 0x1

    move/from16 v0, v40

    if-ge v8, v0, :cond_111

    .line 613
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v33

    .line 614
    .restart local v33       #thech:I
    if-ltz v33, :cond_109

    .line 615
    shl-int/lit8 v40, v7, 0x8

    or-int v7, v40, v33

    .line 616
    add-int/lit8 v8, v8, 0x8

    .line 617
    goto :goto_f6

    .line 619
    :cond_109
    new-instance v40, Ljava/io/IOException;

    const-string v41, "unexpected end of stream"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 623
    .end local v33           #thech:I
    :cond_111
    add-int/lit8 v8, v8, -0x1

    .line 624
    shl-int/lit8 v40, v39, 0x1

    shr-int v41, v7, v8

    and-int/lit8 v41, v41, 0x1

    or-int v39, v40, v41

    goto :goto_ec

    .line 627
    :cond_11c
    aget v40, v6, v37

    sub-int v40, v39, v40

    aget v26, v28, v40

    .line 572
    shl-int/lit8 v25, v25, 0x1

    goto/16 :goto_99

    .line 630
    .end local v37           #zn:I
    .end local v39           #zvec:I
    :cond_126
    const/16 v40, 0x0

    aget-char v40, v36, v40

    aget-byte v9, v32, v40

    .line 631
    .local v9, ch:B
    and-int/lit16 v0, v9, 0xff

    move/from16 v40, v0

    aget v41, v35, v40

    add-int/lit8 v42, v29, 0x1

    add-int v41, v41, v42

    aput v41, v35, v40

    move/from16 v30, v29

    .line 633
    .end local v29           #s:I
    .local v30, s:I
    :goto_13a
    add-int/lit8 v29, v30, -0x1

    .end local v30           #s:I
    .restart local v29       #s:I
    if-ltz v30, :cond_145

    .line 634
    add-int/lit8 v18, v18, 0x1

    aput-byte v9, v22, v18

    move/from16 v30, v29

    .end local v29           #s:I
    .restart local v30       #s:I
    goto :goto_13a

    .line 637
    .end local v30           #s:I
    .restart local v29       #s:I
    :cond_145
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_87

    .line 638
    new-instance v40, Ljava/io/IOException;

    const-string v41, "block overrun"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 641
    .end local v9           #ch:B
    .end local v25           #n:I
    .end local v29           #s:I
    :cond_153
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_163

    .line 642
    new-instance v40, Ljava/io/IOException;

    const-string v41, "block overrun"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 645
    :cond_163
    add-int/lit8 v40, v26, -0x1

    aget-char v34, v36, v40

    .line 646
    .local v34, tmp:C
    aget-byte v40, v32, v34

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    aget v41, v35, v40

    add-int/lit8 v41, v41, 0x1

    aput v41, v35, v40

    .line 647
    aget-byte v40, v32, v34

    aput-byte v40, v22, v18

    .line 654
    const/16 v40, 0x10

    move/from16 v0, v26

    move/from16 v1, v40

    if-gt v0, v1, :cond_190

    .line 655
    add-int/lit8 v16, v26, -0x1

    .local v16, j:I
    move/from16 v17, v16

    .end local v16           #j:I
    .local v17, j:I
    :goto_185
    if-lez v17, :cond_1a3

    .line 656
    add-int/lit8 v16, v17, -0x1

    .end local v17           #j:I
    .restart local v16       #j:I
    aget-char v40, v36, v16

    aput-char v40, v36, v17

    move/from16 v17, v16

    .end local v16           #j:I
    .restart local v17       #j:I
    goto :goto_185

    .line 659
    .end local v17           #j:I
    :cond_190
    const/16 v40, 0x0

    const/16 v41, 0x1

    add-int/lit8 v42, v26, -0x1

    move-object/from16 v0, v36

    move/from16 v1, v40

    move-object/from16 v2, v36

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    :cond_1a3
    const/16 v40, 0x0

    aput-char v34, v36, v40

    .line 664
    if-nez v13, :cond_1d0

    .line 665
    const/16 v13, 0x31

    .line 666
    add-int/lit8 v12, v12, 0x1

    aget-byte v40, v31, v12

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    .line 667
    aget-object v6, v5, v38

    .line 668
    aget-object v21, v19, v38

    .line 669
    aget-object v28, v27, v38

    .line 670
    aget v24, v23, v38

    .line 675
    :goto_1bd
    move/from16 v37, v24

    .line 679
    .restart local v37       #zn:I
    :goto_1bf
    move/from16 v0, v37

    if-ge v8, v0, :cond_1db

    .line 680
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v33

    .line 681
    .restart local v33       #thech:I
    if-ltz v33, :cond_1d3

    .line 682
    shl-int/lit8 v40, v7, 0x8

    or-int v7, v40, v33

    .line 683
    add-int/lit8 v8, v8, 0x8

    .line 684
    goto :goto_1bf

    .line 672
    .end local v33           #thech:I
    .end local v37           #zn:I
    :cond_1d0
    add-int/lit8 v13, v13, -0x1

    goto :goto_1bd

    .line 686
    .restart local v33       #thech:I
    .restart local v37       #zn:I
    :cond_1d3
    new-instance v40, Ljava/io/IOException;

    const-string v41, "unexpected end of stream"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 689
    .end local v33           #thech:I
    :cond_1db
    sub-int v40, v8, v37

    shr-int v40, v7, v40

    const/16 v41, 0x1

    shl-int v41, v41, v37

    add-int/lit8 v41, v41, -0x1

    and-int v39, v40, v41

    .line 691
    .restart local v39       #zvec:I
    sub-int v8, v8, v37

    .line 693
    :goto_1e9
    aget v40, v21, v37

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_219

    .line 694
    add-int/lit8 v37, v37, 0x1

    .line 695
    :goto_1f3
    const/16 v40, 0x1

    move/from16 v0, v40

    if-ge v8, v0, :cond_20e

    .line 696
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v33

    .line 697
    .restart local v33       #thech:I
    if-ltz v33, :cond_206

    .line 698
    shl-int/lit8 v40, v7, 0x8

    or-int v7, v40, v33

    .line 699
    add-int/lit8 v8, v8, 0x8

    .line 700
    goto :goto_1f3

    .line 702
    :cond_206
    new-instance v40, Ljava/io/IOException;

    const-string v41, "unexpected end of stream"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 705
    .end local v33           #thech:I
    :cond_20e
    add-int/lit8 v8, v8, -0x1

    .line 706
    shl-int/lit8 v40, v39, 0x1

    shr-int v41, v7, v8

    and-int/lit8 v41, v41, 0x1

    or-int v39, v40, v41

    goto :goto_1e9

    .line 708
    :cond_219
    aget v40, v6, v37

    sub-int v40, v39, v40

    aget v26, v28, v40

    .line 709
    goto/16 :goto_87

    .line 712
    .end local v34           #tmp:C
    .end local v37           #zn:I
    .end local v39           #zvec:I
    :cond_221
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 713
    move-object/from16 v0, p0

    iput v8, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 714
    move-object/from16 v0, p0

    iput v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 715
    return-void
.end method

.method private getAndMoveToFrontDecode0(I)I
    .registers 13
    .parameter "groupNo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 719
    .local v3, inShadow:Ljava/io/InputStream;
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 720
    .local v2, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    aget-byte v9, v9, p1

    and-int/lit16 v7, v9, 0xff

    .line 721
    .local v7, zt:I
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    aget-object v4, v9, v7

    .line 722
    .local v4, limit_zt:[I
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    aget v6, v9, v7

    .line 723
    .local v6, zn:I
    invoke-direct {p0, v6}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v8

    .line 724
    .local v8, zvec:I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 725
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 727
    .local v0, bsBuffShadow:I
    :goto_1a
    aget v9, v4, v6

    if-le v8, v9, :cond_43

    .line 728
    add-int/lit8 v6, v6, 0x1

    .line 729
    :goto_20
    const/4 v9, 0x1

    if-ge v1, v9, :cond_38

    .line 730
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 732
    .local v5, thech:I
    if-ltz v5, :cond_30

    .line 733
    shl-int/lit8 v9, v0, 0x8

    or-int v0, v9, v5

    .line 734
    add-int/lit8 v1, v1, 0x8

    .line 735
    goto :goto_20

    .line 737
    :cond_30
    new-instance v9, Ljava/io/IOException;

    const-string v10, "unexpected end of stream"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 740
    .end local v5           #thech:I
    :cond_38
    add-int/lit8 v1, v1, -0x1

    .line 741
    shl-int/lit8 v9, v8, 0x1

    shr-int v10, v0, v1

    and-int/lit8 v10, v10, 0x1

    or-int v8, v9, v10

    goto :goto_1a

    .line 744
    :cond_43
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 745
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 747
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    aget-object v9, v9, v7

    iget-object v10, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    aget-object v10, v10, v7

    aget v10, v10, v6

    sub-int v10, v8, v10

    aget v9, v9, v10

    return v9
.end method

.method private static hbCreateDecodeTables([I[I[I[CIII)V
    .registers 16
    .parameter "limit"
    .parameter "base"
    .parameter "perm"
    .parameter "length"
    .parameter "minLen"
    .parameter "maxLen"
    .parameter "alphaSize"

    .prologue
    .line 381
    move v1, p4

    .local v1, i:I
    const/4 v4, 0x0

    .local v4, pp:I
    :goto_2
    if-gt v1, p5, :cond_18

    .line 382
    const/4 v2, 0x0

    .local v2, j:I
    move v5, v4

    .end local v4           #pp:I
    .local v5, pp:I
    :goto_6
    if-ge v2, p6, :cond_14

    .line 383
    aget-char v7, p3, v2

    if-ne v7, v1, :cond_71

    .line 384
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pp:I
    .restart local v4       #pp:I
    aput v2, p2, v5

    .line 382
    :goto_10
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #pp:I
    .restart local v5       #pp:I
    goto :goto_6

    .line 381
    :cond_14
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    .end local v5           #pp:I
    .restart local v4       #pp:I
    goto :goto_2

    .line 389
    .end local v2           #j:I
    :cond_18
    const/16 v1, 0x17

    :goto_1a
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_25

    .line 390
    const/4 v7, 0x0

    aput v7, p1, v1

    .line 391
    const/4 v7, 0x0

    aput v7, p0, v1

    goto :goto_1a

    .line 394
    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-ge v1, p6, :cond_35

    .line 395
    aget-char v7, p3, v1

    add-int/lit8 v7, v7, 0x1

    aget v8, p1, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, p1, v7

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 398
    :cond_35
    const/4 v1, 0x1

    const/4 v7, 0x0

    aget v0, p1, v7

    .local v0, b:I
    :goto_39
    const/16 v7, 0x17

    if-ge v1, v7, :cond_45

    .line 399
    aget v7, p1, v1

    add-int/2addr v0, v7

    .line 400
    aput v0, p1, v1

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 403
    :cond_45
    move v1, p4

    const/4 v6, 0x0

    .local v6, vec:I
    aget v0, p1, v1

    :goto_49
    if-gt v1, p5, :cond_5c

    .line 404
    add-int/lit8 v7, v1, 0x1

    aget v3, p1, v7

    .line 405
    .local v3, nb:I
    sub-int v7, v3, v0

    add-int/2addr v6, v7

    .line 406
    move v0, v3

    .line 407
    add-int/lit8 v7, v6, -0x1

    aput v7, p0, v1

    .line 408
    shl-int/lit8 v6, v6, 0x1

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 411
    .end local v3           #nb:I
    :cond_5c
    add-int/lit8 v1, p4, 0x1

    :goto_5e
    if-gt v1, p5, :cond_70

    .line 412
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget v8, p1, v1

    sub-int/2addr v7, v8

    aput v7, p1, v1

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 414
    :cond_70
    return-void

    .end local v0           #b:I
    .end local v4           #pp:I
    .end local v6           #vec:I
    .restart local v2       #j:I
    .restart local v5       #pp:I
    :cond_71
    move v4, v5

    .end local v5           #pp:I
    .restart local v4       #pp:I
    goto :goto_10
.end method

.method private init()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_c

    .line 209
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No InputStream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_c
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-nez v1, :cond_1c

    .line 212
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Empty InputStream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_1c
    const/16 v1, 0x42

    const-string v2, "first"

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkMagicChar(CLjava/lang/String;)V

    .line 215
    const/16 v1, 0x5a

    const-string v2, "second"

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkMagicChar(CLjava/lang/String;)V

    .line 216
    const/16 v1, 0x68

    const-string v2, "third"

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkMagicChar(CLjava/lang/String;)V

    .line 218
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 219
    .local v0, blockSize:I
    const/16 v1, 0x31

    if-lt v0, v1, :cond_3f

    const/16 v1, 0x39

    if-le v0, v1, :cond_59

    .line 220
    :cond_3f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Stream is not BZip2 formatted: illegal blocksize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_59
    add-int/lit8 v1, v0, -0x30

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 226
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 227
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()V

    .line 228
    return-void
.end method

.method private initBlock()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x59

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 241
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v0

    .line 242
    .local v0, magic0:C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v1

    .line 243
    .local v1, magic1:C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v2

    .line 244
    .local v2, magic2:C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v3

    .line 245
    .local v3, magic3:C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v4

    .line 246
    .local v4, magic4:C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v5

    .line 248
    .local v5, magic5:C
    const/16 v8, 0x17

    if-ne v0, v8, :cond_38

    const/16 v8, 0x72

    if-ne v1, v8, :cond_38

    const/16 v8, 0x45

    if-ne v2, v8, :cond_38

    const/16 v8, 0x38

    if-ne v3, v8, :cond_38

    const/16 v8, 0x50

    if-ne v4, v8, :cond_38

    const/16 v8, 0x90

    if-ne v5, v8, :cond_38

    .line 250
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->complete()V

    .line 278
    :goto_37
    return-void

    .line 251
    :cond_38
    const/16 v8, 0x31

    if-ne v0, v8, :cond_4c

    const/16 v8, 0x41

    if-ne v1, v8, :cond_4c

    if-ne v2, v9, :cond_4c

    const/16 v8, 0x26

    if-ne v3, v8, :cond_4c

    const/16 v8, 0x53

    if-ne v4, v8, :cond_4c

    if-eq v5, v9, :cond_56

    .line 258
    :cond_4c
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 259
    new-instance v6, Ljava/io/IOException;

    const-string v7, "bad block header"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 261
    :cond_56
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt()I

    move-result v8

    iput v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    .line 262
    invoke-direct {p0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v8

    if-ne v8, v7, :cond_63

    move v6, v7

    :cond_63
    iput-boolean v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    .line 268
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v6, :cond_72

    .line 269
    new-instance v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    invoke-direct {v6, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;-><init>(I)V

    iput-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 273
    :cond_72
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode()V

    .line 275
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v6}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 276
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    goto :goto_37
.end method

.method private makeMaps()V
    .registers 7

    .prologue
    .line 155
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 156
    .local v1, inUse:[Z
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v4, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 158
    .local v4, seqToUnseq:[B
    const/4 v2, 0x0

    .line 160
    .local v2, nInUseShadow:I
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v2

    .end local v2           #nInUseShadow:I
    .local v3, nInUseShadow:I
    :goto_b
    const/16 v5, 0x100

    if-ge v0, v5, :cond_1c

    .line 161
    aget-boolean v5, v1, v0

    if-eqz v5, :cond_1f

    .line 162
    add-int/lit8 v2, v3, 0x1

    .end local v3           #nInUseShadow:I
    .restart local v2       #nInUseShadow:I
    int-to-byte v5, v0

    aput-byte v5, v4, v3

    .line 160
    :goto_18
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2           #nInUseShadow:I
    .restart local v3       #nInUseShadow:I
    goto :goto_b

    .line 165
    :cond_1c
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 166
    return-void

    :cond_1f
    move v2, v3

    .end local v3           #nInUseShadow:I
    .restart local v2       #nInUseShadow:I
    goto :goto_18
.end method

.method public static matches([BI)Z
    .registers 6
    .parameter "signature"
    .parameter "length"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 977
    const/4 v2, 0x3

    if-ge p1, v2, :cond_6

    .line 993
    :cond_5
    :goto_5
    return v0

    .line 981
    :cond_6
    aget-byte v2, p0, v0

    const/16 v3, 0x42

    if-ne v2, v3, :cond_5

    .line 985
    aget-byte v2, p0, v1

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_5

    .line 989
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 993
    goto :goto_5
.end method

.method private read0()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 171
    .local v0, retChar:I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    packed-switch v1, :pswitch_data_32

    .line 201
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 173
    :pswitch_d
    const/4 v0, -0x1

    .line 204
    .end local v0           #retChar:I
    :goto_e
    return v0

    .line 176
    .restart local v0       #retChar:I
    :pswitch_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 179
    :pswitch_15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 182
    :pswitch_1b
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartB()V

    goto :goto_e

    .line 186
    :pswitch_1f
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()V

    goto :goto_e

    .line 190
    :pswitch_23
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 193
    :pswitch_29
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartB()V

    goto :goto_e

    .line 197
    :pswitch_2d
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()V

    goto :goto_e

    .line 171
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_d
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method private recvDecodingTables()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 418
    .local v4, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v7, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 419
    .local v7, inUse:[Z
    iget-object v14, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 420
    .local v14, pos:[B
    iget-object v15, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 421
    .local v15, selector:[B
    iget-object v0, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    move-object/from16 v16, v0

    .line 423
    .local v16, selectorMtf:[B
    const/4 v8, 0x0

    .line 426
    .local v8, inUse16:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_10
    const/16 v20, 0x10

    move/from16 v0, v20

    if-ge v5, v0, :cond_25

    .line 427
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v20

    if-eqz v20, :cond_22

    .line 428
    const/16 v20, 0x1

    shl-int v20, v20, v5

    or-int v8, v8, v20

    .line 426
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 432
    :cond_25
    const/16 v5, 0x100

    :goto_27
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_30

    .line 433
    const/16 v20, 0x0

    aput-boolean v20, v7, v5

    goto :goto_27

    .line 436
    :cond_30
    const/4 v5, 0x0

    :goto_31
    const/16 v20, 0x10

    move/from16 v0, v20

    if-ge v5, v0, :cond_5a

    .line 437
    const/16 v20, 0x1

    shl-int v20, v20, v5

    and-int v20, v20, v8

    if-eqz v20, :cond_57

    .line 438
    shl-int/lit8 v6, v5, 0x4

    .line 439
    .local v6, i16:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_42
    const/16 v20, 0x10

    move/from16 v0, v20

    if-ge v9, v0, :cond_57

    .line 440
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v20

    if-eqz v20, :cond_54

    .line 441
    add-int v20, v6, v9

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 439
    :cond_54
    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    .line 436
    .end local v6           #i16:I
    .end local v9           #j:I
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 447
    :cond_5a
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->makeMaps()V

    .line 448
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    move/from16 v20, v0

    add-int/lit8 v2, v20, 0x2

    .line 451
    .local v2, alphaSize:I
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v12

    .line 452
    .local v12, nGroups:I
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v13

    .line 454
    .local v13, nSelectors:I
    const/4 v5, 0x0

    :goto_7a
    if-ge v5, v13, :cond_8e

    .line 455
    const/4 v9, 0x0

    .line 456
    .restart local v9       #j:I
    :goto_7d
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v20

    if-eqz v20, :cond_86

    .line 457
    add-int/lit8 v9, v9, 0x1

    goto :goto_7d

    .line 459
    :cond_86
    int-to-byte v0, v9

    move/from16 v20, v0

    aput-byte v20, v16, v5

    .line 454
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 463
    .end local v9           #j:I
    :cond_8e
    move/from16 v19, v12

    .local v19, v:I
    :goto_90
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_9c

    .line 464
    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v14, v19

    goto :goto_90

    .line 467
    :cond_9c
    const/4 v5, 0x0

    :goto_9d
    if-ge v5, v13, :cond_bd

    .line 468
    aget-byte v20, v16, v5

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 469
    aget-byte v18, v14, v19

    .line 470
    .local v18, tmp:B
    :goto_a9
    if-lez v19, :cond_b4

    .line 472
    add-int/lit8 v20, v19, -0x1

    aget-byte v20, v14, v20

    aput-byte v20, v14, v19

    .line 473
    add-int/lit8 v19, v19, -0x1

    goto :goto_a9

    .line 475
    :cond_b4
    const/16 v20, 0x0

    aput-byte v18, v14, v20

    .line 476
    aput-byte v18, v15, v5

    .line 467
    add-int/lit8 v5, v5, 0x1

    goto :goto_9d

    .line 479
    .end local v18           #tmp:B
    :cond_bd
    iget-object v10, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 482
    .local v10, len:[[C
    const/16 v17, 0x0

    .local v17, t:I
    :goto_c1
    move/from16 v0, v17

    if-ge v0, v12, :cond_f3

    .line 483
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v3

    .line 484
    .local v3, curr:I
    aget-object v11, v10, v17

    .line 485
    .local v11, len_t:[C
    const/4 v5, 0x0

    :goto_d2
    if-ge v5, v2, :cond_f0

    .line 486
    :goto_d4
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v20

    if-eqz v20, :cond_e8

    .line 487
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v20

    if-eqz v20, :cond_e5

    const/16 v20, -0x1

    :goto_e2
    add-int v3, v3, v20

    goto :goto_d4

    :cond_e5
    const/16 v20, 0x1

    goto :goto_e2

    .line 489
    :cond_e8
    int-to-char v0, v3

    move/from16 v20, v0

    aput-char v20, v11, v5

    .line 485
    add-int/lit8 v5, v5, 0x1

    goto :goto_d2

    .line 482
    :cond_f0
    add-int/lit8 v17, v17, 0x1

    goto :goto_c1

    .line 494
    .end local v3           #curr:I
    .end local v11           #len_t:[C
    :cond_f3
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->createHuffmanDecodingTables(II)V

    .line 495
    return-void
.end method

.method private setupBlock()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x100

    const/4 v9, 0x0

    .line 751
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v6, :cond_8

    .line 786
    :goto_7
    return-void

    .line 755
    :cond_8
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 756
    .local v1, cftab:[I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->initTT(I)[I

    move-result-object v5

    .line 757
    .local v5, tt:[I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v4, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 758
    .local v4, ll8:[B
    aput v9, v1, v9

    .line 759
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v6, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    const/4 v7, 0x1

    invoke-static {v6, v9, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    const/4 v2, 0x1

    .local v2, i:I
    aget v0, v1, v9

    .local v0, c:I
    :goto_27
    if-gt v2, v10, :cond_31

    .line 762
    aget v6, v1, v2

    add-int/2addr v0, v6

    .line 763
    aput v0, v1, v2

    .line 761
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 766
    :cond_31
    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .local v3, lastShadow:I
    :goto_34
    if-gt v2, v3, :cond_45

    .line 767
    aget-byte v6, v4, v2

    and-int/lit16 v6, v6, 0xff

    aget v7, v1, v6

    add-int/lit8 v8, v7, 0x1

    aput v8, v1, v6

    aput v2, v5, v7

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 770
    :cond_45
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    if-ltz v6, :cond_4e

    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    array-length v7, v5

    if-lt v6, v7, :cond_56

    .line 771
    :cond_4e
    new-instance v6, Ljava/io/IOException;

    const-string v7, "stream corrupted"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 774
    :cond_56
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    aget v6, v5, v6

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 775
    iput v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 776
    iput v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 777
    iput v10, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 779
    iget-boolean v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    if-eqz v6, :cond_6e

    .line 780
    iput v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 781
    iput v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 782
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()V

    goto :goto_7

    .line 784
    :cond_6e
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()V

    goto :goto_7
.end method

.method private setupNoRandPartA()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v1, v2, :cond_31

    .line 815
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 816
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 817
    .local v0, su_ch2Shadow:I
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 818
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 819
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 820
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 821
    const/4 v1, 0x6

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 822
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 829
    .end local v0           #su_ch2Shadow:I
    :goto_30
    return-void

    .line 824
    :cond_31
    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 825
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 826
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 827
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()V

    goto :goto_30
.end method

.method private setupNoRandPartB()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    if-eq v0, v1, :cond_d

    .line 874
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 875
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()V

    .line 884
    :goto_c
    return-void

    .line 876
    :cond_d
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_34

    .line 877
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 878
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 879
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 880
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()V

    goto :goto_c

    .line 882
    :cond_34
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()V

    goto :goto_c
.end method

.method private setupNoRandPartC()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v1, v2, :cond_19

    .line 888
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 889
    .local v0, su_ch2Shadow:I
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 890
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 891
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 892
    const/4 v1, 0x7

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 898
    .end local v0           #su_ch2Shadow:I
    :goto_18
    return-void

    .line 894
    :cond_19
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 895
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 896
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()V

    goto :goto_18
.end method

.method private setupRandPartA()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 789
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v3, v4, :cond_5b

    .line 790
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 791
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v3, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 792
    .local v0, su_ch2Shadow:I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v3, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v3, v3, v4

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 793
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-nez v3, :cond_52

    .line 794
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 795
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v3, v4, :cond_3a

    .line 796
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 801
    :cond_3a
    :goto_3a
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v3, v1, :cond_59

    :goto_3e
    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 802
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 803
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 804
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 805
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 811
    .end local v0           #su_ch2Shadow:I
    :goto_51
    return-void

    .line 799
    .restart local v0       #su_ch2Shadow:I
    :cond_52
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    goto :goto_3a

    :cond_59
    move v1, v2

    .line 801
    goto :goto_3e

    .line 807
    .end local v0           #su_ch2Shadow:I
    :cond_5b
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 808
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 809
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()V

    goto :goto_51
.end method

.method private setupRandPartB()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 832
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    if-eq v0, v1, :cond_12

    .line 833
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 834
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 835
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()V

    .line 857
    :goto_11
    return-void

    .line 836
    :cond_12
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    if-lt v0, v5, :cond_65

    .line 837
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 838
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 839
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-nez v0, :cond_5e

    .line 840
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 841
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_4b

    .line 842
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 847
    :cond_4b
    :goto_4b
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 848
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 849
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_5a

    .line 850
    iget-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    xor-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 852
    :cond_5a
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()V

    goto :goto_11

    .line 845
    :cond_5e
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    goto :goto_4b

    .line 854
    :cond_65
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 855
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()V

    goto :goto_11
.end method

.method private setupRandPartC()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_18

    .line 861
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 862
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 863
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 870
    :goto_17
    return-void

    .line 865
    :cond_18
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 866
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 867
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 868
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()V

    goto :goto_17
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 311
    .local v0, inShadow:Ljava/io/InputStream;
    if-eqz v0, :cond_10

    .line 313
    :try_start_5
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_c

    .line 314
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_11

    .line 317
    :cond_c
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 318
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 321
    :cond_10
    return-void

    .line 317
    :catchall_11
    move-exception v1

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 318
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    throw v1
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 118
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v0

    return v0

    .line 120
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .registers 11
    .parameter "dest"
    .parameter "offs"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    if-gez p2, :cond_21

    .line 132
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "offs("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ") < 0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_21
    if-gez p3, :cond_42

    .line 135
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "len("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ") < 0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_42
    add-int v4, p2, p3

    array-length v5, p1

    if-le v4, v5, :cond_7b

    .line 138
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "offs("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ") + len("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ") > dest.length("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_7b
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    if-nez v4, :cond_87

    .line 142
    new-instance v4, Ljava/io/IOException;

    const-string v5, "stream closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_87
    add-int v3, p2, p3

    .line 146
    .local v3, hi:I
    move v1, p2

    .local v1, destOffs:I
    move v2, v1

    .line 147
    .end local v1           #destOffs:I
    .local v2, destOffs:I
    :goto_8b
    if-ge v2, v3, :cond_9a

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v0

    .local v0, b:I
    if-ltz v0, :cond_9a

    .line 148
    add-int/lit8 v1, v2, 0x1

    .end local v2           #destOffs:I
    .restart local v1       #destOffs:I
    int-to-byte v4, v0

    aput-byte v4, p1, v2

    move v2, v1

    .end local v1           #destOffs:I
    .restart local v2       #destOffs:I
    goto :goto_8b

    .line 151
    .end local v0           #b:I
    :cond_9a
    if-ne v2, p2, :cond_9e

    const/4 v4, -0x1

    :goto_9d
    return v4

    :cond_9e
    sub-int v4, v2, p2

    goto :goto_9d
.end method
