.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field protected static final INTEGER_MATH_SHIFT:I = 0x8

.field protected static final PATTERN_MATCH_RESULT_SCALE_FACTOR:I = 0x100


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;Z)Lcom/google/zxing/Result;
    .registers 26
    .parameter "image"
    .parameter "hints"
    .parameter "bidirect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v20

    .line 104
    .local v20, width:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v9

    .line 105
    .local v9, height:I
    new-instance v3, Lcom/google/zxing/common/BitArray;

    move/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 107
    .local v3, row:Lcom/google/zxing/common/BitArray;
    shr-int/lit8 v14, v9, 0x1

    .line 108
    .local v14, middle:I
    if-eqz p2, :cond_94

    sget-object v1, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    const/16 v19, 0x1

    .line 110
    .local v19, tryHarder:Z
    :goto_1f
    const/4 v5, 0x1

    if-eqz v19, :cond_97

    const/16 v1, 0x8

    :goto_24
    shr-int v1, v9, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 112
    .local v17, rowStep:I
    if-eqz v19, :cond_99

    .line 113
    move v11, v9

    .line 119
    .local v11, maxLines:I
    :goto_2d
    const/4 v7, 0x1

    .line 120
    .local v7, confidenceLevel:I
    if-eqz p2, :cond_48

    sget-object v1, Lcom/google/zxing/DecodeHintType;->CONFIDENCE_LEVEL:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 121
    sget-object v1, Lcom/google/zxing/DecodeHintType;->CONFIDENCE_LEVEL:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 124
    :cond_48
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 125
    .local v4, results:Ljava/util/Hashtable;
    const/16 v21, 0x0

    .local v21, x:I
    :goto_4f
    move/from16 v0, v21

    if-ge v0, v11, :cond_66

    .line 127
    add-int/lit8 v1, v21, 0x1

    shr-int/lit8 v18, v1, 0x1

    .line 128
    .local v18, rowStepsAboveOrBelow:I
    and-int/lit8 v1, v21, 0x1

    if-nez v1, :cond_9c

    const/4 v10, 0x1

    .line 129
    .local v10, isAbove:Z
    :goto_5c
    if-eqz v10, :cond_9e

    .end local v18           #rowStepsAboveOrBelow:I
    :goto_5e
    mul-int v1, v17, v18

    add-int v2, v14, v1

    .line 130
    .local v2, rowNumber:I
    if-ltz v2, :cond_66

    if-lt v2, v9, :cond_a4

    .line 167
    .end local v2           #rowNumber:I
    .end local v10           #isAbove:Z
    :cond_66
    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_fb

    .line 168
    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 169
    .local v8, e:Ljava/util/Enumeration;
    const/4 v12, 0x0

    .line 170
    .local v12, maxNumLines:I
    const/4 v13, 0x0

    .line 171
    .local v13, maxResult:Lcom/google/zxing/Result;
    :cond_72
    :goto_72
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 172
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/zxing/Result;

    .line 173
    .local v16, result:Lcom/google/zxing/Result;
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Hashtable;

    move-result-object v1

    sget-object v5, Lcom/google/zxing/ResultMetadataType;->CONSISTENT_LINES:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 174
    .local v15, numLines:I
    if-le v15, v12, :cond_72

    .line 175
    move v12, v15

    .line 176
    move-object/from16 v13, v16

    goto :goto_72

    .line 108
    .end local v4           #results:Ljava/util/Hashtable;
    .end local v7           #confidenceLevel:I
    .end local v8           #e:Ljava/util/Enumeration;
    .end local v11           #maxLines:I
    .end local v12           #maxNumLines:I
    .end local v13           #maxResult:Lcom/google/zxing/Result;
    .end local v15           #numLines:I
    .end local v16           #result:Lcom/google/zxing/Result;
    .end local v17           #rowStep:I
    .end local v19           #tryHarder:Z
    .end local v21           #x:I
    :cond_94
    const/16 v19, 0x0

    goto :goto_1f

    .line 110
    .restart local v19       #tryHarder:Z
    :cond_97
    const/4 v1, 0x5

    goto :goto_24

    .line 116
    .restart local v17       #rowStep:I
    :cond_99
    const/16 v11, 0x18

    .restart local v11       #maxLines:I
    goto :goto_2d

    .line 128
    .restart local v4       #results:Ljava/util/Hashtable;
    .restart local v7       #confidenceLevel:I
    .restart local v18       #rowStepsAboveOrBelow:I
    .restart local v21       #x:I
    :cond_9c
    const/4 v10, 0x0

    goto :goto_5c

    .line 129
    .restart local v10       #isAbove:Z
    :cond_9e
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    goto :goto_5e

    .line 135
    .end local v18           #rowStepsAboveOrBelow:I
    .restart local v2       #rowNumber:I
    :cond_a4
    const/16 v16, 0x0

    .line 137
    .restart local v16       #result:Lcom/google/zxing/Result;
    :try_start_a6
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    .line 138
    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/oned/OneDReader;->doDecodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)Lcom/google/zxing/Result;

    move-result-object v16

    .line 139
    if-eqz v16, :cond_cc

    .line 140
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Hashtable;

    move-result-object v1

    sget-object v5, Lcom/google/zxing/ResultMetadataType;->CONSISTENT_LINES:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_c7
    .catch Lcom/google/zxing/NotFoundException; {:try_start_a6 .. :try_end_c7} :catch_cb

    move-result v15

    .line 142
    .restart local v15       #numLines:I
    if-lt v15, v7, :cond_cc

    .line 180
    .end local v2           #rowNumber:I
    .end local v10           #isAbove:Z
    .end local v15           #numLines:I
    .end local v16           #result:Lcom/google/zxing/Result;
    :cond_ca
    :goto_ca
    return-object v16

    .line 146
    .restart local v2       #rowNumber:I
    .restart local v10       #isAbove:Z
    .restart local v16       #result:Lcom/google/zxing/Result;
    :catch_cb
    move-exception v1

    .line 150
    :cond_cc
    if-nez v16, :cond_f2

    .line 152
    :try_start_ce
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/BinaryBitmap;->getBlackRowLocal(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    .line 153
    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/oned/OneDReader;->doDecodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)Lcom/google/zxing/Result;

    move-result-object v16

    .line 154
    if-eqz v16, :cond_f2

    .line 155
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Hashtable;

    move-result-object v1

    sget-object v5, Lcom/google/zxing/ResultMetadataType;->CONSISTENT_LINES:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_ef
    .catch Lcom/google/zxing/NotFoundException; {:try_start_ce .. :try_end_ef} :catch_100

    move-result v15

    .line 157
    .restart local v15       #numLines:I
    if-ge v15, v7, :cond_ca

    .line 125
    .end local v15           #numLines:I
    :cond_f2
    :goto_f2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4f

    .line 179
    .end local v2           #rowNumber:I
    .end local v10           #isAbove:Z
    .end local v16           #result:Lcom/google/zxing/Result;
    .restart local v8       #e:Ljava/util/Enumeration;
    .restart local v12       #maxNumLines:I
    .restart local v13       #maxResult:Lcom/google/zxing/Result;
    :cond_f6
    if-eqz v13, :cond_fb

    move-object/from16 v16, v13

    .line 180
    goto :goto_ca

    .line 184
    .end local v8           #e:Ljava/util/Enumeration;
    .end local v12           #maxNumLines:I
    .end local v13           #maxResult:Lcom/google/zxing/Result;
    :cond_fb
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 161
    .restart local v2       #rowNumber:I
    .restart local v10       #isAbove:Z
    .restart local v16       #result:Lcom/google/zxing/Result;
    :catch_100
    move-exception v1

    goto :goto_f2
