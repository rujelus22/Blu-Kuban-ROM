.class abstract Lcom/google/common/base/af;
.super Lcom/google/common/base/ad;
.source "SourceFile"


# instance fields
.field final d:Ljava/lang/CharSequence;

.field final e:Lcom/google/common/base/b;

.field final f:Z

.field g:I

.field h:I


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Y;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/base/ad;-><init>(Lcom/google/common/base/Z;)V

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/af;->g:I

    .line 400
    invoke-static {p1}, Lcom/google/common/base/Y;->b(Lcom/google/common/base/Y;)Lcom/google/common/base/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/af;->e:Lcom/google/common/base/b;

    .line 401
    invoke-static {p1}, Lcom/google/common/base/Y;->c(Lcom/google/common/base/Y;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/af;->f:Z

    .line 402
    invoke-static {p1}, Lcom/google/common/base/Y;->d(Lcom/google/common/base/Y;)I

    move-result v0

    iput v0, p0, Lcom/google/common/base/af;->h:I

    .line 403
    iput-object p2, p0, Lcom/google/common/base/af;->d:Ljava/lang/CharSequence;

    .line 404
    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method protected synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/common/base/af;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract b(I)I
.end method

.method protected d()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 407
    :cond_1
    iget v0, p0, Lcom/google/common/base/af;->g:I

    if-eq v0, v5, :cond_7f

    .line 408
    iget v1, p0, Lcom/google/common/base/af;->g:I

    .line 411
    iget v0, p0, Lcom/google/common/base/af;->g:I

    invoke-virtual {p0, v0}, Lcom/google/common/base/af;->a(I)I

    move-result v0

    .line 412
    if-ne v0, v5, :cond_2a

    .line 413
    iget-object v0, p0, Lcom/google/common/base/af;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 414
    iput v5, p0, Lcom/google/common/base/af;->g:I

    .line 420
    :goto_17
    if-ge v1, v0, :cond_31

    iget-object v2, p0, Lcom/google/common/base/af;->e:Lcom/google/common/base/b;

    iget-object v3, p0, Lcom/google/common/base/af;->d:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/b;->b(C)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 417
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/google/common/base/af;->b(I)I

    move-result v2

    iput v2, p0, Lcom/google/common/base/af;->g:I

    goto :goto_17

    .line 423
    :cond_31
    :goto_31
    if-le v0, v1, :cond_46

    iget-object v2, p0, Lcom/google/common/base/af;->e:Lcom/google/common/base/b;

    iget-object v3, p0, Lcom/google/common/base/af;->d:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/b;->b(C)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 424
    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    .line 427
    :cond_46
    iget-boolean v2, p0, Lcom/google/common/base/af;->f:Z

    if-eqz v2, :cond_4c

    if-eq v1, v0, :cond_1

    .line 431
    :cond_4c
    iget v2, p0, Lcom/google/common/base/af;->h:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6e

    .line 435
    iget-object v0, p0, Lcom/google/common/base/af;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 436
    iput v5, p0, Lcom/google/common/base/af;->g:I

    .line 438
    :goto_59
    if-le v0, v1, :cond_74

    iget-object v2, p0, Lcom/google/common/base/af;->e:Lcom/google/common/base/b;

    iget-object v3, p0, Lcom/google/common/base/af;->d:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/b;->b(C)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 439
    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    .line 442
    :cond_6e
    iget v2, p0, Lcom/google/common/base/af;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/base/af;->h:I

    .line 445
    :cond_74
    iget-object v2, p0, Lcom/google/common/base/af;->d:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    :goto_7e
    return-object v0

    :cond_7f
    invoke-virtual {p0}, Lcom/google/common/base/af;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7e
.end method
