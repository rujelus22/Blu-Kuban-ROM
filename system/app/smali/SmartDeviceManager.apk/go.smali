.class public abstract Lgo;
.super Lgq;
.source "a"


# direct methods
.method public constructor <init>(Lgt;ILjava/io/Reader;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lgq;-><init>(Lgt;ILjava/io/Reader;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected final c(I)Lfg;
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 60
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_53

    const/4 v0, 0x1

    .line 61
    :goto_5
    iget v1, p0, Lgo;->t:I

    .line 62
    const/4 v2, 0x1

    sub-int v2, v1, v2

    .line 63
    iget v3, p0, Lgo;->u:I

    .line 67
    if-eqz v0, :cond_26

    .line 68
    iget v4, p0, Lgo;->u:I

    if-ge v1, v4, :cond_cc

    .line 69
    iget-object v4, p0, Lgo;->M:[C

    add-int/lit8 v5, v1, 0x1

    aget-char v1, v4, v1

    .line 73
    const/16 v4, 0x39

    if-gt v1, v4, :cond_20

    const/16 v4, 0x30

    if-ge v1, v4, :cond_25

    .line 74
    :cond_20
    const-string v4, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v1, v4}, Lgo;->a(ILjava/lang/String;)V

    :cond_25
    move v1, v5

    .line 88
    :cond_26
    const/4 v4, 0x1

    move v10, v4

    move v4, v1

    move v1, v10

    .line 94
    :goto_2a
    iget v5, p0, Lgo;->u:I

    if-ge v4, v5, :cond_cc

    .line 95
    iget-object v5, p0, Lgo;->M:[C

    add-int/lit8 v6, v4, 0x1

    aget-char v4, v5, v4

    .line 98
    const/16 v5, 0x30

    if-lt v4, v5, :cond_55

    const/16 v5, 0x39

    if-gt v4, v5, :cond_55

    .line 99
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_293

    .line 103
    iget-object v4, p0, Lgo;->M:[C

    const/4 v5, 0x2

    sub-int v5, v6, v5

    aget-char v4, v4, v5

    const/16 v5, 0x30

    if-ne v4, v5, :cond_293

    .line 104
    const-string v4, "Leading zeroes not allowed"

    invoke-virtual {p0, v4}, Lgo;->b(Ljava/lang/String;)V

    move v4, v6

    goto :goto_2a

    .line 60
    :cond_53
    const/4 v0, 0x0

    goto :goto_5

    .line 109
    :cond_55
    const/4 v5, 0x0

    .line 112
    const/16 v7, 0x2e

    if-ne v4, v7, :cond_28d

    move v4, v5

    move v5, v6

    .line 115
    :goto_5c
    if-ge v5, v3, :cond_cc

    .line 116
    iget-object v6, p0, Lgo;->M:[C

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v6, v5

    .line 119
    const/16 v6, 0x30

    if-lt v5, v6, :cond_70

    const/16 v6, 0x39

    if-gt v5, v6, :cond_70

    .line 120
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_5c

    .line 125
    :cond_70
    if-nez v4, :cond_77

    .line 126
    const-string v6, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v6}, Lgo;->a(ILjava/lang/String;)V

    :cond_77
    move v6, v5

    move v5, v7

    .line 130
    :goto_79
    const/4 v7, 0x0

    .line 131
    const/16 v8, 0x65

    if-eq v6, v8, :cond_82

    const/16 v8, 0x45

    if-ne v6, v8, :cond_28a

    .line 132
    :cond_82
    if-ge v5, v3, :cond_cc

    .line 133
    iget-object v6, p0, Lgo;->M:[C

    add-int/lit8 v8, v5, 0x1

    aget-char v5, v6, v5

    .line 137
    const/16 v6, 0x2d

    if-eq v5, v6, :cond_92

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_284

    .line 138
    :cond_92
    if-ge v8, v3, :cond_cc

    .line 139
    iget-object v5, p0, Lgo;->M:[C

    add-int/lit8 v6, v8, 0x1

    aget-char v5, v5, v8

    move v10, v7

    move v7, v5

    move v5, v10

    .line 143
    :goto_9d
    const/16 v8, 0x39

    if-gt v7, v8, :cond_b2

    const/16 v8, 0x30

    if-lt v7, v8, :cond_b2

    .line 144
    add-int/lit8 v5, v5, 0x1

    .line 145
    if-ge v6, v3, :cond_cc

    .line 146
    iget-object v7, p0, Lgo;->M:[C

    add-int/lit8 v8, v6, 0x1

    aget-char v6, v7, v6

    move v7, v6

    move v6, v8

    goto :goto_9d

    .line 151
    :cond_b2
    if-nez v5, :cond_b9

    .line 152
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v7, v3}, Lgo;->a(ILjava/lang/String;)V

    :cond_b9
    move v3, v5

    move v5, v6

    .line 157
    :goto_bb
    add-int/lit8 v5, v5, -0x1

    .line 158
    iput v5, p0, Lgo;->t:I

    .line 159
    sub-int/2addr v5, v2

    .line 160
    iget-object v6, p0, Lgo;->E:Lnl;

    iget-object v7, p0, Lgo;->M:[C

    invoke-virtual {v6, v7, v2, v5}, Lnl;->a([CII)V

    .line 161
    invoke-virtual {p0, v0, v1, v4, v3}, Lgo;->a(ZIII)Lfg;

    move-result-object v0

    .line 165
    :goto_cb
    return-object v0

    .line 164
    :cond_cc
    if-eqz v0, :cond_1de

    add-int/lit8 v1, v2, 0x1

    :goto_d0
    iput v1, p0, Lgo;->t:I

    .line 165
    iget-object v1, p0, Lgo;->E:Lnl;

    invoke-virtual {v1}, Lnl;->i()[C

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_e2

    const/4 v3, 0x0

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x2d

    aput-char v4, v1, v3

    :cond_e2
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v10, v3

    move-object v3, v1

    move v1, v10

    :goto_e7
    iget v5, p0, Lgo;->t:I

    iget v6, p0, Lgo;->u:I

    if-lt v5, v6, :cond_1e1

    invoke-virtual {p0}, Lgo;->y()Z

    move-result v5

    if-nez v5, :cond_1e1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v10, v5

    move v5, v4

    move v4, v10

    :cond_f8
    if-nez v1, :cond_11a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing integer part (next char "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lgo;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgo;->b(Ljava/lang/String;)V

    :cond_11a
    const/4 v6, 0x0

    const/16 v7, 0x2e

    if-ne v5, v7, :cond_27c

    add-int/lit8 v7, v2, 0x1

    aput-char v5, v3, v2

    move v2, v6

    move-object v6, v3

    move v3, v5

    move v5, v7

    :goto_127
    iget v7, p0, Lgo;->t:I

    iget v8, p0, Lgo;->u:I

    if-lt v7, v8, :cond_21a

    invoke-virtual {p0}, Lgo;->y()Z

    move-result v7

    if-nez v7, :cond_21a

    const/4 v4, 0x1

    move v10, v4

    move v4, v3

    move v3, v10

    :goto_137
    if-nez v2, :cond_13e

    const-string v7, "Decimal point not followed by a digit"

    invoke-virtual {p0, v4, v7}, Lgo;->a(ILjava/lang/String;)V

    :cond_13e
    :goto_13e
    const/4 v7, 0x0

    const/16 v8, 0x65

    if-eq v4, v8, :cond_147

    const/16 v8, 0x45

    if-ne v4, v8, :cond_273

    :cond_147
    array-length v8, v6

    if-lt v5, v8, :cond_154

    iget-object v5, p0, Lgo;->E:Lnl;

    invoke-virtual {v5}, Lnl;->k()[C

    move-result-object v5

    const/4 v6, 0x0

    move v10, v6

    move-object v6, v5

    move v5, v10

    :cond_154
    add-int/lit8 v8, v5, 0x1

    aput-char v4, v6, v5

    iget v4, p0, Lgo;->t:I

    iget v5, p0, Lgo;->u:I

    if-ge v4, v5, :cond_242

    iget-object v4, p0, Lgo;->M:[C

    iget v5, p0, Lgo;->t:I

    add-int/lit8 v9, v5, 0x1

    iput v9, p0, Lgo;->t:I

    aget-char v4, v4, v5

    :goto_168
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_170

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_26d

    :cond_170
    array-length v5, v6

    if-lt v8, v5, :cond_26a

    iget-object v5, p0, Lgo;->E:Lnl;

    invoke-virtual {v5}, Lnl;->k()[C

    move-result-object v5

    const/4 v6, 0x0

    move v10, v6

    move-object v6, v5

    move v5, v10

    :goto_17d
    add-int/lit8 v8, v5, 0x1

    aput-char v4, v6, v5

    iget v4, p0, Lgo;->t:I

    iget v5, p0, Lgo;->u:I

    if-ge v4, v5, :cond_24a

    iget-object v4, p0, Lgo;->M:[C

    iget v5, p0, Lgo;->t:I

    add-int/lit8 v9, v5, 0x1

    iput v9, p0, Lgo;->t:I

    aget-char v4, v4, v5

    move v5, v7

    move-object v7, v6

    move v6, v8

    :goto_194
    move v10, v5

    move v5, v4

    move v4, v10

    :goto_197
    const/16 v8, 0x39

    if-gt v5, v8, :cond_265

    const/16 v8, 0x30

    if-lt v5, v8, :cond_265

    add-int/lit8 v4, v4, 0x1

    array-length v8, v7

    if-lt v6, v8, :cond_1ae

    iget-object v6, p0, Lgo;->E:Lnl;

    invoke-virtual {v6}, Lnl;->k()[C

    move-result-object v6

    const/4 v7, 0x0

    move v10, v7

    move-object v7, v6

    move v6, v10

    :cond_1ae
    add-int/lit8 v8, v6, 0x1

    aput-char v5, v7, v6

    iget v6, p0, Lgo;->t:I

    iget v9, p0, Lgo;->u:I

    if-lt v6, v9, :cond_255

    invoke-virtual {p0}, Lgo;->y()Z

    move-result v6

    if-nez v6, :cond_255

    const/4 v3, 0x1

    move v6, v8

    move v10, v3

    move v3, v4

    move v4, v10

    :goto_1c3
    if-nez v3, :cond_1ca

    const-string v7, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v7}, Lgo;->a(ILjava/lang/String;)V

    :cond_1ca
    move v5, v6

    :goto_1cb
    if-nez v4, :cond_1d3

    iget v4, p0, Lgo;->t:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    iput v4, p0, Lgo;->t:I

    :cond_1d3
    iget-object v4, p0, Lgo;->E:Lnl;

    invoke-virtual {v4, v5}, Lnl;->a(I)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lgo;->a(ZIII)Lfg;

    move-result-object v0

    goto/16 :goto_cb

    :cond_1de
    move v1, v2

    .line 164
    goto/16 :goto_d0

    .line 165
    :cond_1e1
    iget-object v5, p0, Lgo;->M:[C

    iget v6, p0, Lgo;->t:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lgo;->t:I

    aget-char v5, v5, v6

    const/16 v6, 0x30

    if-lt v5, v6, :cond_f8

    const/16 v6, 0x39

    if-gt v5, v6, :cond_f8

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_206

    const/4 v6, 0x1

    sub-int v6, v2, v6

    aget-char v6, v3, v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_206

    const-string v6, "Leading zeroes not allowed"

    invoke-virtual {p0, v6}, Lgo;->b(Ljava/lang/String;)V

    :cond_206
    array-length v6, v3

    if-lt v2, v6, :cond_213

    iget-object v2, p0, Lgo;->E:Lnl;

    invoke-virtual {v2}, Lnl;->k()[C

    move-result-object v2

    const/4 v3, 0x0

    move v10, v3

    move-object v3, v2

    move v2, v10

    :cond_213
    add-int/lit8 v6, v2, 0x1

    aput-char v5, v3, v2

    move v2, v6

    goto/16 :goto_e7

    :cond_21a
    iget-object v3, p0, Lgo;->M:[C

    iget v7, p0, Lgo;->t:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lgo;->t:I

    aget-char v3, v3, v7

    const/16 v7, 0x30

    if-lt v3, v7, :cond_277

    const/16 v7, 0x39

    if-gt v3, v7, :cond_277

    add-int/lit8 v2, v2, 0x1

    array-length v7, v6

    if-lt v5, v7, :cond_23b

    iget-object v5, p0, Lgo;->E:Lnl;

    invoke-virtual {v5}, Lnl;->k()[C

    move-result-object v5

    const/4 v6, 0x0

    move v10, v6

    move-object v6, v5

    move v5, v10

    :cond_23b
    add-int/lit8 v7, v5, 0x1

    aput-char v3, v6, v5

    move v5, v7

    goto/16 :goto_127

    :cond_242
    const-string v4, "expected a digit for number exponent"

    invoke-virtual {p0, v4}, Lgo;->e(Ljava/lang/String;)C

    move-result v4

    goto/16 :goto_168

    :cond_24a
    const-string v4, "expected a digit for number exponent"

    invoke-virtual {p0, v4}, Lgo;->e(Ljava/lang/String;)C

    move-result v4

    move v5, v7

    move-object v7, v6

    move v6, v8

    goto/16 :goto_194

    :cond_255
    iget-object v5, p0, Lgo;->M:[C

    iget v6, p0, Lgo;->t:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lgo;->t:I

    aget-char v5, v5, v6

    move v6, v8

    move v10, v4

    move v4, v5

    move v5, v10

    goto/16 :goto_194

    :cond_265
    move v10, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_1c3

    :cond_26a
    move v5, v8

    goto/16 :goto_17d

    :cond_26d
    move v5, v4

    move v4, v7

    move-object v7, v6

    move v6, v8

    goto/16 :goto_197

    :cond_273
    move v4, v3

    move v3, v7

    goto/16 :goto_1cb

    :cond_277
    move v10, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_137

    :cond_27c
    move v10, v6

    move-object v6, v3

    move v3, v4

    move v4, v5

    move v5, v2

    move v2, v10

    goto/16 :goto_13e

    :cond_284
    move v6, v8

    move v10, v7

    move v7, v5

    move v5, v10

    goto/16 :goto_9d

    :cond_28a
    move v3, v7

    goto/16 :goto_bb

    :cond_28d
    move v10, v5

    move v5, v6

    move v6, v4

    move v4, v10

    goto/16 :goto_79

    :cond_293
    move v4, v6

    goto/16 :goto_2a
.end method
