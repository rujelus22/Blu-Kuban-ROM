.class public Lcom/google/android/music/utils/DbUtils;
.super Ljava/lang/Object;
.source "DbUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addAndCondition(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "existingConditions"
    .parameter "andCondition"

    .prologue
    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 377
    :goto_6
    return-object p0

    .line 369
    :cond_7
    if-nez p0, :cond_e

    .line 370
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .restart local p0
    :cond_e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 373
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 375
    :cond_18
    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public static appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;
    .registers 7
    .parameter "buffer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, longs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 101
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No values for IN operator"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x6

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 106
    const-string v3, " IN ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 108
    .local v1, value:J
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 111
    .end local v1           #value:J
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 112
    const-string v3, ") "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    return-object p0
.end method

.method public static appendIN(Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .registers 7
    .parameter "buffer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, longs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 128
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No values for IN operator"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_e
    const-string v3, " IN ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 133
    .local v1, value:J
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 136
    .end local v1           #value:J
    :cond_31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 137
    const-string v3, ") "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    return-void
.end method

.method public static final escapeForLikeOperator(Ljava/lang/String;C)Ljava/lang/String;
    .registers 7
    .parameter "valueToEscape"
    .parameter "escapeChar"

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 43
    .local v2, inputLength:I
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, 0xa

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 44
    .local v3, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_24

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 46
    .local v0, c:C
    sparse-switch v0, :sswitch_data_2a

    .line 52
    if-ne v0, p1, :cond_1a

    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    :cond_1a
    :goto_1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 49
    :sswitch_20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 58
    .end local v0           #c:C
    :cond_24
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 46
    nop

    :sswitch_data_2a
    .sparse-switch
        0x25 -> :sswitch_20
        0x5f -> :sswitch_20
    .end sparse-switch
.end method

.method public static findIndirectlyReferencedItem(JJILandroid/database/Cursor;III)I
    .registers 19
    .parameter "refId"
    .parameter "objId"
    .parameter "lastKnownPosition"
    .parameter "cursor"
    .parameter "refIdColumnIndex"
    .parameter "objIdColumnIndex"
    .parameter "maxRadiusToSearch"

    .prologue
    .line 274
    invoke-interface {p5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 275
    .local v5, newCount:I
    const/4 v8, 0x1

    if-ge v5, v8, :cond_9

    .line 276
    const/4 v4, -0x1

    .line 336
    :cond_8
    :goto_8
    return v4

    .line 279
    :cond_9
    move v6, p4

    .line 280
    .local v6, position:I
    const/4 v2, 0x1

    .line 281
    .local v2, forwardSearch:Z
    const/4 v1, 0x1

    .line 284
    .local v1, backwardSearch:Z
    if-gt v5, p4, :cond_11

    .line 285
    const/4 v2, 0x0

    .line 286
    add-int/lit8 v6, v5, -0x1

    .line 289
    :cond_11
    const/4 v4, -0x1

    .line 291
    .local v4, musicPositionMatch:I
    invoke-interface {p5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_2b

    move/from16 v0, p7

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v8, v8, p2

    if-nez v8, :cond_2b

    .line 292
    move v4, v6

    .line 293
    invoke-interface/range {p5 .. p6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v8, v8, p0

    if-eqz v8, :cond_8

    .line 299
    :cond_2b
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2c
    move/from16 v0, p8

    if-gt v3, v0, :cond_8

    .line 300
    if-eqz v2, :cond_52

    .line 301
    add-int v7, v6, v3

    .line 302
    .local v7, positionToTry:I
    invoke-interface {p5, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 303
    move/from16 v0, p7

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v8, v8, p2

    if-nez v8, :cond_52

    .line 304
    invoke-interface/range {p5 .. p6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v8, v8, p0

    if-nez v8, :cond_4e

    move v4, v7

    .line 305
    goto :goto_8

    .line 306
    :cond_4e
    const/4 v8, -0x1

    if-ne v4, v8, :cond_52

    .line 307
    move v4, v7

    .line 318
    .end local v7           #positionToTry:I
    :cond_52
    if-eqz v1, :cond_78

    .line 319
    sub-int v7, v6, v3

    .line 320
    .restart local v7       #positionToTry:I
    invoke-interface {p5, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 321
    move/from16 v0, p7

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v8, v8, p2

    if-nez v8, :cond_78

    .line 322
    invoke-interface/range {p5 .. p6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v8, v8, p0

    if-nez v8, :cond_74

    move v4, v7

    .line 323
    goto :goto_8

    .line 311
    :cond_70
    const/4 v2, 0x0

    .line 312
    if-nez v1, :cond_52

    goto :goto_8

    .line 324
    :cond_74
    const/4 v8, -0x1

    if-ne v4, v8, :cond_78

    .line 325
    move v4, v7

    .line 299
    .end local v7           #positionToTry:I
    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 329
    .restart local v7       #positionToTry:I
    :cond_7b
    const/4 v1, 0x0

    .line 330
    if-nez v2, :cond_78

    goto :goto_8
.end method

.method public static findItemInCursor(JILandroid/database/Cursor;II)I
    .registers 14
    .parameter "id"
    .parameter "lastKnownPosition"
    .parameter "cursor"
    .parameter "idColIndex"
    .parameter "maxRadiusToSearch"

    .prologue
    const/4 v5, -0x1

    .line 198
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 199
    .local v3, newCount:I
    const/4 v6, 0x1

    if-ge v3, v6, :cond_a

    move v4, v5

    .line 246
    :cond_9
    :goto_9
    return v4

    .line 203
    :cond_a
    move v4, p2

    .line 204
    .local v4, position:I
    const/4 v1, 0x1

    .line 205
    .local v1, forwardSearch:Z
    const/4 v0, 0x1

    .line 208
    .local v0, backwardSearch:Z
    if-gt v3, p2, :cond_12

    .line 209
    const/4 v1, 0x0

    .line 210
    add-int/lit8 v4, v3, -0x1

    .line 214
    :cond_12
    invoke-interface {p3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v6, p0

    if-eqz v6, :cond_9

    .line 219
    :cond_20
    const/4 v2, 0x1

    .local v2, i:I
    :goto_21
    if-gt v2, p5, :cond_58

    .line 220
    if-eqz v1, :cond_3c

    .line 221
    add-int v6, v4, v2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 222
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v6, p0

    if-nez v6, :cond_3c

    .line 223
    add-int/2addr v4, v2

    goto :goto_9

    .line 226
    :cond_37
    const/4 v1, 0x0

    .line 227
    if-nez v0, :cond_3c

    move v4, v5

    .line 228
    goto :goto_9

    .line 233
    :cond_3c
    if-eqz v0, :cond_55

    .line 234
    sub-int v6, v4, v2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 235
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v6, p0

    if-nez v6, :cond_55

    .line 236
    sub-int/2addr v4, v2

    goto :goto_9

    .line 239
    :cond_50
    const/4 v0, 0x0

    .line 240
    if-nez v1, :cond_55

    move v4, v5

    .line 241
    goto :goto_9

    .line 219
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_58
    move v4, v5

    .line 246
    goto :goto_9
.end method

.method public static formatProjection([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .parameter "projection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_5

    array-length v6, p0

    if-nez v6, :cond_d

    .line 166
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Projection must not be empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 168
    :cond_d
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v1, buffer:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_15
    if-ge v2, v3, :cond_36

    aget-object v5, v0, v2

    .line 170
    .local v5, s:Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 171
    .local v4, mapped:Ljava/lang/String;
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_32

    .line 172
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :goto_2a
    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 174
    :cond_32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 179
    .end local v4           #mapped:Ljava/lang/String;
    .end local v5           #s:Ljava/lang/String;
    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getCountCursor([Ljava/lang/String;I)Landroid/database/MatrixCursor;
    .registers 6
    .parameter "projection"
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    .line 342
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 343
    .local v0, c:Landroid/database/MatrixCursor;
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 344
    return-object v0
.end method

.method public static hasCount([Ljava/lang/String;)Z
    .registers 5
    .parameter "input"

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, foundCount:Z
    if-eqz p0, :cond_1c

    .line 350
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 351
    aget-object v2, p0, v1

    const-string v3, "count("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "_count"

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 352
    :cond_1b
    const/4 v0, 0x1

    .line 357
    .end local v1           #i:I
    :cond_1c
    if-eqz v0, :cond_2d

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2d

    .line 358
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Count can be the only column in the projection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    .restart local v1       #i:I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 361
    .end local v1           #i:I
    :cond_2d
    return v0
.end method

.method public static final quoteStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "valueToQuote"

    .prologue
    const/16 v6, 0x27

    .line 72
    const/16 v4, 0x27

    .line 73
    .local v4, quoteChar:C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 74
    .local v3, length:I
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0xc

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 76
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v3, :cond_26

    .line 78
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 79
    .local v1, c:C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    if-ne v1, v6, :cond_23

    .line 81
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 84
    .end local v1           #c:C
    :cond_26
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
