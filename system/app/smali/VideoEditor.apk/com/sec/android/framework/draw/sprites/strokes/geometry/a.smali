.class public final Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[J

.field private b:I


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v1, 0x10

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a:[J

    .line 7
    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->b:I

    .line 15
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 16
    const-wide/32 v2, 0x499602d2

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 18
    :goto_17
    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a:[J

    array-length v2, v2

    if-lt v0, v2, :cond_1d

    .line 20
    return-void

    .line 19
    :cond_1d
    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a:[J

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final a()F
    .registers 13

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a:[J

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->b:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a:[J

    iget v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->b:I

    add-int/lit8 v3, v3, 0xd

    and-int/lit8 v3, v3, 0xf

    aget-wide v2, v2, v3

    xor-long v4, v0, v2

    const/16 v6, 0x10

    shl-long/2addr v0, v6

    xor-long/2addr v0, v4

    const/16 v4, 0xf

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a:[J

    iget v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->b:I

    add-int/lit8 v3, v3, 0x9

    and-int/lit8 v3, v3, 0xf

    aget-wide v2, v2, v3

    const/16 v4, 0xb

    shr-long v4, v2, v4

    xor-long/2addr v2, v4

    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a:[J

    iget v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->b:I

    xor-long v6, v0, v2

    aput-wide v6, v4, v5

    const/4 v4, 0x5

    shl-long v4, v6, v4

    const-wide/32 v8, -0x25bbd2e0

    and-long/2addr v4, v8

    xor-long/2addr v4, v6

    iget v6, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->b:I

    add-int/lit8 v6, v6, 0xf

    and-int/lit8 v6, v6, 0xf

    iput v6, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->b:I

    iget-object v6, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a:[J

    iget v7, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->b:I

    aget-wide v6, v6, v7

    iget-object v8, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a:[J

    iget v9, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->b:I

    xor-long v10, v6, v0

    xor-long/2addr v4, v10

    const/4 v10, 0x2

    shl-long/2addr v6, v10

    xor-long/2addr v4, v6

    const/16 v6, 0x12

    shl-long/2addr v0, v6

    xor-long/2addr v0, v4

    const/16 v4, 0x1c

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, v8, v9

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a:[J

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->b:I

    aget-wide v0, v0, v1

    long-to-float v0, v0

    const/high16 v1, 0x5f00

    div-float/2addr v0, v1

    return v0
.end method
