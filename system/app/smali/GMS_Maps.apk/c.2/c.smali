.class public Lc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lc/c;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lc/c;->b:Z

    .line 40
    invoke-static {p1}, Lc/c;->h(I)I

    move-result v0

    .line 42
    new-array v1, v0, [I

    iput-object v1, p0, Lc/c;->c:[I

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lc/c;->d:[Ljava/lang/Object;

    .line 44
    iput v2, p0, Lc/c;->e:I

    .line 45
    return-void
.end method

.method private static a([IIII)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    add-int v2, p1, p2

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v0, v2

    .line 328
    :goto_6
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_17

    .line 329
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 331
    aget v3, p0, v2

    if-ge v3, p3, :cond_15

    move v1, v2

    .line 332
    goto :goto_6

    :cond_15
    move v0, v2

    .line 334
    goto :goto_6

    .line 337
    :cond_17
    add-int v1, p1, p2

    if-ne v0, v1, :cond_20

    .line 338
    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    .line 342
    :cond_1f
    :goto_1f
    return v0

    .line 339
    :cond_20
    aget v1, p0, v0

    if-eq v1, p3, :cond_1f

    .line 342
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1f
.end method

.method private c()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 116
    iget v3, p0, Lc/c;->e:I

    .line 118
    iget-object v4, p0, Lc/c;->c:[I

    .line 119
    iget-object v5, p0, Lc/c;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 121
    :goto_9
    if-ge v1, v3, :cond_1e

    .line 122
    aget-object v6, v5, v1

    .line 124
    sget-object v7, Lc/c;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1b

    .line 125
    if-eq v1, v0, :cond_19

    .line 126
    aget v7, v4, v1

    aput v7, v4, v0

    .line 127
    aput-object v6, v5, v0

    .line 130
    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 121
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 134
    :cond_1e
    iput-boolean v2, p0, Lc/c;->b:Z

    .line 135
    iput v0, p0, Lc/c;->e:I

    .line 138
    return-void
.end method

.method static g(I)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 346
    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 347
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 348
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 350
    :cond_10
    return p0

    .line 346
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static h(I)I
    .registers 2
    .parameter

    .prologue
    .line 354
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lc/c;->g(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lc/c;->b:Z

    if-eqz v0, :cond_7

    .line 198
    invoke-direct {p0}, Lc/c;->c()V

    .line 201
    :cond_7
    iget v0, p0, Lc/c;->e:I

    return v0
.end method

.method public a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc/c;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lc/c;->c:[I

    const/4 v1, 0x0

    iget v2, p0, Lc/c;->e:I

    invoke-static {v0, v1, v2, p1}, Lc/c;->a([IIII)I

    move-result v0

    .line 62
    if-ltz v0, :cond_13

    iget-object v1, p0, Lc/c;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lc/c;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_14

    .line 65
    :cond_13
    :goto_13
    return-object p2

    :cond_14
    iget-object v1, p0, Lc/c;->d:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_13
.end method

.method public b()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 280
    iget v2, p0, Lc/c;->e:I

    .line 281
    iget-object v3, p0, Lc/c;->d:[Ljava/lang/Object;

    move v0, v1

    .line 283
    :goto_6
    if-ge v0, v2, :cond_e

    .line 284
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 287
    :cond_e
    iput v1, p0, Lc/c;->e:I

    .line 288
    iput-boolean v1, p0, Lc/c;->b:Z

    .line 289
    return-void
.end method

.method public b(I)V
    .registers 5
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lc/c;->c:[I

    const/4 v1, 0x0

    iget v2, p0, Lc/c;->e:I

    invoke-static {v0, v1, v2, p1}, Lc/c;->a([IIII)I

    move-result v0

    .line 75
    if-ltz v0, :cond_1c

    .line 76
    iget-object v1, p0, Lc/c;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lc/c;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    .line 77
    iget-object v1, p0, Lc/c;->d:[Ljava/lang/Object;

    sget-object v2, Lc/c;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c;->b:Z

    .line 81
    :cond_1c
    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 146
    iget-object v0, p0, Lc/c;->c:[I

    iget v1, p0, Lc/c;->e:I

    invoke-static {v0, v5, v1, p1}, Lc/c;->a([IIII)I

    move-result v0

    .line 148
    if-ltz v0, :cond_10

    .line 149
    iget-object v1, p0, Lc/c;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 190
    :goto_f
    return-void

    .line 151
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 153
    iget v1, p0, Lc/c;->e:I

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Lc/c;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lc/c;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_27

    .line 154
    iget-object v1, p0, Lc/c;->c:[I

    aput p1, v1, v0

    .line 155
    iget-object v1, p0, Lc/c;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_f

    .line 159
    :cond_27
    iget-boolean v1, p0, Lc/c;->b:Z

    if-eqz v1, :cond_3f

    iget v1, p0, Lc/c;->e:I

    iget-object v2, p0, Lc/c;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3f

    .line 160
    invoke-direct {p0}, Lc/c;->c()V

    .line 163
    iget-object v0, p0, Lc/c;->c:[I

    iget v1, p0, Lc/c;->e:I

    invoke-static {v0, v5, v1, p1}, Lc/c;->a([IIII)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 166
    :cond_3f
    iget v1, p0, Lc/c;->e:I

    iget-object v2, p0, Lc/c;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_66

    .line 167
    iget v1, p0, Lc/c;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lc/c;->h(I)I

    move-result v1

    .line 169
    new-array v2, v1, [I

    .line 170
    new-array v1, v1, [Ljava/lang/Object;

    .line 173
    iget-object v3, p0, Lc/c;->c:[I

    iget-object v4, p0, Lc/c;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget-object v3, p0, Lc/c;->d:[Ljava/lang/Object;

    iget-object v4, p0, Lc/c;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iput-object v2, p0, Lc/c;->c:[I

    .line 177
    iput-object v1, p0, Lc/c;->d:[Ljava/lang/Object;

    .line 180
    :cond_66
    iget v1, p0, Lc/c;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_83

    .line 182
    iget-object v1, p0, Lc/c;->c:[I

    iget-object v2, p0, Lc/c;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lc/c;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v1, p0, Lc/c;->d:[Ljava/lang/Object;

    iget-object v2, p0, Lc/c;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lc/c;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :cond_83
    iget-object v1, p0, Lc/c;->c:[I

    aput p1, v1, v0

    .line 187
    iget-object v1, p0, Lc/c;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 188
    iget v0, p0, Lc/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/c;->e:I

    goto/16 :goto_f
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lc/c;->b(I)V

    .line 88
    return-void
.end method

.method public d(I)V
    .registers 4
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lc/c;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lc/c;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 95
    iget-object v0, p0, Lc/c;->d:[Ljava/lang/Object;

    sget-object v1, Lc/c;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c;->b:Z

    .line 98
    :cond_11
    return-void
.end method

.method public e(I)I
    .registers 3
    .parameter

    .prologue
    .line 210
    iget-boolean v0, p0, Lc/c;->b:Z

    if-eqz v0, :cond_7

    .line 211
    invoke-direct {p0}, Lc/c;->c()V

    .line 214
    :cond_7
    iget-object v0, p0, Lc/c;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public f(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 223
    iget-boolean v0, p0, Lc/c;->b:Z

    if-eqz v0, :cond_7

    .line 224
    invoke-direct {p0}, Lc/c;->c()V

    .line 227
    :cond_7
    iget-object v0, p0, Lc/c;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
