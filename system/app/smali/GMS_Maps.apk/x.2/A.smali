.class abstract Lx/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method private c(III)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 242
    invoke-virtual {p0, p1, p2, p3}, Lx/a;->a(III)D

    move-result-wide v0

    .line 243
    cmpl-double v2, v0, v3

    if-lez v2, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    cmpl-double v0, v0, v3

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_b

    :cond_12
    const/4 v0, -0x1

    goto :goto_b
.end method


# virtual methods
.method public abstract a(I)D
.end method

.method public a(III)D
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lx/a;->a(I)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lx/a;->b(I)D

    move-result-wide v2

    invoke-virtual {p0, p2}, Lx/a;->a(I)D

    move-result-wide v4

    invoke-virtual {p0, p2}, Lx/a;->b(I)D

    move-result-wide v6

    invoke-virtual {p0, p3}, Lx/a;->a(I)D

    move-result-wide v8

    invoke-virtual {p0, p3}, Lx/a;->b(I)D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lx/y;->a(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract a()I
.end method

.method public a(II)I
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lx/a;->a(I)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lx/a;->b(I)D

    move-result-wide v2

    invoke-virtual {p0, p2}, Lx/a;->a(I)D

    move-result-wide v4

    invoke-virtual {p0, p2}, Lx/a;->b(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lx/y;->a(DDDD)I

    move-result v0

    return v0
.end method

.method abstract a(I[DII)V
.end method

.method public a(IIIII)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0, p1, p2}, Lx/a;->a(II)I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0, p1, p3}, Lx/a;->a(II)I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0, p1, p4}, Lx/a;->a(II)I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0, p1, p5}, Lx/a;->a(II)I

    move-result v2

    if-nez v2, :cond_1d

    :cond_1b
    move v0, v1

    .line 236
    :cond_1c
    :goto_1c
    return v0

    .line 169
    :cond_1d
    invoke-direct {p0, p2, p1, p3}, Lx/a;->c(III)I

    move-result v2

    if-nez v2, :cond_29

    invoke-direct {p0, p4, p1, p5}, Lx/a;->c(III)I

    move-result v2

    if-eqz v2, :cond_35

    :cond_29
    invoke-direct {p0, p2, p1, p5}, Lx/a;->c(III)I

    move-result v2

    if-nez v2, :cond_37

    invoke-direct {p0, p4, p1, p3}, Lx/a;->c(III)I

    move-result v2

    if-nez v2, :cond_37

    :cond_35
    move v0, v1

    .line 174
    goto :goto_1c

    .line 176
    :cond_37
    invoke-direct {p0, p2, p1, p4}, Lx/a;->c(III)I

    move-result v2

    if-nez v2, :cond_59

    invoke-direct {p0, p3, p1, p5}, Lx/a;->c(III)I

    move-result v2

    if-nez v2, :cond_59

    .line 180
    invoke-virtual {p0, p2, p1}, Lx/a;->a(II)I

    move-result v2

    invoke-virtual {p0, p4, p1}, Lx/a;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_57

    invoke-virtual {p0, p3, p1}, Lx/a;->a(II)I

    move-result v2

    invoke-virtual {p0, p5, p1}, Lx/a;->a(II)I

    move-result v3

    if-ne v2, v3, :cond_1c

    :cond_57
    move v0, v1

    goto :goto_1c

    .line 184
    :cond_59
    invoke-direct {p0, p2, p1, p4}, Lx/a;->c(III)I

    move-result v2

    if-nez v2, :cond_75

    .line 185
    invoke-virtual {p0, p2, p1}, Lx/a;->a(II)I

    move-result v2

    invoke-virtual {p0, p4, p1}, Lx/a;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_73

    invoke-direct {p0, p2, p1, p3}, Lx/a;->c(III)I

    move-result v2

    invoke-direct {p0, p2, p1, p5}, Lx/a;->c(III)I

    move-result v3

    if-ne v2, v3, :cond_1c

    :cond_73
    move v0, v1

    goto :goto_1c

    .line 187
    :cond_75
    invoke-direct {p0, p3, p1, p5}, Lx/a;->c(III)I

    move-result v2

    if-nez v2, :cond_91

    .line 188
    invoke-virtual {p0, p3, p1}, Lx/a;->a(II)I

    move-result v2

    invoke-virtual {p0, p5, p1}, Lx/a;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_8f

    invoke-direct {p0, p3, p1, p2}, Lx/a;->c(III)I

    move-result v2

    invoke-direct {p0, p3, p1, p4}, Lx/a;->c(III)I

    move-result v3

    if-ne v2, v3, :cond_1c

    :cond_8f
    move v0, v1

    goto :goto_1c

    .line 196
    :cond_91
    invoke-direct {p0, p2, p1, p3}, Lx/a;->c(III)I

    move-result v2

    if-nez v2, :cond_116

    move v2, p5

    move v4, p4

    move v5, p3

    move v6, p2

    .line 202
    :goto_9b
    invoke-direct {p0, p2, p1, p5}, Lx/a;->c(III)I

    move-result v7

    if-nez v7, :cond_a5

    move v2, p3

    move v4, p4

    move v5, p5

    move v6, p2

    .line 208
    :cond_a5
    invoke-direct {p0, p3, p1, p4}, Lx/a;->c(III)I

    move-result v7

    if-nez v7, :cond_af

    move v2, p2

    move v4, p5

    move v5, p4

    move v6, p3

    .line 214
    :cond_af
    invoke-direct {p0, p4, p1, p5}, Lx/a;->c(III)I

    move-result v7

    if-nez v7, :cond_b9

    move v2, p3

    move v4, p2

    move v5, p5

    move v6, p4

    .line 220
    :cond_b9
    if-eq v6, v3, :cond_dc

    .line 221
    invoke-virtual {p0, p1, v6}, Lx/a;->a(II)I

    move-result v3

    invoke-virtual {p0, p1, v5}, Lx/a;->a(II)I

    move-result v5

    if-eq v3, v5, :cond_d9

    invoke-direct {p0, v6, p1, v4}, Lx/a;->c(III)I

    move-result v3

    invoke-direct {p0, v6, p1, v2}, Lx/a;->c(III)I

    move-result v5

    if-ne v3, v5, :cond_d9

    invoke-direct {p0, v4, p1, v6}, Lx/a;->c(III)I

    move-result v3

    invoke-direct {p0, v4, p1, v2}, Lx/a;->c(III)I

    move-result v2

    if-eq v3, v2, :cond_1c

    :cond_d9
    move v0, v1

    goto/16 :goto_1c

    .line 227
    :cond_dc
    invoke-direct {p0, p2, p1, p3}, Lx/a;->c(III)I

    move-result v2

    invoke-direct {p0, p2, p1, p5}, Lx/a;->c(III)I

    move-result v3

    if-eq v2, v3, :cond_ff

    .line 231
    invoke-direct {p0, p2, p1, p4}, Lx/a;->c(III)I

    move-result v2

    invoke-direct {p0, p2, p1, p3}, Lx/a;->c(III)I

    move-result v3

    if-ne v2, v3, :cond_fd

    .line 232
    :goto_f0
    invoke-direct {p0, p3, p1, p2}, Lx/a;->c(III)I

    move-result v2

    invoke-direct {p0, p3, p1, p4}, Lx/a;->c(III)I

    move-result v3

    if-ne v2, v3, :cond_1c

    move v0, v1

    goto/16 :goto_1c

    :cond_fd
    move p3, p5

    .line 231
    goto :goto_f0

    .line 236
    :cond_ff
    invoke-direct {p0, p2, p1, p3}, Lx/a;->c(III)I

    move-result v2

    invoke-direct {p0, p2, p1, p4}, Lx/a;->c(III)I

    move-result v3

    if-ne v2, v3, :cond_113

    invoke-direct {p0, p4, p1, p3}, Lx/a;->c(III)I

    move-result v2

    invoke-direct {p0, p4, p1, p5}, Lx/a;->c(III)I

    move-result v3

    if-ne v2, v3, :cond_1c

    :cond_113
    move v0, v1

    goto/16 :goto_1c

    :cond_116
    move v2, v3

    move v4, v3

    move v5, v3

    move v6, v3

    goto :goto_9b
