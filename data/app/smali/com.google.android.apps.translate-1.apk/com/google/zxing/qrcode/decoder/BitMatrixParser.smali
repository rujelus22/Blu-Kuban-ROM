.class final Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final bitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 5
    .parameter "bitMatrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getDimension()I

    move-result v0

    .line 37
    .local v0, dimension:I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    .line 38
    :cond_10
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 40
    :cond_15
    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 41
    return-void
.end method

.method private copyBit(III)I
    .registers 5
    .parameter "i"
    .parameter "j"
    .parameter "versionBits"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    if-eqz v0, :cond_d

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    shl-int/lit8 v0, p3, 0x1

    goto :goto_c
.end method


# virtual methods
.method readCodewords()[B
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v8

    .line 152
    .local v8, formatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v16

    .line 156
    .local v16, version:Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/DataMask;->forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v6

    .line 157
    .local v6, dataMask:Lcom/google/zxing/qrcode/decoder/DataMask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getDimension()I

    move-result v7

    .line 158
    .local v7, dimension:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v7}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    .line 160
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    .line 162
    .local v9, functionPattern:Lcom/google/zxing/common/BitMatrix;
    const/4 v12, 0x1

    .line 163
    .local v12, readingUp:Z
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [B

    .line 164
    .local v13, result:[B
    const/4 v14, 0x0

    .line 165
    .local v14, resultOffset:I
    const/4 v5, 0x0

    .line 166
    .local v5, currentByte:I
    const/4 v2, 0x0

    .line 168
    .local v2, bitsRead:I
    add-int/lit8 v11, v7, -0x1

    .local v11, j:I
    :goto_37
    if-lez v11, :cond_92

    .line 169
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v11, v0, :cond_41

    .line 172
    add-int/lit8 v11, v11, -0x1

    .line 175
    :cond_41
    const/4 v4, 0x0

    .local v4, count:I
    :goto_42
    if-ge v4, v7, :cond_8d

    .line 176
    if-eqz v12, :cond_87

    add-int/lit8 v17, v7, -0x1

    sub-int v10, v17, v4

    .line 177
    .local v10, i:I
    :goto_4a
    const/4 v3, 0x0

    .local v3, col:I
    move v15, v14

    .end local v14           #resultOffset:I
    .local v15, resultOffset:I
    :goto_4c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v3, v0, :cond_89

    .line 179
    sub-int v17, v11, v3

    move/from16 v0, v17

    invoke-virtual {v9, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-nez v17, :cond_a0

    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 182
    shl-int/lit8 v5, v5, 0x1

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    sub-int v18, v11, v3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-eqz v17, :cond_74

    .line 184
    or-int/lit8 v5, v5, 0x1

    .line 187
    :cond_74
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_a0

    .line 188
    add-int/lit8 v14, v15, 0x1

    .end local v15           #resultOffset:I
    .restart local v14       #resultOffset:I
    int-to-byte v0, v5

    move/from16 v17, v0

    aput-byte v17, v13, v15

    .line 189
    const/4 v2, 0x0

    .line 190
    const/4 v5, 0x0

    .line 177
    :goto_83
    add-int/lit8 v3, v3, 0x1

    move v15, v14

    .end local v14           #resultOffset:I
    .restart local v15       #resultOffset:I
    goto :goto_4c

    .end local v3           #col:I
    .end local v10           #i:I
    .end local v15           #resultOffset:I
    .restart local v14       #resultOffset:I
    :cond_87
    move v10, v4

    .line 176
    goto :goto_4a

    .line 175
    .end local v14           #resultOffset:I
    .restart local v3       #col:I
    .restart local v10       #i:I
    .restart local v15       #resultOffset:I
    :cond_89
    add-int/lit8 v4, v4, 0x1

    move v14, v15

    .end local v15           #resultOffset:I
    .restart local v14       #resultOffset:I
    goto :goto_42

    .line 195
    .end local v3           #col:I
    .end local v10           #i:I
    :cond_8d
    xor-int/lit8 v12, v12, 0x1

    .line 168
    add-int/lit8 v11, v11, -0x2

    goto :goto_37

    .line 197
    .end local v4           #count:I
    :cond_92
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    if-eq v14, v0, :cond_9f

    .line 198
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v17

    throw v17

    .line 200
    :cond_9f
    return-object v13

    .end local v14           #resultOffset:I
    .restart local v3       #col:I
    .restart local v4       #count:I
    .restart local v10       #i:I
    .restart local v15       #resultOffset:I
    :cond_a0
    move v14, v15

    .end local v15           #resultOffset:I
    .restart local v14       #resultOffset:I
    goto :goto_83
.end method

.method readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/16 v7, 0x8

    .line 52
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_a

    .line 53
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 83
    :goto_9
    return-object v6

    .line 57
    :cond_a
    const/4 v1, 0x0

    .line 58
    .local v1, formatInfoBits1:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    const/4 v6, 0x6

    if-ge v3, v6, :cond_16

    .line 59
    invoke-direct {p0, v3, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 62
    :cond_16
    invoke-direct {p0, v8, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 63
    invoke-direct {p0, v7, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 64
    invoke-direct {p0, v7, v8, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 66
    const/4 v5, 0x5

    .local v5, j:I
    :goto_23
    if-ltz v5, :cond_2c

    .line 67
    invoke-direct {p0, v7, v5, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 66
    add-int/lit8 v5, v5, -0x1

    goto :goto_23

    .line 71
    :cond_2c
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getDimension()I

    move-result v0

    .line 72
    .local v0, dimension:I
    const/4 v2, 0x0

    .line 73
    .local v2, formatInfoBits2:I
    add-int/lit8 v4, v0, -0x8

    .line 74
    .local v4, iMin:I
    add-int/lit8 v3, v0, -0x1

    :goto_37
    if-lt v3, v4, :cond_40

    .line 75
    invoke-direct {p0, v3, v7, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 74
    add-int/lit8 v3, v3, -0x1

    goto :goto_37

    .line 77
    :cond_40
    add-int/lit8 v5, v0, -0x7

    :goto_42
    if-ge v5, v0, :cond_4b

    .line 78
    invoke-direct {p0, v7, v5, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 81
    :cond_4b
    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 82
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_58

    .line 83
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    goto :goto_9

    .line 85
    :cond_58
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6
.end method

.method readVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v6, :cond_7

    .line 98
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 132
    :goto_6
    return-object v6

    .line 101
    :cond_7
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getDimension()I

    move-result v0

    .line 103
    .local v0, dimension:I
    add-int/lit8 v6, v0, -0x11

    shr-int/lit8 v4, v6, 0x2

    .line 104
    .local v4, provisionalVersion:I
    const/4 v6, 0x6

    if-gt v4, v6, :cond_19

    .line 105
    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v6

    goto :goto_6

    .line 109
    :cond_19
    const/4 v5, 0x0

    .line 110
    .local v5, versionBits:I
    add-int/lit8 v2, v0, -0xb

    .line 111
    .local v2, ijMin:I
    const/4 v3, 0x5

    .local v3, j:I
    :goto_1d
    if-ltz v3, :cond_2d

    .line 112
    add-int/lit8 v1, v0, -0x9

    .local v1, i:I
    :goto_21
    if-lt v1, v2, :cond_2a

    .line 113
    invoke-direct {p0, v1, v3, v5}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v5

    .line 112
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 111
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 117
    .end local v1           #i:I
    :cond_2d
    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 118
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v6, :cond_42

    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v6

    if-ne v6, v0, :cond_42

    .line 119
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    goto :goto_6

    .line 123
    :cond_42
    const/4 v5, 0x0

    .line 124
    const/4 v1, 0x5

    .restart local v1       #i:I
    :goto_44
    if-ltz v1, :cond_54

    .line 125
    add-int/lit8 v3, v0, -0x9

    :goto_48
    if-lt v3, v2, :cond_51

    .line 126
    invoke-direct {p0, v1, v3, v5}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v5

    .line 125
    add-int/lit8 v3, v3, -0x1

    goto :goto_48

    .line 124
    :cond_51
    add-int/lit8 v1, v1, -0x1

    goto :goto_44

    .line 130
    :cond_54
    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 131
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v6, :cond_69

    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v6

    if-ne v6, v0, :cond_69

    .line 132
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    goto :goto_6

    .line 134
    :cond_69
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6
.end method
