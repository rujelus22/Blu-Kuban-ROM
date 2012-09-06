.class public final Lorg/codehaus/jackson/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[C


# instance fields
.field private final b:Lorg/codehaus/jackson/util/BufferRecycler;

.field private c:[C

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;

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
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/codehaus/jackson/util/f;->a:[C

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/f;->g:Z

    .line 122
    iput-object p1, p0, Lorg/codehaus/jackson/util/f;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 123
    return-void
.end method

.method private final b(I)[C
    .registers 4
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    if-eqz v0, :cond_d

    .line 235
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    .line 237
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

    .line 625
    iget v0, p0, Lorg/codehaus/jackson/util/f;->e:I

    .line 626
    iput v5, p0, Lorg/codehaus/jackson/util/f;->e:I

    .line 627
    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->c:[C

    .line 628
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codehaus/jackson/util/f;->c:[C

    .line 629
    iget v2, p0, Lorg/codehaus/jackson/util/f;->d:I

    .line 630
    const/4 v3, -0x1

    iput v3, p0, Lorg/codehaus/jackson/util/f;->d:I

    .line 633
    add-int v3, v0, p1

    .line 634
    iget-object v4, p0, Lorg/codehaus/jackson/util/f;->i:[C

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lorg/codehaus/jackson/util/f;->i:[C

    array-length v4, v4

    if-le v3, v4, :cond_20

    .line 635
    :cond_1a
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/f;->b(I)[C

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 637
    :cond_20
    if-lez v0, :cond_27

    .line 638
    iget-object v3, p0, Lorg/codehaus/jackson/util/f;->i:[C

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    :cond_27
    iput v5, p0, Lorg/codehaus/jackson/util/f;->h:I

    .line 641
    iput v0, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 642
    return-void
.end method

.method private d(I)V
    .registers 5
    .parameter

    .prologue
    .line 651
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    .line 654
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 655
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/util/f;->g:Z

    .line 656
    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget v1, p0, Lorg/codehaus/jackson/util/f;->h:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/f;->h:I

    .line 658
    array-length v1, v0

    .line 660
    shr-int/lit8 v0, v1, 0x1

    .line 661
    if-ge v0, p1, :cond_2f

    .line 664
    :goto_20
    const/high16 v0, 0x4

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    .line 665
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 666
    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 667
    return-void

    :cond_2f
    move p1, v0

    goto :goto_20
.end method

.method private m()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    .line 157
    iput v2, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 158
    iput v2, p0, Lorg/codehaus/jackson/util/f;->e:I

    .line 160
    iput-object v1, p0, Lorg/codehaus/jackson/util/f;->c:[C

    .line 161
    iput-object v1, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lorg/codehaus/jackson/util/f;->l:[C

    .line 165
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/f;->g:Z

    if-eqz v0, :cond_16

    .line 166
    invoke-direct {p0}, Lorg/codehaus/jackson/util/f;->n()V

    .line 168
    :cond_16
    return-void
.end method

.method private final n()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-boolean v1, p0, Lorg/codehaus/jackson/util/f;->g:Z

    .line 250
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput v1, p0, Lorg/codehaus/jackson/util/f;->h:I

    iput v1, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 252
    return-void
.end method

.method private o()[C
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->l:[C

    .line 373
    if-nez v0, :cond_11

    .line 374
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->l:[C

    .line 376
    :cond_11
    return-object v0

    .line 374
    :cond_12
    iget v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    if-ltz v0, :cond_2b

    iget v0, p0, Lorg/codehaus/jackson/util/f;->e:I

    if-gtz v0, :cond_1d

    sget-object v0, Lorg/codehaus/jackson/util/f;->a:[C

    goto :goto_f

    :cond_1d
    iget v0, p0, Lorg/codehaus/jackson/util/f;->e:I

    new-array v0, v0, [C

    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->c:[C

    iget v3, p0, Lorg/codehaus/jackson/util/f;->d:I

    iget v4, p0, Lorg/codehaus/jackson/util/f;->e:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    :cond_2b
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/f;->b()I

    move-result v0

    if-gtz v0, :cond_34

    sget-object v0, Lorg/codehaus/jackson/util/f;->a:[C

    goto :goto_f

    :cond_34
    new-array v3, v0, [C

    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    move v1, v2

    :goto_42
    if-ge v4, v5, :cond_55

    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    array-length v6, v0

    invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v6

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_42

    :cond_55
    move v0, v1

    :goto_56
    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->i:[C

    iget v4, p0, Lorg/codehaus/jackson/util/f;->j:I

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_f

    :cond_5f
    move v0, v2

    goto :goto_56
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    if-nez v0, :cond_8

    .line 137
    invoke-direct {p0}, Lorg/codehaus/jackson/util/f;->m()V

    .line 148
    :cond_7
    :goto_7
    return-void

    .line 139
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    if-eqz v0, :cond_7

    .line 141
    invoke-direct {p0}, Lorg/codehaus/jackson/util/f;->m()V

    .line 143
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 145
    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v2, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    goto :goto_7
.end method

.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 559
    iput p1, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 560
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    iput-object v2, p0, Lorg/codehaus/jackson/util/f;->c:[C

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    .line 216
    iput v1, p0, Lorg/codehaus/jackson/util/f;->e:I

    .line 218
    iput-object p1, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lorg/codehaus/jackson/util/f;->l:[C

    .line 221
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/f;->g:Z

    if-eqz v0, :cond_14

    .line 222
    invoke-direct {p0}, Lorg/codehaus/jackson/util/f;->n()V

    .line 224
    :cond_14
    iput v1, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 226
    return-void
.end method

.method public final a([CII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->l:[C

    .line 183
    iput-object p1, p0, Lorg/codehaus/jackson/util/f;->c:[C

    .line 184
    iput p2, p0, Lorg/codehaus/jackson/util/f;->d:I

    .line 185
    iput p3, p0, Lorg/codehaus/jackson/util/f;->e:I

    .line 188
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/f;->g:Z

    if-eqz v0, :cond_12

    .line 189
    invoke-direct {p0}, Lorg/codehaus/jackson/util/f;->n()V

    .line 191
    :cond_12
    return-void
.end method

.method public final b()I
    .registers 3

    .prologue
    .line 264
    iget v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    if-ltz v0, :cond_7

    .line 265
    iget v0, p0, Lorg/codehaus/jackson/util/f;->e:I

    .line 274
    :goto_6
    return v0

    .line 267
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->l:[C

    if-eqz v0, :cond_f

    .line 268
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->l:[C

    array-length v0, v0

    goto :goto_6

    .line 270
    :cond_f
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 271
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_6

    .line 274
    :cond_1a
    iget v0, p0, Lorg/codehaus/jackson/util/f;->h:I

    iget v1, p0, Lorg/codehaus/jackson/util/f;->j:I

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public final b([CII)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lorg/codehaus/jackson/util/f;->c:[C

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    .line 197
    iput v3, p0, Lorg/codehaus/jackson/util/f;->e:I

    .line 199
    iput-object v1, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lorg/codehaus/jackson/util/f;->l:[C

    .line 203
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/f;->g:Z

    if-eqz v0, :cond_36

    .line 204
    invoke-direct {p0}, Lorg/codehaus/jackson/util/f;->n()V

    .line 208
    :cond_14
    :goto_14
    iput v3, p0, Lorg/codehaus/jackson/util/f;->h:I

    iput v3, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 209
    iget v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    if-ltz v0, :cond_1f

    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/f;->c(I)V

    :cond_1f
    iput-object v1, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/util/f;->l:[C

    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    array-length v1, v0

    iget v2, p0, Lorg/codehaus/jackson/util/f;->j:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_41

    iget v1, p0, Lorg/codehaus/jackson/util/f;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/codehaus/jackson/util/f;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 210
    :goto_35
    return-void

    .line 205
    :cond_36
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    if-nez v0, :cond_14

    .line 206
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/f;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    goto :goto_14

    .line 209
    :cond_41
    if-lez v1, :cond_4a

    iget v2, p0, Lorg/codehaus/jackson/util/f;->j:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    :cond_4a
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/f;->d(I)V

    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/codehaus/jackson/util/f;->j:I

    goto :goto_35
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    if-ltz v0, :cond_7

    iget v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final d()[C
    .registers 2

    .prologue
    .line 308
    iget v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    if-ltz v0, :cond_7

    .line 309
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->c:[C

    .line 322
    :goto_6
    return-object v0

    .line 311
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->l:[C

    if-eqz v0, :cond_e

    .line 312
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->l:[C

    goto :goto_6

    .line 314
    :cond_e
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 315
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->l:[C

    goto :goto_6

    .line 318
    :cond_1b
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/f;->g:Z

    if-nez v0, :cond_22

    .line 319
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    goto :goto_6

    .line 322
    :cond_22
    invoke-direct {p0}, Lorg/codehaus/jackson/util/f;->o()[C

    move-result-object v0

    goto :goto_6
.end method

.method public final e()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 335
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->l:[C

    if-eqz v0, :cond_15

    .line 336
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->l:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    .line 367
    :cond_12
    :goto_12
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    :goto_14
    return-object v0

    .line 339
    :cond_15
    iget v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    if-ltz v0, :cond_30

    .line 340
    iget v0, p0, Lorg/codehaus/jackson/util/f;->e:I

    if-gtz v0, :cond_22

    .line 341
    const-string v0, ""

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    goto :goto_14

    .line 343
    :cond_22
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->c:[C

    iget v2, p0, Lorg/codehaus/jackson/util/f;->d:I

    iget v3, p0, Lorg/codehaus/jackson/util/f;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    goto :goto_12

    .line 346
    :cond_30
    iget v0, p0, Lorg/codehaus/jackson/util/f;->h:I

    .line 347
    iget v1, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 349
    if-nez v0, :cond_45

    .line 350
    if-nez v1, :cond_3d

    const-string v0, ""

    :goto_3a
    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    goto :goto_12

    :cond_3d
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/jackson/util/f;->i:[C

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3a

    .line 352
    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_68

    .line 355
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_56
    if-ge v1, v4, :cond_68

    .line 356
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 357
    array-length v5, v0

    invoke-virtual {v3, v0, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_56

    .line 361
    :cond_68
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    iget v1, p0, Lorg/codehaus/jackson/util/f;->j:I

    invoke-virtual {v3, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    goto :goto_12
.end method

.method public final f()Ljava/math/BigDecimal;
    .registers 5

    .prologue
    .line 387
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->l:[C

    if-eqz v0, :cond_c

    .line 388
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->l:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 399
    :goto_b
    return-object v0

    .line 391
    :cond_c
    iget v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    if-ltz v0, :cond_1c

    .line 392
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->c:[C

    iget v2, p0, Lorg/codehaus/jackson/util/f;->d:I

    iget v3, p0, Lorg/codehaus/jackson/util/f;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b

    .line 395
    :cond_1c
    iget v0, p0, Lorg/codehaus/jackson/util/f;->h:I

    if-nez v0, :cond_2b

    .line 396
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->i:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/codehaus/jackson/util/f;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b

    .line 399
    :cond_2b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lorg/codehaus/jackson/util/f;->o()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_b
.end method

.method public final g()D
    .registers 3

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/b/f;->a(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final h()[C
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 518
    iget v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    if-ltz v0, :cond_b

    .line 519
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/f;->c(I)V

    .line 529
    :cond_8
    :goto_8
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    return-object v0

    .line 521
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 522
    if-nez v0, :cond_17

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/f;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    goto :goto_8

    .line 524
    :cond_17
    iget v1, p0, Lorg/codehaus/jackson/util/f;->j:I

    array-length v0, v0

    if-lt v1, v0, :cond_8

    .line 526
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/f;->d(I)V

    goto :goto_8
.end method

.method public final i()[C
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 535
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/f;->d:I

    .line 536
    iput v1, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 537
    iput v1, p0, Lorg/codehaus/jackson/util/f;->e:I

    .line 539
    iput-object v2, p0, Lorg/codehaus/jackson/util/f;->c:[C

    .line 540
    iput-object v2, p0, Lorg/codehaus/jackson/util/f;->k:Ljava/lang/String;

    .line 541
    iput-object v2, p0, Lorg/codehaus/jackson/util/f;->l:[C

    .line 544
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/f;->g:Z

    if-eqz v0, :cond_16

    .line 545
    invoke-direct {p0}, Lorg/codehaus/jackson/util/f;->n()V

    .line 547
    :cond_16
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 548
    if-nez v0, :cond_20

    .line 549
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/f;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 551
    :cond_20
    return-object v0
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 555
    iget v0, p0, Lorg/codehaus/jackson/util/f;->j:I

    return v0
.end method

.method public final k()[C
    .registers 3

    .prologue
    .line 564
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    .line 567
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/f;->g:Z

    .line 568
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->i:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    array-length v0, v0

    .line 570
    iget v1, p0, Lorg/codehaus/jackson/util/f;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/f;->h:I

    .line 572
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 573
    new-array v0, v0, [C

    .line 574
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/f;->j:I

    .line 575
    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 576
    return-object v0
.end method

.method public final l()[C
    .registers 6

    .prologue
    const/high16 v4, 0x4

    const/4 v3, 0x0

    .line 586
    iget-object v1, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 588
    array-length v2, v1

    .line 590
    if-ne v2, v4, :cond_17

    const v0, 0x40001

    .line 592
    :goto_b
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    .line 593
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iget-object v0, p0, Lorg/codehaus/jackson/util/f;->i:[C

    return-object v0

    .line 590
    :cond_17
    shr-int/lit8 v0, v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_b
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 610
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/f;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
