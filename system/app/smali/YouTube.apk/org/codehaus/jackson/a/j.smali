.class public abstract Lorg/codehaus/jackson/a/j;
.super Lorg/codehaus/jackson/a/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/b/c;ILjava/io/Reader;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/a/m;-><init>(Lorg/codehaus/jackson/b/c;ILjava/io/Reader;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected final a(IZ)Lorg/codehaus/jackson/JsonToken;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v3, 0x7ff0

    const-wide/high16 v1, -0x10

    .line 338
    const/16 v0, 0x49

    if-ne p1, v0, :cond_5d

    .line 339
    iget v0, p0, Lorg/codehaus/jackson/a/j;->s:I

    iget v5, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-lt v0, v5, :cond_18

    .line 340
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-nez v0, :cond_18

    .line 341
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->u()V

    .line 344
    :cond_18
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->L:[C

    iget v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/a/j;->s:I

    aget-char p1, v0, v5

    .line 345
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_64

    .line 346
    if-eqz p2, :cond_3c

    const-string v0, "-INF"

    .line 347
    :goto_2a
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;I)Z

    .line 348
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 349
    if-eqz p2, :cond_3f

    :goto_37
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 364
    :goto_3b
    return-object v0

    .line 346
    :cond_3c
    const-string v0, "+INF"

    goto :goto_2a

    :cond_3f
    move-wide v1, v3

    .line 349
    goto :goto_37

    .line 351
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->d(Ljava/lang/String;)V

    .line 363
    :cond_5d
    :goto_5d
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/j;->a(ILjava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    goto :goto_3b

    .line 353
    :cond_64
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_5d

    .line 354
    if-eqz p2, :cond_7e

    const-string v0, "-Infinity"

    .line 355
    :goto_6c
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;I)Z

    .line 356
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 357
    if-eqz p2, :cond_81

    :goto_79
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_3b

    .line 354
    :cond_7e
    const-string v0, "+Infinity"

    goto :goto_6c

    :cond_81
    move-wide v1, v3

    .line 357
    goto :goto_79

    .line 359
    :cond_83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->d(Ljava/lang/String;)V

    goto :goto_5d
.end method

.method protected final c(I)Lorg/codehaus/jackson/JsonToken;
    .registers 13
    .parameter

    .prologue
    .line 60
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_27

    const/4 v0, 0x1

    .line 61
    :goto_5
    iget v1, p0, Lorg/codehaus/jackson/a/j;->s:I

    .line 62
    add-int/lit8 v4, v1, -0x1

    .line 63
    iget v7, p0, Lorg/codehaus/jackson/a/j;->t:I

    .line 67
    if-eqz v0, :cond_29

    .line 68
    iget v2, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-ge v1, v2, :cond_b7

    .line 69
    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->L:[C

    add-int/lit8 v2, v1, 0x1

    aget-char p1, v3, v1

    .line 73
    const/16 v1, 0x39

    if-gt p1, v1, :cond_1f

    const/16 v1, 0x30

    if-ge p1, v1, :cond_2a

    .line 74
    :cond_1f
    iput v2, p0, Lorg/codehaus/jackson/a/j;->s:I

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/j;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 165
    :goto_26
    return-object v0

    .line 60
    :cond_27
    const/4 v0, 0x0

    goto :goto_5

    :cond_29
    move v2, v1

    .line 83
    :cond_2a
    const/16 v1, 0x30

    if-eq p1, v1, :cond_b7

    .line 84
    const/4 v1, 0x1

    .line 99
    :goto_2f
    iget v3, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-ge v2, v3, :cond_b7

    .line 100
    iget-object v5, p0, Lorg/codehaus/jackson/a/j;->L:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v5, v5, v2

    .line 103
    const/16 v2, 0x30

    if-lt v5, v2, :cond_45

    const/16 v2, 0x39

    if-gt v5, v2, :cond_45

    .line 104
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2f

    .line 109
    :cond_45
    const/4 v2, 0x0

    .line 112
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_66

    move v5, v3

    .line 115
    :goto_4b
    if-ge v5, v7, :cond_b7

    .line 116
    iget-object v6, p0, Lorg/codehaus/jackson/a/j;->L:[C

    add-int/lit8 v3, v5, 0x1

    aget-char v5, v6, v5

    .line 119
    const/16 v6, 0x30

    if-lt v5, v6, :cond_5f

    const/16 v6, 0x39

    if-gt v5, v6, :cond_5f

    .line 120
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    goto :goto_4b

    .line 125
    :cond_5f
    if-nez v2, :cond_66

    .line 126
    const-string v6, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/jackson/a/j;->a(ILjava/lang/String;)V

    :cond_66
    move v6, v2

    .line 130
    const/4 v2, 0x0

    .line 131
    const/16 v8, 0x65

    if-eq v5, v8, :cond_70

    const/16 v8, 0x45

    if-ne v5, v8, :cond_a5

    .line 132
    :cond_70
    if-ge v3, v7, :cond_b7

    .line 133
    iget-object v8, p0, Lorg/codehaus/jackson/a/j;->L:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v8, v3

    .line 137
    const/16 v8, 0x2d

    if-eq v3, v8, :cond_80

    const/16 v8, 0x2b

    if-ne v3, v8, :cond_2c7

    .line 138
    :cond_80
    if-ge v5, v7, :cond_b7

    .line 139
    iget-object v8, p0, Lorg/codehaus/jackson/a/j;->L:[C

    add-int/lit8 v3, v5, 0x1

    aget-char v5, v8, v5

    .line 143
    :goto_88
    const/16 v8, 0x39

    if-gt v5, v8, :cond_9e

    const/16 v8, 0x30

    if-lt v5, v8, :cond_9e

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    if-ge v3, v7, :cond_b7

    .line 146
    iget-object v8, p0, Lorg/codehaus/jackson/a/j;->L:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v8, v3

    move v10, v5

    move v5, v3

    move v3, v10

    goto :goto_88

    .line 151
    :cond_9e
    if-nez v2, :cond_a5

    .line 152
    const-string v7, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v7}, Lorg/codehaus/jackson/a/j;->a(ILjava/lang/String;)V

    .line 157
    :cond_a5
    add-int/lit8 v3, v3, -0x1

    .line 158
    iput v3, p0, Lorg/codehaus/jackson/a/j;->s:I

    .line 159
    sub-int/2addr v3, v4

    .line 160
    iget-object v5, p0, Lorg/codehaus/jackson/a/j;->C:Lorg/codehaus/jackson/util/c;

    iget-object v7, p0, Lorg/codehaus/jackson/a/j;->L:[C

    invoke-virtual {v5, v7, v4, v3}, Lorg/codehaus/jackson/util/c;->a([CII)V

    .line 161
    invoke-virtual {p0, v0, v1, v6, v2}, Lorg/codehaus/jackson/a/j;->a(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_26

    .line 164
    :cond_b7
    if-eqz v0, :cond_1f4

    add-int/lit8 v1, v4, 0x1

    :goto_bb
    iput v1, p0, Lorg/codehaus/jackson/a/j;->s:I

    .line 165
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v0, :cond_cc

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v4, 0x2d

    aput-char v4, v3, v2

    :cond_cc
    const/4 v4, 0x0

    iget v2, p0, Lorg/codehaus/jackson/a/j;->s:I

    iget v5, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-ge v2, v5, :cond_1f7

    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->L:[C

    iget v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/a/j;->s:I

    aget-char v2, v2, v5

    :goto_dd
    const/16 v5, 0x30

    if-ne v2, v5, :cond_ef

    iget v2, p0, Lorg/codehaus/jackson/a/j;->s:I

    iget v5, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-lt v2, v5, :cond_1ff

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v2

    if-nez v2, :cond_1ff

    const/16 v2, 0x30

    :cond_ef
    :goto_ef
    const/4 v6, 0x0

    move v10, v2

    move-object v2, v3

    move v3, v10

    :goto_f3
    const/16 v5, 0x30

    if-lt v3, v5, :cond_2c1

    const/16 v5, 0x39

    if-gt v3, v5, :cond_2c1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    if-lt v1, v5, :cond_107

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v2

    const/4 v1, 0x0

    :cond_107
    add-int/lit8 v5, v1, 0x1

    aput-char v3, v2, v1

    iget v1, p0, Lorg/codehaus/jackson/a/j;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-lt v1, v3, :cond_252

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v1

    if-nez v1, :cond_252

    const/4 v1, 0x0

    const/4 v6, 0x1

    move v8, v4

    move-object v4, v2

    move v2, v1

    :goto_11c
    if-nez v8, :cond_13e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing integer part (next char "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lorg/codehaus/jackson/a/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/j;->b(Ljava/lang/String;)V

    :cond_13e
    const/4 v1, 0x0

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2ba

    add-int/lit8 v3, v5, 0x1

    aput-char v2, v4, v5

    :goto_147
    iget v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    iget v7, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-lt v5, v7, :cond_25f

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v5

    if-nez v5, :cond_25f

    const/4 v6, 0x1

    move v5, v6

    :goto_155
    if-nez v1, :cond_15c

    const-string v6, "Decimal point not followed by a digit"

    invoke-virtual {p0, v2, v6}, Lorg/codehaus/jackson/a/j;->a(ILjava/lang/String;)V

    :cond_15c
    move v7, v1

    move v6, v2

    move v1, v3

    move-object v2, v4

    :goto_160
    const/4 v4, 0x0

    const/16 v3, 0x65

    if-eq v6, v3, :cond_169

    const/16 v3, 0x45

    if-ne v6, v3, :cond_2b1

    :cond_169
    array-length v3, v2

    if-lt v1, v3, :cond_173

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v2

    const/4 v1, 0x0

    :cond_173
    add-int/lit8 v3, v1, 0x1

    aput-char v6, v2, v1

    iget v1, p0, Lorg/codehaus/jackson/a/j;->s:I

    iget v6, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-ge v1, v6, :cond_284

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->L:[C

    iget v6, p0, Lorg/codehaus/jackson/a/j;->s:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lorg/codehaus/jackson/a/j;->s:I

    aget-char v6, v1, v6

    :goto_187
    const/16 v1, 0x2d

    if-eq v6, v1, :cond_18f

    const/16 v1, 0x2b

    if-ne v6, v1, :cond_2ab

    :cond_18f
    array-length v1, v2

    if-lt v3, v1, :cond_2a8

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v2

    const/4 v1, 0x0

    :goto_199
    add-int/lit8 v3, v1, 0x1

    aput-char v6, v2, v1

    iget v1, p0, Lorg/codehaus/jackson/a/j;->s:I

    iget v6, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-ge v1, v6, :cond_28c

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->L:[C

    iget v6, p0, Lorg/codehaus/jackson/a/j;->s:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lorg/codehaus/jackson/a/j;->s:I

    aget-char v1, v1, v6

    move v10, v4

    move-object v4, v2

    move v2, v10

    :goto_1b0
    move v6, v1

    move v1, v3

    :goto_1b2
    const/16 v3, 0x39

    if-gt v6, v3, :cond_2a3

    const/16 v3, 0x30

    if-lt v6, v3, :cond_2a3

    add-int/lit8 v2, v2, 0x1

    array-length v3, v4

    if-lt v1, v3, :cond_1c6

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v4

    const/4 v1, 0x0

    :cond_1c6
    add-int/lit8 v3, v1, 0x1

    aput-char v6, v4, v1

    iget v1, p0, Lorg/codehaus/jackson/a/j;->s:I

    iget v9, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-lt v1, v9, :cond_297

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v1

    if-nez v1, :cond_297

    const/4 v5, 0x1

    move v4, v2

    move v1, v5

    move v2, v3

    :goto_1da
    if-nez v4, :cond_1e1

    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v6, v3}, Lorg/codehaus/jackson/a/j;->a(ILjava/lang/String;)V

    :cond_1e1
    :goto_1e1
    if-nez v1, :cond_1e9

    iget v1, p0, Lorg/codehaus/jackson/a/j;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/a/j;->s:I

    :cond_1e9
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/util/c;->a(I)V

    invoke-virtual {p0, v0, v8, v7, v4}, Lorg/codehaus/jackson/a/j;->a(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_26

    :cond_1f4
    move v1, v4

    .line 164
    goto/16 :goto_bb

    .line 165
    :cond_1f7
    const-string v2, "No digit following minus sign"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/j;->e(Ljava/lang/String;)C

    move-result v2

    goto/16 :goto_dd

    :cond_1ff
    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->L:[C

    iget v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    aget-char v2, v2, v5

    const/16 v5, 0x30

    if-lt v2, v5, :cond_20d

    const/16 v5, 0x39

    if-le v2, v5, :cond_211

    :cond_20d
    const/16 v2, 0x30

    goto/16 :goto_ef

    :cond_211
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-nez v5, :cond_21e

    const-string v5, "Leading zeroes not allowed"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/j;->b(Ljava/lang/String;)V

    :cond_21e
    iget v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    const/16 v5, 0x30

    if-ne v2, v5, :cond_ef

    :cond_228
    iget v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    iget v6, p0, Lorg/codehaus/jackson/a/j;->t:I

    if-lt v5, v6, :cond_234

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v5

    if-eqz v5, :cond_ef

    :cond_234
    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->L:[C

    iget v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    aget-char v2, v2, v5

    const/16 v5, 0x30

    if-lt v2, v5, :cond_242

    const/16 v5, 0x39

    if-le v2, v5, :cond_246

    :cond_242
    const/16 v2, 0x30

    goto/16 :goto_ef

    :cond_246
    iget v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    const/16 v5, 0x30

    if-eq v2, v5, :cond_228

    goto/16 :goto_ef

    :cond_252
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->L:[C

    iget v3, p0, Lorg/codehaus/jackson/a/j;->s:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/j;->s:I

    aget-char v3, v1, v3

    move v1, v5

    goto/16 :goto_f3

    :cond_25f
    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->L:[C

    iget v5, p0, Lorg/codehaus/jackson/a/j;->s:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/j;->s:I

    aget-char v2, v2, v5

    const/16 v5, 0x30

    if-lt v2, v5, :cond_2b7

    const/16 v5, 0x39

    if-gt v2, v5, :cond_2b7

    add-int/lit8 v1, v1, 0x1

    array-length v5, v4

    if-lt v3, v5, :cond_2b5

    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v4

    const/4 v3, 0x0

    move v5, v3

    :goto_27e
    add-int/lit8 v3, v5, 0x1

    aput-char v2, v4, v5

    goto/16 :goto_147

    :cond_284
    const-string v1, "expected a digit for number exponent"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/j;->e(Ljava/lang/String;)C

    move-result v6

    goto/16 :goto_187

    :cond_28c
    const-string v1, "expected a digit for number exponent"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/j;->e(Ljava/lang/String;)C

    move-result v1

    move v10, v4

    move-object v4, v2

    move v2, v10

    goto/16 :goto_1b0

    :cond_297
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->L:[C

    iget v6, p0, Lorg/codehaus/jackson/a/j;->s:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lorg/codehaus/jackson/a/j;->s:I

    aget-char v1, v1, v6

    goto/16 :goto_1b0

    :cond_2a3
    move v4, v2

    move v2, v1

    move v1, v5

    goto/16 :goto_1da

    :cond_2a8
    move v1, v3

    goto/16 :goto_199

    :cond_2ab
    move v1, v3

    move v10, v4

    move-object v4, v2

    move v2, v10

    goto/16 :goto_1b2

    :cond_2b1
    move v2, v1

    move v1, v5

    goto/16 :goto_1e1

    :cond_2b5
    move v5, v3

    goto :goto_27e

    :cond_2b7
    move v5, v6

    goto/16 :goto_155

    :cond_2ba
    move v7, v1

    move v1, v5

    move v5, v6

    move v6, v2

    move-object v2, v4

    goto/16 :goto_160

    :cond_2c1
    move v8, v4

    move v5, v1

    move-object v4, v2

    move v2, v3

    goto/16 :goto_11c

    :cond_2c7
    move v10, v5

    move v5, v3

    move v3, v10

    goto/16 :goto_88
.end method
