.class abstract Lcom/google/zxing/e/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Lcom/google/zxing/e/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/zxing/e/a/c;

    new-instance v1, Lcom/google/zxing/e/a/d;

    invoke-direct {v1, v3}, Lcom/google/zxing/e/a/d;-><init>(B)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/e/a/e;

    invoke-direct {v2, v3}, Lcom/google/zxing/e/a/e;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/e/a/f;

    invoke-direct {v2, v3}, Lcom/google/zxing/e/a/f;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/e/a/g;

    invoke-direct {v2, v3}, Lcom/google/zxing/e/a/g;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/google/zxing/e/a/h;

    invoke-direct {v2, v3}, Lcom/google/zxing/e/a/h;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/zxing/e/a/i;

    invoke-direct {v2, v3}, Lcom/google/zxing/e/a/i;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/zxing/e/a/j;

    invoke-direct {v2, v3}, Lcom/google/zxing/e/a/j;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/zxing/e/a/k;

    invoke-direct {v2, v3}, Lcom/google/zxing/e/a/k;-><init>(B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/e/a/c;->a:[Lcom/google/zxing/e/a/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/e/a/c;-><init>()V

    return-void
.end method

.method static a(I)Lcom/google/zxing/e/a/c;
    .registers 2
    .parameter

    .prologue
    .line 76
    if-ltz p0, :cond_5

    const/4 v0, 0x7

    if-le p0, v0, :cond_b

    .line 77
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_b
    sget-object v0, Lcom/google/zxing/e/a/c;->a:[Lcom/google/zxing/e/a/c;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/zxing/common/b;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    move v2, v1

    .line 59
    :goto_2
    if-ge v2, p2, :cond_25

    move v0, v1

    .line 60
    :goto_5
    if-ge v0, p2, :cond_21

    .line 61
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/e/a/c;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 62
    iget v3, p1, Lcom/google/zxing/common/b;->c:I

    mul-int/2addr v3, v2

    shr-int/lit8 v4, v0, 0x5

    add-int/2addr v3, v4

    iget-object v4, p1, Lcom/google/zxing/common/b;->d:[I

    aget v5, v4, v3

    const/4 v6, 0x1

    and-int/lit8 v7, v0, 0x1f

    shl-int/2addr v6, v7

    xor-int/2addr v5, v6

    aput v5, v4, v3

    .line 60
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 59
    :cond_21
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 66
    :cond_25
    return-void
.end method

.method abstract a(II)Z
.end method
