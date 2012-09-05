.class public final Ljava/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Bidi$Run;
    }
.end annotation


# static fields
.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = -0x2

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = -0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final UBIDI_LEVEL_OVERRIDE:I = 0x80

.field private static final UBiDiDirection_UBIDI_LTR:I = 0x0

.field private static final UBiDiDirection_UBIDI_MIXED:I = 0x2

.field private static final UBiDiDirection_UBIDI_RTL:I = 0x1


# instance fields
.field private baseLevel:I

.field private direction:I

.field private length:I

.field private offsetLevel:[B

.field private runs:[Ljava/text/Bidi$Run;

.field private unidirectional:Z


# direct methods
.method private constructor <init>(J)V
    .registers 3
    .parameter "pBidi"

    .prologue
    .line 317
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-direct {p0, p1, p2}, Ljava/text/Bidi;->readBidiInfo(J)V

    .line 319
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .parameter "paragraph"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 260
    if-nez p1, :cond_f

    move-object v1, v3

    :goto_5
    if-nez p1, :cond_14

    move v5, v2

    :goto_8
    move-object v0, p0

    move v4, v2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 262
    return-void

    .line 260
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_5

    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_8
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 19
    .parameter "paragraph"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-nez p1, :cond_d

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "paragraph is null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_d
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v7

    .line 118
    .local v7, begin:I
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v13

    .line 119
    .local v13, end:I
    sub-int v5, v13, v7

    .line 120
    .local v5, length:I
    add-int/lit8 v2, v5, 0x1

    new-array v1, v2, [C

    .line 122
    .local v1, text:[C
    if-eqz v5, :cond_6c

    .line 123
    const/4 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v4

    aput-char v4, v1, v2

    .line 129
    :goto_24
    const/4 v6, -0x2

    .line 130
    .local v6, flags:I
    sget-object v2, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v10

    .line 131
    .local v10, direction:Ljava/lang/Object;
    if-eqz v10, :cond_3c

    instance-of v2, v10, Ljava/lang/Boolean;

    if-eqz v2, :cond_3c

    .line 132
    sget-object v2, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 133
    const/4 v6, 0x0

    .line 140
    :cond_3c
    :goto_3c
    const/4 v3, 0x0

    .line 141
    .local v3, embeddings:[B
    const/16 v16, 0x1

    .local v16, textLimit:I
    const/4 v14, 0x1

    .local v14, i:I
    :goto_40
    if-ge v14, v5, :cond_8b

    .line 144
    sget-object v2, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v12

    .line 145
    .local v12, embedding:Ljava/lang/Object;
    if-eqz v12, :cond_72

    instance-of v2, v12, Ljava/lang/Integer;

    if-eqz v2, :cond_72

    .line 146
    check-cast v12, Ljava/lang/Integer;

    .end local v12           #embedding:Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 148
    .local v11, embLevel:I
    if-nez v3, :cond_5a

    .line 149
    new-array v3, v5, [B

    .line 152
    :cond_5a
    :goto_5a
    move/from16 v0, v16

    if-ge v14, v0, :cond_7f

    .line 153
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v2

    aput-char v2, v1, v14

    .line 154
    add-int/lit8 v2, v14, -0x1

    int-to-byte v4, v11

    aput-byte v4, v3, v2

    .line 152
    add-int/lit8 v14, v14, 0x1

    goto :goto_5a

    .line 125
    .end local v3           #embeddings:[B
    .end local v6           #flags:I
    .end local v10           #direction:Ljava/lang/Object;
    .end local v11           #embLevel:I
    .end local v14           #i:I
    .end local v16           #textLimit:I
    :cond_6c
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->first()C

    goto :goto_24

    .line 135
    .restart local v6       #flags:I
    .restart local v10       #direction:Ljava/lang/Object;
    :cond_70
    const/4 v6, 0x1

    goto :goto_3c

    .line 157
    .restart local v3       #embeddings:[B
    .restart local v12       #embedding:Ljava/lang/Object;
    .restart local v14       #i:I
    .restart local v16       #textLimit:I
    :cond_72
    :goto_72
    move/from16 v0, v16

    if-ge v14, v0, :cond_7f

    .line 158
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v2

    aput-char v2, v1, v14

    .line 157
    add-int/lit8 v14, v14, 0x1

    goto :goto_72

    .line 141
    .end local v12           #embedding:Ljava/lang/Object;
    :cond_7f
    sget-object v2, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    sub-int/2addr v2, v7

    add-int/lit8 v16, v2, 0x1

    goto :goto_40

    .line 164
    :cond_8b
    sget-object v2, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v15

    .line 165
    .local v15, numericShaper:Ljava/lang/Object;
    if-eqz v15, :cond_9f

    instance-of v2, v15, Ljava/awt/font/NumericShaper;

    if-eqz v2, :cond_9f

    .line 166
    check-cast v15, Ljava/awt/font/NumericShaper;

    .end local v15           #numericShaper:Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2, v5}, Ljava/awt/font/NumericShaper;->shape([CII)V

    .line 169
    :cond_9f
    const-wide/16 v8, 0x0

    .line 171
    .local v8, bidi:J
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_a3
    invoke-static/range {v1 .. v6}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v8

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/text/Bidi;->readBidiInfo(J)V
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_b0

    .line 174
    invoke-static {v8, v9}, Ljava/text/Bidi;->ubidi_close(J)V

    .line 176
    return-void

    .line 174
    :catchall_b0
    move-exception v2

    invoke-static {v8, v9}, Ljava/text/Bidi;->ubidi_close(J)V

    throw v2
.end method

.method public constructor <init>([CI[BIII)V
    .registers 12
    .parameter "text"
    .parameter "textStart"
    .parameter "embeddings"
    .parameter "embStart"
    .parameter "paragraphLength"
    .parameter "flags"

    .prologue
    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 214
    if-eqz p1, :cond_9

    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge v2, p5, :cond_f

    .line 215
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 218
    :cond_f
    if-eqz p3, :cond_1b

    .line 219
    array-length v2, p3

    sub-int/2addr v2, p4

    if-ge v2, p5, :cond_1b

    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 224
    :cond_1b
    if-gez p2, :cond_36

    .line 225
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative textStart value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_36
    if-gez p4, :cond_51

    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative embStart value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_51
    if-gez p5, :cond_6c

    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative paragraph length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_6c
    const-wide/16 v0, 0x0

    .line 236
    .local v0, bidi:J
    :try_start_6e
    invoke-static/range {p1 .. p6}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v0

    .line 237
    invoke-direct {p0, v0, v1}, Ljava/text/Bidi;->readBidiInfo(J)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_79

    .line 239
    invoke-static {v0, v1}, Ljava/text/Bidi;->ubidi_close(J)V

    .line 241
    return-void

    .line 239
    :catchall_79
    move-exception v2

    invoke-static {v0, v1}, Ljava/text/Bidi;->ubidi_close(J)V

    throw v2
.end method

.method private createEmptyLineBidi(J)Ljava/text/Bidi;
    .registers 6
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 414
    new-instance v0, Ljava/text/Bidi;

    invoke-direct {v0, p1, p2}, Ljava/text/Bidi;-><init>(J)V

    .line 415
    .local v0, result:Ljava/text/Bidi;
    const/4 v1, 0x0

    iput v1, v0, Ljava/text/Bidi;->length:I

    .line 416
    iput-object v2, v0, Ljava/text/Bidi;->offsetLevel:[B

    .line 417
    iput-object v2, v0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    .line 418
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/text/Bidi;->unidirectional:Z

    .line 419
    return-object v0
.end method

.method private static createUBiDi([CI[BIII)J
    .registers 18
    .parameter "text"
    .parameter "textStart"
    .parameter "embeddings"
    .parameter "embStart"
    .parameter "paragraphLength"
    .parameter "flags"

    .prologue
    .line 267
    const/4 v11, 0x0

    .line 269
    .local v11, realText:[C
    const/4 v7, 0x0

    .line 271
    .local v7, realEmbeddings:[B
    if-eqz p0, :cond_a

    array-length v4, p0

    sub-int/2addr v4, p1

    move/from16 v0, p4

    if-ge v4, v0, :cond_10

    .line 272
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 274
    :cond_10
    move/from16 v0, p4

    new-array v11, v0, [C

    .line 275
    const/4 v4, 0x0

    move/from16 v0, p4

    invoke-static {p0, p1, v11, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    if-eqz p2, :cond_62

    .line 278
    array-length v4, p2

    sub-int/2addr v4, p3

    move/from16 v0, p4

    if-ge v4, v0, :cond_28

    .line 279
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 281
    :cond_28
    if-lez p4, :cond_62

    .line 282
    new-instance v1, Ljava/text/Bidi;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 283
    .end local v7           #realEmbeddings:[B
    .local v1, temp:Ljava/text/Bidi;
    move/from16 v0, p4

    new-array v7, v0, [B

    .line 284
    .restart local v7       #realEmbeddings:[B
    iget-object v4, v1, Ljava/text/Bidi;->offsetLevel:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p4

    invoke-static {v4, v5, v7, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    const/4 v9, 0x0

    .local v9, i:I
    :goto_45
    move/from16 v0, p4

    if-ge v9, v0, :cond_62

    .line 286
    aget-byte v8, p2, v9

    .line 287
    .local v8, e:B
    if-gez v8, :cond_55

    .line 288
    rsub-int v4, v8, 0x80

    int-to-byte v4, v4

    aput-byte v4, v7, v9

    .line 285
    :goto_52
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 289
    :cond_55
    if-lez v8, :cond_5a

    .line 290
    aput-byte v8, v7, v9

    goto :goto_52

    .line 292
    :cond_5a
    aget-byte v4, v7, v9

    or-int/lit8 v4, v4, -0x80

    int-to-byte v4, v4

    aput-byte v4, v7, v9

    goto :goto_52

    .line 298
    .end local v1           #temp:Ljava/text/Bidi;
    .end local v8           #e:B
    .end local v9           #i:I
    :cond_62
    const/4 v4, 0x1

    move/from16 v0, p5

    if-gt v0, v4, :cond_6c

    const/4 v4, -0x2

    move/from16 v0, p5

    if-ge v0, v4, :cond_6e

    .line 299
    :cond_6c
    const/16 p5, 0x0

    .line 302
    :cond_6e
    const-wide/16 v2, 0x0

    .line 303
    .local v2, bidi:J
    const/4 v10, 0x1

    .line 305
    .local v10, needsDeletion:Z
    :try_start_71
    invoke-static {}, Ljava/text/Bidi;->ubidi_open()J

    move-result-wide v2

    move-object v4, v11

    move/from16 v5, p4

    move/from16 v6, p5

    .line 306
    invoke-static/range {v2 .. v7}, Ljava/text/Bidi;->ubidi_setPara(J[CII[B)V
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_84

    .line 307
    const/4 v10, 0x0

    .line 309
    if-eqz v10, :cond_83

    .line 310
    invoke-static {v2, v3}, Ljava/text/Bidi;->ubidi_close(J)V

    .line 313
    :cond_83
    return-wide v2

    .line 309
    :catchall_84
    move-exception v4

    if-eqz v10, :cond_8a

    .line 310
    invoke-static {v2, v3}, Ljava/text/Bidi;->ubidi_close(J)V

    :cond_8a
    throw v4
.end method

.method private readBidiInfo(J)V
    .registers 8
    .parameter "pBidi"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 323
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getLength(J)I

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->length:I

    .line 325
    iget v1, p0, Ljava/text/Bidi;->length:I

    if-nez v1, :cond_26

    move-object v1, v2

    :goto_d
    iput-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    .line 327
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getParaLevel(J)B

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->baseLevel:I

    .line 329
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_countRuns(J)I

    move-result v0

    .line 330
    .local v0, runCount:I
    if-nez v0, :cond_2b

    .line 331
    iput-boolean v4, p0, Ljava/text/Bidi;->unidirectional:Z

    .line 332
    iput-object v2, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    .line 345
    :cond_1f
    :goto_1f
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getDirection(J)I

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->direction:I

    .line 346
    return-void

    .line 325
    .end local v0           #runCount:I
    :cond_26
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getLevels(J)[B

    move-result-object v1

    goto :goto_d

    .line 333
    .restart local v0       #runCount:I
    :cond_2b
    if-gez v0, :cond_30

    .line 334
    iput-object v2, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    goto :goto_1f

    .line 336
    :cond_30
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getRuns(J)[Ljava/text/Bidi$Run;

    move-result-object v1

    iput-object v1, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    .line 339
    if-ne v0, v4, :cond_1f

    iget-object v1, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/text/Bidi$Run;->getLevel()I

    move-result v1

    iget v3, p0, Ljava/text/Bidi;->baseLevel:I

    if-ne v1, v3, :cond_1f

    .line 340
    iput-boolean v4, p0, Ljava/text/Bidi;->unidirectional:Z

    .line 341
    iput-object v2, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    goto :goto_1f
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .registers 12
    .parameter "levels"
    .parameter "levelStart"
    .parameter "objects"
    .parameter "objectStart"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 553
    if-ltz p4, :cond_f

    if-ltz p1, :cond_f

    if-ltz p3, :cond_f

    array-length v4, p0

    sub-int/2addr v4, p1

    if-gt p4, v4, :cond_f

    array-length v4, p2

    sub-int/2addr v4, p3

    if-le p4, v4, :cond_58

    .line 556
    :cond_f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ranges (levels="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", levelStart="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", objects="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", objectStart="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 561
    :cond_58
    new-array v2, p4, [B

    .line 562
    .local v2, realLevels:[B
    invoke-static {p0, p1, v2, v5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    invoke-static {v2, p4}, Ljava/text/Bidi;->ubidi_reorderVisual([BI)[I

    move-result-object v1

    .line 566
    .local v1, indices:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_67
    if-ge v0, p4, :cond_74

    .line 568
    aget v4, v1, v0

    add-int/2addr v4, p3

    aget-object v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 571
    :cond_74
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    return-void
.end method

.method public static requiresBidi([CII)Z
    .registers 10
    .parameter "text"
    .parameter "start"
    .parameter "limit"

    .prologue
    const/4 v4, 0x0

    .line 592
    if-ltz p2, :cond_a

    if-ltz p1, :cond_a

    if-gt p1, p2, :cond_a

    array-length v1, p0

    if-le p2, v1, :cond_10

    .line 593
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 596
    :cond_10
    new-instance v0, Ljava/text/Bidi;

    const/4 v3, 0x0

    sub-int v5, p2, p1

    move-object v1, p0

    move v2, p1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 597
    .local v0, bidi:Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v4, 0x1

    :cond_22
    return v4
.end method

.method private static native ubidi_close(J)V
.end method

.method private static native ubidi_countRuns(J)I
.end method

.method private static native ubidi_getDirection(J)I
.end method

.method private static native ubidi_getLength(J)I
.end method

.method private static native ubidi_getLevels(J)[B
.end method

.method private static native ubidi_getParaLevel(J)B
.end method

.method private static native ubidi_getRuns(J)[Ljava/text/Bidi$Run;
.end method

.method private static native ubidi_open()J
.end method

.method private static native ubidi_reorderVisual([BI)[I
.end method

.method private static native ubidi_setLine(JII)J
.end method

.method private static native ubidi_setPara(J[CII[B)V
.end method


# virtual methods
.method public baseIsLeftToRight()Z
    .registers 2

    .prologue
    .line 366
    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public createLineBidi(II)Ljava/text/Bidi;
    .registers 12
    .parameter "lineStart"
    .parameter "lineLimit"

    .prologue
    const/4 v5, 0x0

    .line 385
    if-ltz p1, :cond_b

    if-ltz p2, :cond_b

    iget v1, p0, Ljava/text/Bidi;->length:I

    if-gt p2, v1, :cond_b

    if-le p1, p2, :cond_46

    .line 386
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ranges (start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/text/Bidi;->length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_46
    iget v1, p0, Ljava/text/Bidi;->length:I

    new-array v0, v1, [C

    .line 391
    .local v0, text:[C
    const/16 v1, 0x61

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 392
    iget v1, p0, Ljava/text/Bidi;->length:I

    new-array v2, v1, [B

    .line 393
    .local v2, embeddings:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_54
    array-length v1, v2

    if-ge v6, v1, :cond_62

    .line 394
    iget-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v6

    .line 393
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 397
    :cond_62
    invoke-virtual {p0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 400
    .local v5, dir:I
    :goto_68
    const-wide/16 v7, 0x0

    .line 402
    .local v7, parent:J
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_6c
    iget v4, p0, Ljava/text/Bidi;->length:I

    invoke-static/range {v0 .. v5}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v7

    .line 403
    if-ne p1, p2, :cond_7e

    .line 404
    invoke-direct {p0, v7, v8}, Ljava/text/Bidi;->createEmptyLineBidi(J)Ljava/text/Bidi;
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_8b

    move-result-object v1

    .line 408
    invoke-static {v7, v8}, Ljava/text/Bidi;->ubidi_close(J)V

    :goto_7b
    return-object v1

    .line 397
    .end local v5           #dir:I
    .end local v7           #parent:J
    :cond_7c
    const/4 v5, 0x1

    goto :goto_68

    .line 406
    .restart local v5       #dir:I
    .restart local v7       #parent:J
    :cond_7e
    :try_start_7e
    new-instance v1, Ljava/text/Bidi;

    invoke-static {v7, v8, p1, p2}, Ljava/text/Bidi;->ubidi_setLine(JII)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/text/Bidi;-><init>(J)V
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_8b

    .line 408
    invoke-static {v7, v8}, Ljava/text/Bidi;->ubidi_close(J)V

    goto :goto_7b

    :catchall_8b
    move-exception v1

    invoke-static {v7, v8}, Ljava/text/Bidi;->ubidi_close(J)V

    throw v1
.end method

.method public getBaseLevel()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Ljava/text/Bidi;->length:I

    return v0
.end method

.method public getLevelAt(I)I
    .registers 4
    .parameter "offset"

    .prologue
    .line 449
    :try_start_0
    iget-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    aget-byte v1, v1, p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_7

    and-int/lit16 v1, v1, -0x81

    .line 451
    :goto_6
    return v1

    .line 450
    :catch_7
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/RuntimeException;
    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    goto :goto_6
.end method

.method public getRunCount()I
    .registers 2

    .prologue
    .line 461
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    array-length v0, v0

    goto :goto_5
.end method

.method public getRunLevel(I)I
    .registers 3
    .parameter "run"

    .prologue
    .line 472
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/text/Bidi$Run;->getLevel()I

    move-result v0

    goto :goto_6
.end method

.method public getRunLimit(I)I
    .registers 3
    .parameter "run"

    .prologue
    .line 483
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/text/Bidi;->length:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/text/Bidi$Run;->getLimit()I

    move-result v0

    goto :goto_6
.end method

.method public getRunStart(I)I
    .registers 3
    .parameter "run"

    .prologue
    .line 494
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/text/Bidi$Run;->getStart()I

    move-result v0

    goto :goto_5
.end method

.method public isLeftToRight()Z
    .registers 2

    .prologue
    .line 505
    iget v0, p0, Ljava/text/Bidi;->direction:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isMixed()Z
    .registers 3

    .prologue
    .line 515
    iget v0, p0, Ljava/text/Bidi;->direction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isRightToLeft()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 526
    iget v1, p0, Ljava/text/Bidi;->direction:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->direction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
