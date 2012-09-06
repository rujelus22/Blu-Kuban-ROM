.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .registers 3
    .parameter "numDataCodewords"
    .parameter "codewords"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .registers 26
    .parameter "rawCodewords"
    .parameter "version"
    .parameter "ecLevel"

    .prologue
    .line 51
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_15

    .line 52
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 57
    :cond_15
    invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v4

    .line 60
    .local v4, ecBlocks:Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    const/16 v20, 0x0

    .line 61
    .local v20, totalBlocks:I
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    .line 62
    .local v3, ecBlockArray:[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_20
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_32

    .line 63
    aget-object v21, v3, v5

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v21

    add-int v20, v20, v21

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 67
    :cond_32
    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-object/from16 v17, v0

    .line 68
    .local v17, result:[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v13, 0x0

    .line 69
    .local v13, numResultBlocks:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3a
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_6e

    .line 70
    aget-object v2, v3, v7

    .line 71
    .local v2, ecBlock:Lcom/google/zxing/qrcode/decoder/Version$ECB;
    const/4 v5, 0x0

    :goto_44
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_6b

    .line 72
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v12

    .line 73
    .local v12, numDataCodewords:I
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v21

    add-int v10, v21, v12

    .line 74
    .local v10, numBlockCodewords:I
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numResultBlocks:I
    .local v14, numResultBlocks:I
    new-instance v21, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v0, v10, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v21, v17, v13

    .line 71
    add-int/lit8 v5, v5, 0x1

    move v13, v14

    .end local v14           #numResultBlocks:I
    .restart local v13       #numResultBlocks:I
    goto :goto_44

    .line 69
    .end local v10           #numBlockCodewords:I
    .end local v12           #numDataCodewords:I
    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 80
    .end local v2           #ecBlock:Lcom/google/zxing/qrcode/decoder/Version$ECB;
    :cond_6e
    const/16 v21, 0x0

    aget-object v21, v17, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v19, v0

    .line 81
    .local v19, shorterBlocksTotalCodewords:I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v8, v21, -0x1

    .line 82
    .local v8, longerBlocksStartAt:I
    :goto_84
    if-ltz v8, :cond_95

    .line 83
    aget-object v21, v17, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v11, v0

    .line 84
    .local v11, numCodewords:I
    move/from16 v0, v19

    if-ne v11, v0, :cond_bb

    .line 89
    .end local v11           #numCodewords:I
    :cond_95
    add-int/lit8 v8, v8, 0x1

    .line 91
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v21

    sub-int v18, v19, v21

    .line 94
    .local v18, shorterBlocksNumDataCodewords:I
    const/4 v15, 0x0

    .line 95
    .local v15, rawCodewordsOffset:I
    const/4 v5, 0x0

    :goto_9f
    move/from16 v0, v18

    if-ge v5, v0, :cond_c3

    .line 96
    const/4 v7, 0x0

    move/from16 v16, v15

    .end local v15           #rawCodewordsOffset:I
    .local v16, rawCodewordsOffset:I
    :goto_a6
    if-ge v7, v13, :cond_be

    .line 97
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16           #rawCodewordsOffset:I
    .restart local v15       #rawCodewordsOffset:I
    aget-byte v22, p0, v16

    aput-byte v22, v21, v5

    .line 96
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    goto :goto_a6

    .line 87
    .end local v16           #rawCodewordsOffset:I
    .end local v18           #shorterBlocksNumDataCodewords:I
    .restart local v11       #numCodewords:I
    :cond_bb
    add-int/lit8 v8, v8, -0x1

    .line 88
    goto :goto_84

    .line 95
    .end local v11           #numCodewords:I
    .restart local v16       #rawCodewordsOffset:I
    .restart local v18       #shorterBlocksNumDataCodewords:I
    :cond_be
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    .end local v16           #rawCodewordsOffset:I
    .restart local v15       #rawCodewordsOffset:I
    goto :goto_9f

    .line 101
    :cond_c3
    move v7, v8

    move/from16 v16, v15

    .end local v15           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    :goto_c6
    if-ge v7, v13, :cond_db

    .line 102
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16           #rawCodewordsOffset:I
    .restart local v15       #rawCodewordsOffset:I
    aget-byte v22, p0, v16

    aput-byte v22, v21, v18

    .line 101
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    goto :goto_c6

    .line 105
    :cond_db
    const/16 v21, 0x0

    aget-object v21, v17, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v9, v0

    .line 106
    .local v9, max:I
    move/from16 v5, v18

    move/from16 v15, v16

    .end local v16           #rawCodewordsOffset:I
    .restart local v15       #rawCodewordsOffset:I
    :goto_ec
    if-ge v5, v9, :cond_111

    .line 107
    const/4 v7, 0x0

    move/from16 v16, v15

    .end local v15           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    :goto_f1
    if-ge v7, v13, :cond_10c

    .line 108
    if-ge v7, v8, :cond_109

    move v6, v5

    .line 109
    .local v6, iOffset:I
    :goto_f6
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16           #rawCodewordsOffset:I
    .restart local v15       #rawCodewordsOffset:I
    aget-byte v22, p0, v16

    aput-byte v22, v21, v6

    .line 107
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15           #rawCodewordsOffset:I
    .restart local v16       #rawCodewordsOffset:I
    goto :goto_f1

    .line 108
    .end local v6           #iOffset:I
    :cond_109
    add-int/lit8 v6, v5, 0x1

    goto :goto_f6

    .line 106
    :cond_10c
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    .end local v16           #rawCodewordsOffset:I
    .restart local v15       #rawCodewordsOffset:I
    goto :goto_ec

    .line 112
    :cond_111
    return-object v17
.end method


# virtual methods
.method getCodewords()[B
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
