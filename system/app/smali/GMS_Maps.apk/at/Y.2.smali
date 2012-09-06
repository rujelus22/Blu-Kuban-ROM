.class public final Lat/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:I

.field private static d:I

.field private static final e:[Lat/Y;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/16 v5, 0x16

    .line 39
    sput v0, Lat/Y;->c:I

    .line 50
    sput v5, Lat/Y;->d:I

    .line 57
    new-array v1, v5, [Lat/Y;

    sput-object v1, Lat/Y;->e:[Lat/Y;

    .line 71
    const/16 v1, 0x100

    .line 72
    :goto_d
    if-gt v0, v5, :cond_1f

    .line 73
    sget-object v2, Lat/Y;->e:[Lat/Y;

    add-int/lit8 v3, v0, -0x1

    new-instance v4, Lat/Y;

    invoke-direct {v4, v0, v1}, Lat/Y;-><init>(II)V

    aput-object v4, v2, v3

    .line 74
    mul-int/lit8 v1, v1, 0x2

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 76
    :cond_1f
    return-void
.end method

.method private constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lat/Y;->b:I

    .line 66
    iput p2, p0, Lat/Y;->a:I

    .line 67
    return-void
.end method

.method public static b(I)Lat/Y;
    .registers 3
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    sget v1, Lat/Y;->c:I

    if-lt p0, v1, :cond_15

    const/16 v1, 0x16

    if-gt p0, v1, :cond_15

    .line 104
    sget v0, Lat/Y;->d:I

    if-le p0, v0, :cond_f

    .line 105
    sget p0, Lat/Y;->d:I

    .line 107
    :cond_f
    sget-object v0, Lat/Y;->e:[Lat/Y;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    .line 110
    :cond_15
    return-object v0
.end method

.method public static b(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 208
    const/16 v1, 0x16

    sput v1, Lat/Y;->c:I

    :goto_8
    sget v1, Lat/Y;->c:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    .line 209
    sget v1, Lat/Y;->c:I

    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v1

    iget v1, v1, Lat/Y;->a:I

    mul-int/lit8 v2, v0, 0xa

    div-int/lit8 v2, v2, 0x9

    if-gt v1, v2, :cond_1c

    .line 215
    :cond_1b
    return-void

    .line 208
    :cond_1c
    sget v1, Lat/Y;->c:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lat/Y;->c:I

    goto :goto_8
.end method

.method public static c(Lat/Y;)Lat/Y;
    .registers 2
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0}, Lat/Y;->a()I

    move-result v0

    invoke-static {v0}, Lat/Y;->d(I)I

    move-result v0

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)V
    .registers 3
    .parameter

    .prologue
    const/16 v0, 0x16

    .line 240
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 241
    sput v0, Lat/Y;->d:I

    .line 245
    :goto_a
    return-void

    .line 243
    :cond_b
    const/4 v1, 0x2

    if-ne p0, v1, :cond_10

    const/16 v0, 0x10

    :cond_10
    sput v0, Lat/Y;->d:I

    goto :goto_a
.end method

.method public static d(I)I
    .registers 2
    .parameter

    .prologue
    .line 266
    sget v0, Lat/Y;->c:I

    if-ge p0, v0, :cond_6

    .line 267
    sget p0, Lat/Y;->c:I

    .line 271
    :cond_6
    return p0
.end method

.method public static e()I
    .registers 1

    .prologue
    .line 222
    sget v0, Lat/Y;->c:I

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lat/Y;->b:I

    return v0
.end method

.method public a(I)I
    .registers 6
    .parameter

    .prologue
    .line 83
    int-to-long v0, p1

    iget v2, p0, Lat/Y;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x26382e0

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 175
    iget v0, p0, Lat/Y;->b:I

    if-ge v0, p2, :cond_b

    .line 176
    iget v0, p0, Lat/Y;->b:I

    sub-int v0, p2, v0

    shl-int v0, p1, v0

    .line 178
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lat/Y;->b:I

    sub-int/2addr v0, p2

    shr-int v0, p1, v0

    goto :goto_a
.end method

.method public a(Lat/Y;)I
    .registers 4
    .parameter

    .prologue
    .line 130
    iget v0, p1, Lat/Y;->a:I

    iget v1, p0, Lat/Y;->a:I

    div-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lat/Y;->a:I

    return v0
.end method

.method public b(Lat/Y;)Z
    .registers 4
    .parameter

    .prologue
    .line 154
    iget v0, p0, Lat/Y;->b:I

    iget v1, p1, Lat/Y;->b:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()Lat/Y;
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lat/Y;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    return-object v0
.end method

.method public d()Lat/Y;
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lat/Y;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
