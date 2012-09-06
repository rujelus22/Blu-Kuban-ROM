.class public final Laa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 378
    if-eqz p0, :cond_6

    .line 380
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_7

    move-result p1

    .line 385
    :cond_6
    :goto_6
    return p1

    .line 381
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 270
    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v1

    move v2, v1

    .line 274
    :cond_b
    :goto_b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_37

    move v3, v1

    .line 275
    :goto_13
    if-ge v3, v4, :cond_27

    .line 276
    add-int v6, v0, v3

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_24

    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 278
    goto :goto_b

    .line 275
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 281
    :cond_27
    add-int v3, v0, v4

    invoke-virtual {p2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p2, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    add-int/lit8 v2, v2, 0x1

    .line 284
    add-int/2addr v0, v5

    .line 286
    if-nez v4, :cond_b

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 292
    :cond_37
    return v2
.end method

.method public static a(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const v4, 0xf4240

    .line 459
    .line 460
    div-int v0, p0, v4

    .line 461
    mul-int v1, v0, v4

    sub-int v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    if-gez p0, :cond_1b

    if-nez v0, :cond_1b

    .line 466
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    if-lez v1, :cond_33

    .line 470
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    add-int v0, v1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 623
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 136
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_20

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 138
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1d

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 141
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 144
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_7

    .line 333
    :goto_6
    return-object p0

    .line 329
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    :goto_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_16

    .line 331
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 333
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;ZZZ)Ljava/lang/String;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v0, v2

    move v1, p1

    .line 93
    :goto_13
    if-ge v0, v7, :cond_4b

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 95
    if-ne v8, v3, :cond_3b

    move v5, v3

    .line 97
    :goto_1c
    if-gt v8, v9, :cond_22

    if-eqz v5, :cond_3d

    if-eqz p3, :cond_3d

    :cond_22
    move v4, v3

    .line 100
    :goto_23
    if-eqz v4, :cond_44

    .line 102
    if-eqz v5, :cond_3f

    .line 103
    add-int/lit8 v4, v7, -0x1

    if-ge v0, v4, :cond_38

    .line 105
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 93
    :cond_38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3b
    move v5, v2

    .line 95
    goto :goto_1c

    :cond_3d
    move v4, v2

    .line 97
    goto :goto_23

    .line 114
    :cond_3f
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 116
    goto :goto_38

    .line 119
    :cond_44
    if-nez v1, :cond_38

    .line 120
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    .line 121
    goto :goto_38

    .line 125
    :cond_4b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 126
    if-eqz p2, :cond_5a

    if-eqz v1, :cond_5a

    if-lez v0, :cond_5a

    .line 127
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 129
    :cond_5a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 192
    new-instance v0, Laa/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laa/e;-><init>(Laa/c;)V

    .line 193
    invoke-static {v0, p0, p1}, Laa/b;->a(Laa/d;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v0}, Laa/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 307
    const-string v0, ""

    .line 316
    :goto_8
    return-object v0

    .line 310
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 314
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 316
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static varargs a(Laa/d;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0x7b

    .line 210
    const-string v0, "${I18N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 211
    invoke-interface {p0, p1}, Laa/d;->a(Ljava/lang/String;)V

    .line 213
    :cond_e
    const/4 v1, 0x0

    .line 214
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 215
    :goto_13
    if-eq v0, v5, :cond_da

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_da

    .line 216
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Laa/d;->a(Ljava/lang/String;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_3b

    .line 220
    const-string v1, "{"

    invoke-interface {p0, v1}, Laa/d;->a(Ljava/lang/String;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    .line 251
    :goto_33
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_13

    .line 225
    :cond_3b
    const/16 v1, 0x7d

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 228
    if-eq v1, v5, :cond_4a

    sub-int v2, v1, v0

    const/4 v3, 0x2

    if-gt v2, v3, :cond_4a

    if-nez v1, :cond_6d

    .line 229
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextUtil.formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_6d
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 237
    :try_start_78
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_7b} :catch_87

    move-result v1

    .line 243
    if-ltz v1, :cond_b1

    array-length v2, p2

    if-ge v1, v2, :cond_b1

    .line 244
    aget-object v1, p2, v1

    invoke-interface {p0, v1}, Laa/d;->a(Ljava/lang/Object;)V

    goto :goto_33

    .line 238
    :catch_87
    move-exception v0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextUtil.formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" tag(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextUtil.formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" param("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_da
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Laa/d;->a(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public static a(C)Z
    .registers 2
    .parameter

    .prologue
    .line 356
    const/16 v0, 0x9

    if-gt v0, p0, :cond_8

    const/16 v0, 0xd

    if-le p0, v0, :cond_38

    :cond_8
    const/16 v0, 0x20

    if-eq p0, v0, :cond_38

    const/16 v0, 0x85

    if-eq p0, v0, :cond_38

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_38

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_38

    const/16 v0, 0x180e

    if-eq p0, v0, :cond_38

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_24

    const/16 v0, 0x200a

    if-le p0, v0, :cond_38

    :cond_24
    const/16 v0, 0x2028

    if-eq p0, v0, :cond_38

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_38

    const/16 v0, 0x202f

    if-eq p0, v0, :cond_38

    const/16 v0, 0x205f

    if-eq p0, v0, :cond_38

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_3a

    :cond_38
    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public static a(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 47
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move v2, v1

    .line 48
    :goto_a
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1d

    if-ge v0, v3, :cond_1d

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 52
    if-ltz v0, :cond_18

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 49
    :cond_18
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_a

    .line 56
    :cond_1d
    add-int/lit8 v0, v2, 0x1

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    .line 58
    :goto_22
    if-ge v0, v2, :cond_36

    .line 59
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 60
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 64
    :cond_36
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 65
    return-object v3
.end method

.method public static b(Ljava/lang/String;I)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x30

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 403
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 404
    :cond_12
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 412
    :cond_18
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 415
    if-eq v2, v5, :cond_7b

    .line 416
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 417
    if-nez p1, :cond_36

    .line 418
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 431
    :goto_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_62

    .line 432
    if-nez p1, :cond_5c

    .line 448
    :goto_35
    return v1

    .line 420
    :cond_36
    if-le v0, p1, :cond_40

    .line 422
    add-int/lit8 v0, v2, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v0, p1

    .line 425
    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2d

    .line 435
    :cond_5c
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 439
    :cond_62
    if-ge v0, p1, :cond_6f

    .line 440
    if-ne v2, v5, :cond_74

    .line 442
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0, v6}, Laa/b;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 448
    :cond_6f
    :goto_6f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_35

    .line 445
    :cond_74
    add-int v0, v2, p1

    invoke-static {p0, v0, v6}, Laa/b;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_6f

    :cond_7b
    move v0, v1

    goto :goto_2d
.end method

.method public static b(C)Z
    .registers 2
    .parameter

    .prologue
    .line 370
    const/16 v0, 0x1f

    if-ge v0, p0, :cond_a

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 155
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 559
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 560
    const/4 v0, 0x1

    .line 565
    :goto_d
    return v0

    .line 562
    :cond_e
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 563
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d

    .line 565
    :cond_1c
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 162
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Laa/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 344
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 345
    const/4 v0, 0x0

    .line 347
    :goto_7
    return v0

    :cond_8
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 480
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 481
    const-string v0, ""

    .line 491
    :goto_8
    return-object v0

    .line 484
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 485
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 486
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 487
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_27

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2a

    .line 488
    :cond_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 491
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 497
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 498
    const-string p0, ""

    .line 516
    :cond_9
    return-object p0

    .line 501
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 502
    const-string v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 507
    :cond_20
    :goto_20
    const/4 v0, 0x3

    new-array v2, v0, [C

    fill-array-data v2, :array_52

    move v0, v1

    .line 508
    :goto_27
    array-length v3, v2

    if-ge v0, v3, :cond_9

    .line 510
    aget-char v3, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 511
    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    .line 512
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 508
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 503
    :cond_3a
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 504
    const-string v0, "https://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    .line 507
    nop

    :array_52
    .array-data 0x2
        0x2ft 0x0t
        0x23t 0x0t
        0x3ft 0x0t
    .end array-data
.end method

.method public static h(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/16 v8, 0x2f

    const/16 v3, 0x20

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 535
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 536
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 537
    if-ne v0, v7, :cond_14

    move-object v0, v1

    .line 551
    :goto_13
    return-object v0

    .line 540
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_5d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 543
    :goto_22
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 544
    aget-object v3, v1, v6

    const-string v4, "http://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 545
    aget-object v3, v1, v5

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v7, :cond_4c

    .line 546
    aget-object v3, v1, v5

    aget-object v4, v1, v5

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 548
    :cond_4c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_5b

    .line 549
    const/4 v3, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    :cond_5b
    move-object v0, v1

    .line 551
    goto :goto_13

    .line 541
    :cond_5d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_22
.end method

.method public static i(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 573
    if-nez p0, :cond_4

    .line 576
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    goto :goto_3
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 637
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 638
    const/16 v0, 0x200f

    .line 643
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 640
    :cond_26
    const/16 v0, 0x200e

    goto :goto_11
.end method