.end method

.method private doDecodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)Lcom/google/zxing/Result;
    .registers 17
    .parameter "rowNumber"
    .parameter "row"
    .parameter "results"
    .parameter "hints"
    .parameter "bidirect"

    .prologue
    .line 191
    const/4 v0, 0x0

    .local v0, attempt:I
    :goto_1
    const/4 v8, 0x2

    if-ge v0, v8, :cond_9

    .line 192
    const/4 v8, 0x1

    if-ne v0, v8, :cond_e

    .line 193
    if-eqz p5, :cond_b

    .line 242
    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1

    .line 197
    :cond_b
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 203
    :cond_e
    if-eqz p5, :cond_1a

    .line 204
    const/4 v8, 0x1

    :try_start_11
    invoke-virtual {p0, p1, p2, v8}, Lcom/google/zxing/oned/OneDReader;->decodeRowBidirect(ILcom/google/zxing/common/BitArray;Z)Lcom/google/zxing/Result;

    move-result-object v7

    .line 208
    .local v7, result:Lcom/google/zxing/Result;
    :goto_15
    if-nez v7, :cond_1f

    .line 191
    .end local v7           #result:Lcom/google/zxing/Result;
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_1a
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v7

    .restart local v7       #result:Lcom/google/zxing/Result;
    goto :goto_15

    .line 213
    :cond_1f
    const/4 v8, 0x1

    if-ne v0, v8, :cond_53

    .line 215
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    new-instance v9, Ljava/lang/Integer;

    const/16 v10, 0xb4

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 218
    .local v6, points:[Lcom/google/zxing/ResultPoint;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_33
    array-length v8, v6

    if-ge v2, v8, :cond_53

    .line 219
    new-instance v8, Lcom/google/zxing/ResultPoint;

    sget v9, Lcom/google/zxing/common/BitArray;->size:I

    int-to-float v9, v9

    aget-object v10, v6, v2

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f80

    sub-float/2addr v9, v10

    aget-object v10, v6, v2

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v6, v2

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 223
    .end local v2           #k:I
    .end local v6           #points:[Lcom/google/zxing/ResultPoint;
    :cond_53
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p3, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 226
    invoke-virtual {p3, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/Result;

    .line 227
    .local v1, finalResult:Lcom/google/zxing/Result;
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V

    .line 229
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Hashtable;

    move-result-object v4

    .line 230
    .local v4, metadata:Ljava/util/Hashtable;
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->CONSISTENT_LINES:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v4, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 231
    .local v5, numLines:I
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->CONSISTENT_LINES:Lcom/google/zxing/ResultMetadataType;

    new-instance v9, Ljava/lang/Integer;

    add-int/lit8 v10, v5, 0x1

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 238
    .end local v1           #finalResult:Lcom/google/zxing/Result;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #metadata:Ljava/util/Hashtable;
    .end local v5           #numLines:I
    .end local v7           #result:Lcom/google/zxing/Result;
    :catch_a3
    move-exception v8

    goto/16 :goto_17

    .line 233
    .restart local v3       #key:Ljava/lang/String;
    .restart local v7       #result:Lcom/google/zxing/Result;
    :cond_a6
    move-object v1, v7

    .line 234
    .restart local v1       #finalResult:Lcom/google/zxing/Result;
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->CONSISTENT_LINES:Lcom/google/zxing/ResultMetadataType;

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v8, v9}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p3, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catch Lcom/google/zxing/ReaderException; {:try_start_11 .. :try_end_b5} :catch_a3

    goto/16 :goto_a
.end method

.method static native nativePatternMatchVariance([I[II)I
.end method

.method static native nativeRecordPattern([ZI[I)Z
.end method

.method protected static patternMatchVariance([I[II)I
    .registers 4
    .parameter "counters"
    .parameter "pattern"
    .parameter "maxIndividualVariance"

    .prologue
    .line 333
    invoke-static {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->nativePatternMatchVariance([I[II)I

    move-result v0

    return v0
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .registers 4
    .parameter "row"
    .parameter "start"
    .parameter "counters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/google/zxing/common/BitArray;->bits:[Z

    invoke-static {v0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->nativeRecordPattern([ZI[I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 260
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 297
    :cond_d
    return-void
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .registers 7
    .parameter "row"
    .parameter "start"
    .parameter "counters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 303
    sget-object v0, Lcom/google/zxing/common/BitArray;->bits:[Z

    .line 305
    .local v0, bits:[Z
    array-length v2, p2

    .line 306
    .local v2, numTransitionsLeft:I
    aget-boolean v1, v0, p1

    .line 307
    .local v1, last:Z
    :cond_5
    :goto_5
    if-lez p1, :cond_17

    if-ltz v2, :cond_17

    .line 308
    add-int/lit8 p1, p1, -0x1

    aget-boolean v3, v0, p1

    if-eq v3, v1, :cond_5

    .line 309
    add-int/lit8 v2, v2, -0x1

    .line 310
    if-nez v1, :cond_15

    const/4 v1, 0x1

    :goto_14
    goto :goto_5

    :cond_15
    const/4 v1, 0x0

    goto :goto_14

    .line 313
    :cond_17
    if-ltz v2, :cond_1e

    .line 314
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 316
    :cond_1e
    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 317
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .registers 16
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDReader;->supportBidirect()Z

    move-result v0

    .line 55
    .local v0, bidirect:Z
    :try_start_4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;Z)Lcom/google/zxing/Result;
    :try_end_7
    .catch Lcom/google/zxing/NotFoundException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v7

    .line 76
    :cond_8
    return-object v7

    .line 56
    :catch_9
    move-exception v4

    .line 57
    .local v4, nfe:Lcom/google/zxing/NotFoundException;
    if-eqz p2, :cond_75

    sget-object v10, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    const/4 v9, 0x1

    .line 58
    .local v9, tryHarder:Z
    :goto_15
    if-eqz v9, :cond_77

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v10

    if-eqz v10, :cond_77

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v8

    .line 60
    .local v8, rotatedImage:Lcom/google/zxing/BinaryBitmap;
    invoke-direct {p0, v8, p2, v0}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;Z)Lcom/google/zxing/Result;

    move-result-object v7

    .line 62
    .local v7, result:Lcom/google/zxing/Result;
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Hashtable;

    move-result-object v3

    .line 63
    .local v3, metadata:Ljava/util/Hashtable;
    const/16 v5, 0x10e

    .line 64
    .local v5, orientation:I
    if-eqz v3, :cond_44

    sget-object v10, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v3, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 66
    sget-object v10, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v3, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v5

    rem-int/lit16 v5, v10, 0x168

    .line 69
    :cond_44
    sget-object v10, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v10, v11}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 72
    .local v6, points:[Lcom/google/zxing/ResultPoint;
    invoke-virtual {v8}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v1

    .line 73
    .local v1, height:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_57
    array-length v10, v6

    if-ge v2, v10, :cond_8

    .line 74
    new-instance v10, Lcom/google/zxing/ResultPoint;

    int-to-float v11, v1

    aget-object v12, v6, v2

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f80

    sub-float/2addr v11, v12

    aget-object v12, v6, v2

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v6, v2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 57
    .end local v1           #height:I
    .end local v2           #i:I
    .end local v3           #metadata:Ljava/util/Hashtable;
    .end local v5           #orientation:I
    .end local v6           #points:[Lcom/google/zxing/ResultPoint;
    .end local v7           #result:Lcom/google/zxing/Result;
    .end local v8           #rotatedImage:Lcom/google/zxing/BinaryBitmap;
    .end local v9           #tryHarder:Z
    :cond_75
    const/4 v9, 0x0

    goto :goto_15

    .line 78
    .restart local v9       #tryHarder:Z
    :cond_77
    throw v4
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public decodeRowBidirect(ILcom/google/zxing/common/BitArray;Z)Lcom/google/zxing/Result;
    .registers 6
    .parameter "rowNumber"
    .parameter "row"
    .parameter "bidirect"

    .prologue
    .line 403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 85
    return-void
.end method

.method public supportBidirect()Z
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method
