.class public final Lcom/google/zxing/common/reedsolomon/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/zxing/common/reedsolomon/a;

.field public static final b:Lcom/google/zxing/common/reedsolomon/a;

.field public static final c:Lcom/google/zxing/common/reedsolomon/a;

.field public static final d:Lcom/google/zxing/common/reedsolomon/a;

.field public static final e:Lcom/google/zxing/common/reedsolomon/a;

.field public static final f:Lcom/google/zxing/common/reedsolomon/a;

.field public static final g:Lcom/google/zxing/common/reedsolomon/a;


# instance fields
.field private h:[I

.field private i:[I

.field private j:Lcom/google/zxing/common/reedsolomon/b;

.field private k:Lcom/google/zxing/common/reedsolomon/b;

.field private final l:I

.field private final m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x100

    .line 32
    new-instance v0, Lcom/google/zxing/common/reedsolomon/a;

    const/16 v1, 0x1069

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/a;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/a;

    .line 33
    new-instance v0, Lcom/google/zxing/common/reedsolomon/a;

    const/16 v1, 0x409

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/a;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/a;->b:Lcom/google/zxing/common/reedsolomon/a;

    .line 34
    new-instance v0, Lcom/google/zxing/common/reedsolomon/a;

    const/16 v1, 0x43

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/a;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/a;->c:Lcom/google/zxing/common/reedsolomon/a;

    .line 35
    new-instance v0, Lcom/google/zxing/common/reedsolomon/a;

    const/16 v1, 0x13

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/a;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/a;->d:Lcom/google/zxing/common/reedsolomon/a;

    .line 36
    new-instance v0, Lcom/google/zxing/common/reedsolomon/a;

    const/16 v1, 0x11d

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/common/reedsolomon/a;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/a;->e:Lcom/google/zxing/common/reedsolomon/a;

    .line 37
    new-instance v0, Lcom/google/zxing/common/reedsolomon/a;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/common/reedsolomon/a;-><init>(II)V

    .line 38
    sput-object v0, Lcom/google/zxing/common/reedsolomon/a;->f:Lcom/google/zxing/common/reedsolomon/a;

    sput-object v0, Lcom/google/zxing/common/reedsolomon/a;->g:Lcom/google/zxing/common/reedsolomon/a;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/a;->n:Z

    .line 58
    iput p1, p0, Lcom/google/zxing/common/reedsolomon/a;->m:I

    .line 59
    iput p2, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    .line 61
    if-gtz p2, :cond_f

    .line 62
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/a;->d()V

    .line 64
    :cond_f
    return-void
.end method

.method static b(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 128
    xor-int v0, p0, p1

    return v0
.end method

.method private d()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 67
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->h:[I

    .line 68
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->i:[I

    move v0, v1

    move v2, v3

    .line 70
    :goto_10
    iget v4, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    if-ge v0, v4, :cond_29

    .line 71
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/a;->h:[I

    aput v2, v4, v0

    .line 72
    shl-int/lit8 v2, v2, 0x1

    .line 73
    iget v4, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    if-lt v2, v4, :cond_26

    .line 74
    iget v4, p0, Lcom/google/zxing/common/reedsolomon/a;->m:I

    xor-int/2addr v2, v4

    .line 75
    iget v4, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v2, v4

    .line 70
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_29
    move v0, v1

    .line 78
    :goto_2a
    iget v2, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3b

    .line 79
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/a;->i:[I

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/a;->h:[I

    aget v4, v4, v0

    aput v0, v2, v4

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 82
    :cond_3b
    new-instance v0, Lcom/google/zxing/common/reedsolomon/b;

    new-array v2, v3, [I

    aput v1, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/common/reedsolomon/b;-><init>(Lcom/google/zxing/common/reedsolomon/a;[I)V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->j:Lcom/google/zxing/common/reedsolomon/b;

    .line 83
    new-instance v0, Lcom/google/zxing/common/reedsolomon/b;

    new-array v2, v3, [I

    aput v3, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/common/reedsolomon/b;-><init>(Lcom/google/zxing/common/reedsolomon/a;[I)V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->k:Lcom/google/zxing/common/reedsolomon/b;

    .line 84
    iput-boolean v3, p0, Lcom/google/zxing/common/reedsolomon/a;->n:Z

    .line 85
    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/a;->n:Z

    if-nez v0, :cond_7

    .line 89
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/a;->d()V

    .line 91
    :cond_7
    return-void
.end method


# virtual methods
.method final a(I)I
    .registers 3
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/a;->e()V

    .line 137
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->h:[I

    aget v0, v0, p1

    return v0
.end method

.method final a()Lcom/google/zxing/common/reedsolomon/b;
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/a;->e()V

    .line 96
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->j:Lcom/google/zxing/common/reedsolomon/b;

    return-object v0
.end method

.method final a(II)Lcom/google/zxing/common/reedsolomon/b;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/a;->e()V

    .line 111
    if-gez p1, :cond_b

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 114
    :cond_b
    if-nez p2, :cond_10

    .line 115
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->j:Lcom/google/zxing/common/reedsolomon/b;

    .line 119
    :goto_f
    return-object v0

    .line 117
    :cond_10
    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [I

    .line 118
    const/4 v0, 0x0

    aput p2, v1, v0

    .line 119
    new-instance v0, Lcom/google/zxing/common/reedsolomon/b;

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/common/reedsolomon/b;-><init>(Lcom/google/zxing/common/reedsolomon/a;[I)V

    goto :goto_f
.end method

.method final b(I)I
    .registers 3
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/a;->e()V

    .line 146
    if-nez p1, :cond_b

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 149
    :cond_b
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->i:[I

    aget v0, v0, p1

    return v0
.end method

.method final b()Lcom/google/zxing/common/reedsolomon/b;
    .registers 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/a;->e()V

    .line 102
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->k:Lcom/google/zxing/common/reedsolomon/b;

    return-object v0
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    return v0
.end method

.method final c(I)I
    .registers 5
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/a;->e()V

    .line 158
    if-nez p1, :cond_b

    .line 159
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 161
    :cond_b
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->h:[I

    iget v1, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/a;->i:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method final c(II)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/a;->e()V

    .line 172
    if-eqz p1, :cond_7

    if-nez p2, :cond_9

    .line 173
    :cond_7
    const/4 v0, 0x0

    .line 181
    :goto_8
    return v0

    .line 176
    :cond_9
    if-ltz p1, :cond_15

    if-ltz p2, :cond_15

    iget v0, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    if-ge p1, v0, :cond_15

    iget v0, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    if-lt p2, v0, :cond_17

    .line 177
    :cond_15
    add-int/lit8 p1, p1, 0x1

    .line 180
    :cond_17
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->i:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/a;->i:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    .line 181
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/a;->h:[I

    iget v2, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    rem-int v2, v0, v2

    iget v3, p0, Lcom/google/zxing/common/reedsolomon/a;->l:I

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    aget v0, v1, v0

    goto :goto_8
.end method
