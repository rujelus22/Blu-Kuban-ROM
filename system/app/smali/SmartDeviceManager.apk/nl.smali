.class public final Lnl;
.super Ljava/lang/Object;
.source "a"


# static fields
.field static final a:[C


# instance fields
.field private final b:Lne;

.field private c:[C

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:[C

.field private j:I

.field private k:Ljava/lang/String;

.field private l:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lnl;->a:[C

    return-void
.end method

.method public constructor <init>(Lne;)V
    .registers 3
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnl;->g:Z

    .line 120
    iput-object p1, p0, Lnl;->b:Lne;

    .line 121
    return-void
.end method

.method private final b(I)[C
    .registers 4
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lnl;->b:Lne;

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, p0, Lnl;->b:Lne;

    sget-object v1, Lne$b;->TEXT_BUFFER:Lne$b;

    invoke-virtual {v0, v1, p1}, Lne;->a(Lne$b;I)[C

    move-result-object v0

    .line 235
    :goto_c
    return-object v0

    :cond_d
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_c
.end method

.method private c(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 580
    iget v0, p0, Lnl;->e:I

    .line 581
    iput v5, p0, Lnl;->e:I

    .line 582
    iget-object v1, p0, Lnl;->c:[C

    .line 583
    const/4 v2, 0x0

    iput-object v2, p0, Lnl;->c:[C

    .line 584
    iget v2, p0, Lnl;->d:I

    .line 585
    const/4 v3, -0x1

    iput v3, p0, Lnl;->d:I

    .line 588
    add-int v3, v0, p1

    .line 589
    iget-object v4, p0, Lnl;->i:[C

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lnl;->i:[C

    array-length v4, v4

    if-le v3, v4, :cond_20

    .line 590
    :cond_1a
    invoke-direct {p0, v3}, Lnl;->b(I)[C

    move-result-object v3

    iput-object v3, p0, Lnl;->i:[C

    .line 592
    :cond_20
    if-lez v0, :cond_27

    .line 593
    iget-object v3, p0, Lnl;->i:[C

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    :cond_27
    iput v5, p0, Lnl;->h:I

    .line 596
    iput v0, p0, Lnl;->j:I

    .line 597
    return-void
.end method

.method private d(I)V
    .registers 5
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    .line 609
    :cond_b
    iget-object v0, p0, Lnl;->i:[C

    .line 610
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnl;->g:Z

    .line 611
    iget-object v1, p0, Lnl;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    iget v1, p0, Lnl;->h:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lnl;->h:I

    .line 613
    array-length v0, v0

    .line 615
    shr-int/lit8 v1, v0, 0x1

    .line 616
    if-ge v1, p1, :cond_21

    move v1, p1

    .line 619
    :cond_21
    const/high16 v2, 0x4

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    .line 620
    const/4 v1, 0x0

    iput v1, p0, Lnl;->j:I

    .line 621
    iput-object v0, p0, Lnl;->i:[C

    .line 622
    return-void
.end method

.method private l()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    iput-object v1, p0, Lnl;->c:[C

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lnl;->d:I

    .line 156
    iput v2, p0, Lnl;->e:I

    .line 158
    iput-object v1, p0, Lnl;->k:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lnl;->l:[C

    .line 162
    iget-boolean v0, p0, Lnl;->g:Z

    if-eqz v0, :cond_14

    .line 163
    invoke-direct {p0}, Lnl;->m()V

    .line 165
    :cond_14
    iput v2, p0, Lnl;->j:I

    .line 166
    return-void
.end method

.method private final m()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 240
    iput-boolean v1, p0, Lnl;->g:Z

    .line 248
    iget-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    iput v1, p0, Lnl;->h:I

    iput v1, p0, Lnl;->j:I

    .line 250
    return-void
.end method

.method private n()[C
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 339
    iget-object v0, p0, Lnl;->l:[C

    .line 340
    if-nez v0, :cond_11

    .line 341
    iget-object v0, p0, Lnl;->k:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lnl;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lnl;->l:[C

    .line 343
    :cond_11
    return-object v0

    .line 341
    :cond_12
    iget v0, p0, Lnl;->d:I

    if-ltz v0, :cond_2b

    iget v0, p0, Lnl;->e:I

    if-gtz v0, :cond_1d

    sget-object v0, Lnl;->a:[C

    goto :goto_f

    :cond_1d
    iget v0, p0, Lnl;->e:I

    new-array v0, v0, [C

    iget-object v1, p0, Lnl;->c:[C

    iget v2, p0, Lnl;->d:I

    iget v3, p0, Lnl;->e:I

    invoke-static {v1, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    :cond_2b
    invoke-virtual {p0}, Lnl;->b()I

    move-result v0

    if-gtz v0, :cond_34

    sget-object v0, Lnl;->a:[C

    goto :goto_f

    :cond_34
    new-array v1, v0, [C

    iget-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v6

    move v4, v6

    :goto_42
    if-ge v3, v2, :cond_56

    iget-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v4, v5

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_42

    :cond_56
    move v0, v4

    :goto_57
    iget-object v2, p0, Lnl;->i:[C

    iget v3, p0, Lnl;->j:I

    invoke-static {v2, v6, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_f

    :cond_60
    move v0, v6

    goto :goto_57
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lnl;->b:Lne;

    if-nez v0, :cond_8

    .line 135
    invoke-direct {p0}, Lnl;->l()V

    .line 146
    :cond_7
    :goto_7
    return-void

    .line 137
    :cond_8
    iget-object v0, p0, Lnl;->i:[C

    if-eqz v0, :cond_7

    .line 139
    invoke-direct {p0}, Lnl;->l()V

    .line 141
    iget-object v0, p0, Lnl;->i:[C

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lnl;->i:[C

    .line 143
    iget-object v1, p0, Lnl;->b:Lne;

    sget-object v2, Lne$b;->TEXT_BUFFER:Lne$b;

    invoke-virtual {v1, v2, v0}, Lne;->a(Lne$b;[C)V

    goto :goto_7
.end method

.method public final a(C)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 397
    iget v0, p0, Lnl;->d:I

    if-ltz v0, :cond_a

    .line 398
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lnl;->c(I)V

    .line 400
    :cond_a
    iput-object v1, p0, Lnl;->k:Ljava/lang/String;

    .line 401
    iput-object v1, p0, Lnl;->l:[C

    .line 403
    iget-object v0, p0, Lnl;->i:[C

    .line 404
    iget v1, p0, Lnl;->j:I

    array-length v2, v0

    if-lt v1, v2, :cond_1b

    .line 405
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnl;->d(I)V

    .line 406
    iget-object v0, p0, Lnl;->i:[C

    .line 408
    :cond_1b
    iget v1, p0, Lnl;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnl;->j:I

    aput-char p1, v0, v1

    .line 409
    return-void
.end method

.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 514
    iput p1, p0, Lnl;->j:I

    .line 515
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 445
    iget v0, p0, Lnl;->d:I

    if-ltz v0, :cond_9

    .line 446
    invoke-direct {p0, p3}, Lnl;->c(I)V

    .line 448
    :cond_9
    iput-object v1, p0, Lnl;->k:Ljava/lang/String;

    .line 449
    iput-object v1, p0, Lnl;->l:[C

    .line 452
    iget-object v0, p0, Lnl;->i:[C

    .line 453
    array-length v1, v0

    iget v2, p0, Lnl;->j:I

    sub-int/2addr v1, v2

    .line 454
    if-lt v1, p3, :cond_22

    .line 455
    add-int/lit8 v1, p3, 0x0

    iget v2, p0, Lnl;->j:I

    invoke-virtual {p1, v4, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 456
    iget v0, p0, Lnl;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lnl;->j:I

    .line 471
    :goto_21
    return-void

    .line 459
    :cond_22
    if-lez v1, :cond_3c

    .line 460
    add-int/lit8 v2, v1, 0x0

    iget v3, p0, Lnl;->j:I

    invoke-virtual {p1, v4, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 461
    sub-int v0, p3, v1

    .line 462
    add-int/lit8 v1, v1, 0x0

    .line 467
    :goto_2f
    invoke-direct {p0, v0}, Lnl;->d(I)V

    .line 468
    add-int v2, v1, v0

    iget-object v3, p0, Lnl;->i:[C

    invoke-virtual {p1, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 469
    iput v0, p0, Lnl;->j:I

    goto :goto_21

    :cond_3c
    move v0, p3

    move v1, p2

    goto :goto_2f
.end method

.method public final a([CII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lnl;->k:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lnl;->l:[C

    .line 181
    iput-object p1, p0, Lnl;->c:[C

    .line 182
    iput p2, p0, Lnl;->d:I

    .line 183
    iput p3, p0, Lnl;->e:I

    .line 186
    iget-boolean v0, p0, Lnl;->g:Z

    if-eqz v0, :cond_12

    .line 187
    invoke-direct {p0}, Lnl;->m()V

    .line 189
    :cond_12
    return-void
.end method

.method public final b()I
    .registers 3

    .prologue
    .line 262
    iget v0, p0, Lnl;->d:I

    if-ltz v0, :cond_7

    .line 263
    iget v0, p0, Lnl;->e:I

    .line 266
    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lnl;->h:I

    iget v1, p0, Lnl;->j:I

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public final b([CII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    iput-object v1, p0, Lnl;->c:[C

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lnl;->d:I

    .line 195
    iput v2, p0, Lnl;->e:I

    .line 197
    iput-object v1, p0, Lnl;->k:Ljava/lang/String;

    .line 198
    iput-object v1, p0, Lnl;->l:[C

    .line 201
    iget-boolean v0, p0, Lnl;->g:Z

    if-eqz v0, :cond_1c

    .line 202
    invoke-direct {p0}, Lnl;->m()V

    .line 206
    :cond_14
    :goto_14
    iput v2, p0, Lnl;->h:I

    iput v2, p0, Lnl;->j:I

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lnl;->c([CII)V

    .line 208
    return-void

    .line 203
    :cond_1c
    iget-object v0, p0, Lnl;->i:[C

    if-nez v0, :cond_14

    .line 204
    invoke-direct {p0, p3}, Lnl;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lnl;->i:[C

    goto :goto_14
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lnl;->d:I

    if-ltz v0, :cond_7

    iget v0, p0, Lnl;->d:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final c([CII)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 414
    iget v0, p0, Lnl;->d:I

    if-ltz v0, :cond_8

    .line 415
    invoke-direct {p0, p3}, Lnl;->c(I)V

    .line 417
    :cond_8
    iput-object v1, p0, Lnl;->k:Ljava/lang/String;

    .line 418
    iput-object v1, p0, Lnl;->l:[C

    .line 421
    iget-object v0, p0, Lnl;->i:[C

    .line 422
    array-length v1, v0

    iget v2, p0, Lnl;->j:I

    sub-int/2addr v1, v2

    .line 424
    if-lt v1, p3, :cond_1f

    .line 425
    iget v1, p0, Lnl;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    iget v0, p0, Lnl;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lnl;->j:I

    .line 440
    :goto_1e
    return-void

    .line 429
    :cond_1f
    if-lez v1, :cond_39

    .line 430
    iget v2, p0, Lnl;->j:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    add-int v0, p2, v1

    .line 432
    sub-int v1, p3, v1

    move v4, v1

    move v1, v0

    move v0, v4

    .line 436
    :goto_2d
    invoke-direct {p0, v0}, Lnl;->d(I)V

    .line 437
    iget-object v2, p0, Lnl;->i:[C

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    iput v0, p0, Lnl;->j:I

    goto :goto_1e

    :cond_39
    move v0, p3

    move v1, p2

    goto :goto_2d
.end method

.method public final d()[C
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Lnl;->d:I

    if-ltz v0, :cond_7

    .line 282
    iget-object v0, p0, Lnl;->c:[C

    .line 289
    :goto_6
    return-object v0

    .line 285
    :cond_7
    iget-boolean v0, p0, Lnl;->g:Z

    if-nez v0, :cond_e

    .line 286
    iget-object v0, p0, Lnl;->i:[C

    goto :goto_6

    .line 289
    :cond_e
    invoke-direct {p0}, Lnl;->n()[C

    move-result-object v0

    goto :goto_6
.end method

.method public final e()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 300
    iget-object v0, p0, Lnl;->k:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 302
    iget-object v0, p0, Lnl;->l:[C

    if-eqz v0, :cond_15

    .line 303
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnl;->l:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lnl;->k:Ljava/lang/String;

    .line 334
    :cond_12
    :goto_12
    iget-object v0, p0, Lnl;->k:Ljava/lang/String;

    :goto_14
    return-object v0

    .line 306
    :cond_15
    iget v0, p0, Lnl;->d:I

    if-ltz v0, :cond_30

    .line 307
    iget v0, p0, Lnl;->e:I

    if-gtz v0, :cond_22

    .line 308
    const-string v0, ""

    iput-object v0, p0, Lnl;->k:Ljava/lang/String;

    goto :goto_14

    .line 310
    :cond_22
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnl;->c:[C

    iget v2, p0, Lnl;->d:I

    iget v3, p0, Lnl;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lnl;->k:Ljava/lang/String;

    goto :goto_12

    .line 313
    :cond_30
    iget v0, p0, Lnl;->h:I

    .line 314
    iget v1, p0, Lnl;->j:I

    .line 316
    if-nez v0, :cond_45

    .line 317
    if-nez v1, :cond_3d

    const-string v0, ""

    :goto_3a
    iput-object v0, p0, Lnl;->k:Ljava/lang/String;

    goto :goto_12

    :cond_3d
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lnl;->i:[C

    invoke-direct {v0, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3a

    .line 319
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    iget-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_68

    .line 322
    iget-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v5

    :goto_56
    if-ge v3, v1, :cond_68

    .line 323
    iget-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 324
    array-length v4, v0

    invoke-virtual {v2, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 322
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_56

    .line 328
    :cond_68
    iget-object v0, p0, Lnl;->i:[C

    iget v1, p0, Lnl;->j:I

    invoke-virtual {v2, v0, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnl;->k:Ljava/lang/String;

    goto :goto_12
.end method

.method public final f()Ljava/math/BigDecimal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lnl;->l:[C

    if-eqz v0, :cond_c

    .line 355
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lnl;->l:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 366
    :goto_b
    return-object v0

    .line 358
    :cond_c
    iget v0, p0, Lnl;->d:I

    if-ltz v0, :cond_1c

    .line 359
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lnl;->c:[C

    iget v2, p0, Lnl;->d:I

    iget v3, p0, Lnl;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b

    .line 362
    :cond_1c
    iget v0, p0, Lnl;->h:I

    if-nez v0, :cond_2b

    .line 363
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lnl;->i:[C

    const/4 v2, 0x0

    iget v3, p0, Lnl;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b

    .line 366
    :cond_2b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lnl;->n()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_b
.end method

.method public final g()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Lnl;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final h()[C
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 485
    iget v0, p0, Lnl;->d:I

    if-ltz v0, :cond_b

    .line 486
    invoke-direct {p0, v2}, Lnl;->c(I)V

    .line 496
    :cond_8
    :goto_8
    iget-object v0, p0, Lnl;->i:[C

    return-object v0

    .line 488
    :cond_b
    iget-object v0, p0, Lnl;->i:[C

    .line 489
    if-nez v0, :cond_17

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnl;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lnl;->i:[C

    goto :goto_8

    .line 491
    :cond_17
    iget v1, p0, Lnl;->j:I

    array-length v0, v0

    if-lt v1, v0, :cond_8

    .line 493
    invoke-direct {p0, v2}, Lnl;->d(I)V

    goto :goto_8
.end method

.method public final i()[C
    .registers 2

    .prologue
    .line 501
    invoke-direct {p0}, Lnl;->l()V

    .line 502
    iget-object v0, p0, Lnl;->i:[C

    .line 503
    if-nez v0, :cond_e

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnl;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lnl;->i:[C

    .line 506
    :cond_e
    return-object v0
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 510
    iget v0, p0, Lnl;->j:I

    return v0
.end method

.method public final k()[C
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    .line 522
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnl;->g:Z

    .line 523
    iget-object v0, p0, Lnl;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lnl;->i:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lnl;->i:[C

    array-length v0, v0

    .line 525
    iget v1, p0, Lnl;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lnl;->h:I

    .line 527
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 528
    new-array v0, v0, [C

    .line 529
    const/4 v1, 0x0

    iput v1, p0, Lnl;->j:I

    .line 530
    iput-object v0, p0, Lnl;->i:[C

    .line 531
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 565
    invoke-virtual {p0}, Lnl;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
