.class public abstract Lq;
.super Lt;


# direct methods
.method public constructor <init>(Lz;ILjava/io/Reader;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lt;-><init>(Lz;ILjava/io/Reader;)V

    return-void
.end method


# virtual methods
.method protected final c(I)Lorg/codehaus/jackson/JsonToken;
    .registers 13

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_50

    const/4 v0, 0x1

    :goto_5
    iget v2, p0, Lq;->s:I

    add-int/lit8 v4, v2, -0x1

    iget v7, p0, Lq;->t:I

    if-eqz v0, :cond_266

    iget v1, p0, Lq;->t:I

    if-ge v2, v1, :cond_c3

    iget-object v3, p0, Lq;->L:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1f

    const/16 v3, 0x30

    if-ge v2, v3, :cond_24

    :cond_1f
    const-string v3, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v2, v3}, Lq;->a(ILjava/lang/String;)V

    :cond_24
    :goto_24
    const/4 v2, 0x1

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_28
    iget v3, p0, Lq;->t:I

    if-ge v2, v3, :cond_c3

    iget-object v5, p0, Lq;->L:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v5, v5, v2

    const/16 v2, 0x30

    if-lt v5, v2, :cond_52

    const/16 v2, 0x39

    if-gt v5, v2, :cond_52

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_263

    iget-object v2, p0, Lq;->L:[C

    add-int/lit8 v5, v3, -0x2

    aget-char v2, v2, v5

    const/16 v5, 0x30

    if-ne v2, v5, :cond_263

    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lq;->b(Ljava/lang/String;)V

    move v2, v3

    goto :goto_28

    :cond_50
    const/4 v0, 0x0

    goto :goto_5

    :cond_52
    const/4 v2, 0x0

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_73

    move v5, v3

    :goto_58
    if-ge v5, v7, :cond_c3

    iget-object v6, p0, Lq;->L:[C

    add-int/lit8 v3, v5, 0x1

    aget-char v5, v6, v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_6c

    const/16 v6, 0x39

    if-gt v5, v6, :cond_6c

    add-int/lit8 v2, v2, 0x1

    move v5, v3

    goto :goto_58

    :cond_6c
    if-nez v2, :cond_73

    const-string v6, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v6}, Lq;->a(ILjava/lang/String;)V

    :cond_73
    move v6, v2

    const/4 v2, 0x0

    const/16 v8, 0x65

    if-eq v5, v8, :cond_7d

    const/16 v8, 0x45

    if-ne v5, v8, :cond_b2

    :cond_7d
    if-ge v3, v7, :cond_c3

    iget-object v8, p0, Lq;->L:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v8, v3

    const/16 v8, 0x2d

    if-eq v3, v8, :cond_8d

    const/16 v8, 0x2b

    if-ne v3, v8, :cond_25e

    :cond_8d
    if-ge v5, v7, :cond_c3

    iget-object v8, p0, Lq;->L:[C

    add-int/lit8 v3, v5, 0x1

    aget-char v5, v8, v5

    :goto_95
    const/16 v8, 0x39

    if-gt v5, v8, :cond_ab

    const/16 v8, 0x30

    if-lt v5, v8, :cond_ab

    add-int/lit8 v2, v2, 0x1

    if-ge v3, v7, :cond_c3

    iget-object v8, p0, Lq;->L:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v8, v3

    move v10, v5

    move v5, v3

    move v3, v10

    goto :goto_95

    :cond_ab
    if-nez v2, :cond_b2

    const-string v7, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v7}, Lq;->a(ILjava/lang/String;)V

    :cond_b2
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lq;->s:I

    sub-int/2addr v3, v4

    iget-object v5, p0, Lq;->C:Lorg/codehaus/jackson/util/c;

    iget-object v7, p0, Lq;->L:[C

    invoke-virtual {v5, v7, v4, v3}, Lorg/codehaus/jackson/util/c;->a([CII)V

    invoke-virtual {p0, v0, v1, v6, v2}, Lq;->a(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_c2
    return-object v0

    :cond_c3
    if-eqz v0, :cond_1c4

    add-int/lit8 v1, v4, 0x1

    :goto_c7
    iput v1, p0, Lq;->s:I

    iget-object v1, p0, Lq;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v0, :cond_d8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v4, 0x2d

    aput-char v4, v3, v2

    :cond_d8
    const/4 v2, 0x0

    const/4 v7, 0x0

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_dd
    iget v4, p0, Lq;->s:I

    iget v5, p0, Lq;->t:I

    if-lt v4, v5, :cond_1c7

    invoke-virtual {p0}, Lq;->l()Z

    move-result v4

    if-nez v4, :cond_1c7

    const/4 v5, 0x0

    const/4 v7, 0x1

    :cond_eb
    if-nez v1, :cond_109

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Missing integer part (next char "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lq;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lq;->b(Ljava/lang/String;)V

    :cond_109
    const/4 v4, 0x0

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_257

    add-int/lit8 v6, v2, 0x1

    aput-char v5, v3, v2

    move v2, v4

    move v4, v6

    move v10, v5

    move-object v5, v3

    move v3, v10

    :goto_117
    iget v6, p0, Lq;->s:I

    iget v8, p0, Lq;->t:I

    if-lt v6, v8, :cond_1fc

    invoke-virtual {p0}, Lq;->l()Z

    move-result v6

    if-nez v6, :cond_1fc

    const/4 v7, 0x1

    move v6, v7

    :goto_125
    if-nez v2, :cond_12c

    const-string v7, "Decimal point not followed by a digit"

    invoke-virtual {p0, v3, v7}, Lq;->a(ILjava/lang/String;)V

    :cond_12c
    move v8, v2

    move v7, v3

    move v2, v4

    move-object v3, v5

    :goto_130
    const/4 v5, 0x0

    const/16 v4, 0x65

    if-eq v7, v4, :cond_139

    const/16 v4, 0x45

    if-ne v7, v4, :cond_24e

    :cond_139
    array-length v4, v3

    if-lt v2, v4, :cond_143

    iget-object v2, p0, Lq;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v3

    const/4 v2, 0x0

    :cond_143
    add-int/lit8 v4, v2, 0x1

    aput-char v7, v3, v2

    iget v2, p0, Lq;->s:I

    iget v7, p0, Lq;->t:I

    if-ge v2, v7, :cond_221

    iget-object v2, p0, Lq;->L:[C

    iget v7, p0, Lq;->s:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lq;->s:I

    aget-char v7, v2, v7

    :goto_157
    const/16 v2, 0x2d

    if-eq v7, v2, :cond_15f

    const/16 v2, 0x2b

    if-ne v7, v2, :cond_248

    :cond_15f
    array-length v2, v3

    if-lt v4, v2, :cond_245

    iget-object v2, p0, Lq;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v3

    const/4 v2, 0x0

    :goto_169
    add-int/lit8 v4, v2, 0x1

    aput-char v7, v3, v2

    iget v2, p0, Lq;->s:I

    iget v7, p0, Lq;->t:I

    if-ge v2, v7, :cond_229

    iget-object v2, p0, Lq;->L:[C

    iget v7, p0, Lq;->s:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lq;->s:I

    aget-char v2, v2, v7

    move v10, v5

    move-object v5, v3

    move v3, v10

    :goto_180
    move v7, v2

    move v2, v4

    :goto_182
    const/16 v4, 0x39

    if-gt v7, v4, :cond_240

    const/16 v4, 0x30

    if-lt v7, v4, :cond_240

    add-int/lit8 v3, v3, 0x1

    array-length v4, v5

    if-lt v2, v4, :cond_196

    iget-object v2, p0, Lq;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v5

    const/4 v2, 0x0

    :cond_196
    add-int/lit8 v4, v2, 0x1

    aput-char v7, v5, v2

    iget v2, p0, Lq;->s:I

    iget v9, p0, Lq;->t:I

    if-lt v2, v9, :cond_234

    invoke-virtual {p0}, Lq;->l()Z

    move-result v2

    if-nez v2, :cond_234

    const/4 v6, 0x1

    move v5, v3

    move v2, v6

    move v3, v4

    :goto_1aa
    if-nez v5, :cond_1b1

    const-string v4, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v7, v4}, Lq;->a(ILjava/lang/String;)V

    :cond_1b1
    :goto_1b1
    if-nez v2, :cond_1b9

    iget v2, p0, Lq;->s:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lq;->s:I

    :cond_1b9
    iget-object v2, p0, Lq;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/util/c;->a(I)V

    invoke-virtual {p0, v0, v1, v8, v5}, Lq;->a(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_c2

    :cond_1c4
    move v1, v4

    goto/16 :goto_c7

    :cond_1c7
    iget-object v4, p0, Lq;->L:[C

    iget v5, p0, Lq;->s:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lq;->s:I

    aget-char v5, v4, v5

    const/16 v4, 0x30

    if-lt v5, v4, :cond_eb

    const/16 v4, 0x39

    if-gt v5, v4, :cond_eb

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1eb

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v3, v4

    const/16 v6, 0x30

    if-ne v4, v6, :cond_1eb

    const-string v4, "Leading zeroes not allowed"

    invoke-virtual {p0, v4}, Lq;->b(Ljava/lang/String;)V

    :cond_1eb
    array-length v4, v3

    if-lt v2, v4, :cond_25c

    iget-object v2, p0, Lq;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v3

    const/4 v2, 0x0

    move v4, v2

    :goto_1f6
    add-int/lit8 v2, v4, 0x1

    aput-char v5, v3, v4

    goto/16 :goto_dd

    :cond_1fc
    iget-object v3, p0, Lq;->L:[C

    iget v6, p0, Lq;->s:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lq;->s:I

    aget-char v3, v3, v6

    const/16 v6, 0x30

    if-lt v3, v6, :cond_254

    const/16 v6, 0x39

    if-gt v3, v6, :cond_254

    add-int/lit8 v2, v2, 0x1

    array-length v6, v5

    if-lt v4, v6, :cond_252

    iget-object v4, p0, Lq;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v5

    const/4 v4, 0x0

    move v6, v4

    :goto_21b
    add-int/lit8 v4, v6, 0x1

    aput-char v3, v5, v6

    goto/16 :goto_117

    :cond_221
    const-string v2, "expected a digit for number exponent"

    invoke-virtual {p0, v2}, Lq;->e(Ljava/lang/String;)C

    move-result v7

    goto/16 :goto_157

    :cond_229
    const-string v2, "expected a digit for number exponent"

    invoke-virtual {p0, v2}, Lq;->e(Ljava/lang/String;)C

    move-result v2

    move v10, v5

    move-object v5, v3

    move v3, v10

    goto/16 :goto_180

    :cond_234
    iget-object v2, p0, Lq;->L:[C

    iget v7, p0, Lq;->s:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lq;->s:I

    aget-char v2, v2, v7

    goto/16 :goto_180

    :cond_240
    move v5, v3

    move v3, v2

    move v2, v6

    goto/16 :goto_1aa

    :cond_245
    move v2, v4

    goto/16 :goto_169

    :cond_248
    move v2, v4

    move v10, v5

    move-object v5, v3

    move v3, v10

    goto/16 :goto_182

    :cond_24e
    move v3, v2

    move v2, v6

    goto/16 :goto_1b1

    :cond_252
    move v6, v4

    goto :goto_21b

    :cond_254
    move v6, v7

    goto/16 :goto_125

    :cond_257
    move v8, v4

    move v6, v7

    move v7, v5

    goto/16 :goto_130

    :cond_25c
    move v4, v2

    goto :goto_1f6

    :cond_25e
    move v10, v5

    move v5, v3

    move v3, v10

    goto/16 :goto_95

    :cond_263
    move v2, v3

    goto/16 :goto_28

    :cond_266
    move v1, v2

    goto/16 :goto_24
.end method
