.class public final Landroid/support/v4/b/c;
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

    sput-object v0, Landroid/support/v4/b/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/b/c;-><init>(I)V

    .line 32
    return-void
.end method

.method private constructor <init>(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Landroid/support/v4/b/c;->b:Z

    .line 40
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/support/v4/b/c;->f(I)I

    move-result v0

    .line 42
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/b/c;->c:[I

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/b/c;->d:[Ljava/lang/Object;

    .line 44
    iput v2, p0, Landroid/support/v4/b/c;->e:I

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
    add-int/lit8 v2, p2, 0x0

    const/4 v0, -0x1

    move v1, v0

    move v0, v2

    .line 328
    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    .line 329
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 331
    aget v3, p0, v2

    if-ge v3, p3, :cond_14

    move v1, v2

    .line 332
    goto :goto_5

    :cond_14
    move v0, v2

    .line 334
    goto :goto_5

    .line 337
    :cond_16
    add-int/lit8 v1, p2, 0x0

    if-ne v0, v1, :cond_1f

    .line 338
    add-int/lit8 v0, p2, 0x0

    xor-int/lit8 v0, v0, -0x1

    .line 342
    :cond_1e
    :goto_1e
    return v0

    .line 339
    :cond_1f
    aget v1, p0, v0

    if-eq v1, p3, :cond_1e

    .line 342
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1e
.end method

.method private c()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 116
    iget v3, p0, Landroid/support/v4/b/c;->e:I

    .line 118
    iget-object v4, p0, Landroid/support/v4/b/c;->c:[I

    .line 119
    iget-object v5, p0, Landroid/support/v4/b/c;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 121
    :goto_9
    if-ge v1, v3, :cond_1e

    .line 122
    aget-object v6, v5, v1

    .line 124
    sget-object v7, Landroid/support/v4/b/c;->a:Ljava/lang/Object;

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
    iput-boolean v2, p0, Landroid/support/v4/b/c;->b:Z

    .line 135
    iput v0, p0, Landroid/support/v4/b/c;->e:I

    .line 138
    return-void
.end method

.method private static f(I)I
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 354
    mul-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    :goto_4
    const/16 v2, 0x20

    if-ge v1, v2, :cond_12

    shl-int v2, v3, v1

    add-int/lit8 v2, v2, -0xc

    if-gt v0, v2, :cond_15

    shl-int v0, v3, v1

    add-int/lit8 v0, v0, -0xc

    :cond_12
    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/support/v4/b/c;->b:Z

    if-eqz v0, :cond_7

    .line 198
    invoke-direct {p0}, Landroid/support/v4/b/c;->c()V

    .line 201
    :cond_7
    iget v0, p0, Landroid/support/v4/b/c;->e:I

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/b/c;->c:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/b/c;->e:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/b/c;->a([IIII)I

    move-result v0

    if-ltz v0, :cond_13

    iget-object v1, p0, Landroid/support/v4/b/c;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/b/c;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_15

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0

    :cond_15
    iget-object v1, p0, Landroid/support/v4/b/c;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_14
.end method

.method public final b()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 280
    iget v2, p0, Landroid/support/v4/b/c;->e:I

    .line 281
    iget-object v3, p0, Landroid/support/v4/b/c;->d:[Ljava/lang/Object;

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
    iput v1, p0, Landroid/support/v4/b/c;->e:I

    .line 288
    iput-boolean v1, p0, Landroid/support/v4/b/c;->b:Z

    .line 289
    return-void
.end method

.method public final b(I)V
    .registers 5
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/b/c;->c:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/b/c;->e:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/b/c;->a([IIII)I

    move-result v0

    if-ltz v0, :cond_1c

    iget-object v1, p0, Landroid/support/v4/b/c;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/b/c;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    iget-object v1, p0, Landroid/support/v4/b/c;->d:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/b/c;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/c;->b:Z

    .line 88
    :cond_1c
    return-void
.end method

.method public final c(I)V
    .registers 4
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v4/b/c;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/b/c;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 95
    iget-object v0, p0, Landroid/support/v4/b/c;->d:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/b/c;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/c;->b:Z

    .line 98
    :cond_11
    return-void
.end method

.method public final d(I)I
    .registers 3
    .parameter

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/support/v4/b/c;->b:Z

    if-eqz v0, :cond_7

    .line 211
    invoke-direct {p0}, Landroid/support/v4/b/c;->c()V

    .line 214
    :cond_7
    iget-object v0, p0, Landroid/support/v4/b/c;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final e(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 223
    iget-boolean v0, p0, Landroid/support/v4/b/c;->b:Z

    if-eqz v0, :cond_7

    .line 224
    invoke-direct {p0}, Landroid/support/v4/b/c;->c()V

    .line 227
    :cond_7
    iget-object v0, p0, Landroid/support/v4/b/c;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