.end method

.method public abstract b(I)D
.end method

.method public b(III)D
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lx/a;->a(I)D

    move-result-wide v0

    invoke-virtual {p0, p2}, Lx/a;->a(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0, p3}, Lx/a;->b(I)D

    move-result-wide v2

    invoke-virtual {p0, p2}, Lx/a;->b(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-virtual {p0, p1}, Lx/a;->b(I)D

    move-result-wide v2

    invoke-virtual {p0, p2}, Lx/a;->b(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p0, p3}, Lx/a;->a(I)D

    move-result-wide v4

    invoke-virtual {p0, p2}, Lx/a;->a(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    neg-double v0, v0

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public abstract c(I)I
.end method

.method public abstract d(I)I
.end method

.method public abstract e(I)Lx/c;
.end method

.method public f(I)I
    .registers 3
    .parameter

    .prologue
    .line 262
    if-ltz p1, :cond_6

    iget v0, p0, Lx/a;->a:I

    if-lt p1, v0, :cond_c

    .line 263
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 265
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public g(I)I
    .registers 3
    .parameter

    .prologue
    .line 271
    if-nez p1, :cond_4

    .line 272
    const/4 v0, 0x0

    .line 275
    :goto_3
    return v0

    .line 274
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 275
    iget v0, p0, Lx/a;->a:I

    goto :goto_3

    .line 277
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected h(I)I
    .registers 4
    .parameter

    .prologue
    .line 293
    iget v0, p0, Lx/a;->a:I

    if-nez v0, :cond_a

    .line 294
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 296
    :cond_a
    iget v0, p0, Lx/a;->a:I

    rem-int v0, p1, v0

    .line 299
    if-gez v0, :cond_13

    iget v1, p0, Lx/a;->a:I

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method
