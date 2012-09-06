.class public Ln/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:J

.field private final e:[Landroid/graphics/Bitmap;

.field private final f:I

.field private final g:F

.field private final h:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Ln/G;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln/G;->b:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Ln/G;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln/G;->c:[Ljava/lang/String;

    .line 46
    invoke-static {p1}, Ln/G;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ln/G;->e:[Landroid/graphics/Bitmap;

    .line 47
    const/16 v0, 0x15

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    iput v0, p0, Ln/G;->f:I

    .line 52
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 53
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 55
    const/16 v1, 0x3d

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Ln/G;->g:F

    .line 57
    const/16 v1, 0x3e

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ln/G;->h:F

    .line 64
    :goto_3c
    const/16 v0, 0x8

    invoke-static {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ln/G;->d:J

    .line 66
    return-void

    .line 60
    :cond_46
    const/4 v0, 0x0

    iput v0, p0, Ln/G;->g:F

    .line 61
    const/high16 v0, 0x41f0

    iput v0, p0, Ln/G;->h:F

    goto :goto_3c
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/16 v6, 0x12

    .line 69
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 70
    if-nez v2, :cond_b

    .line 71
    sget-object v0, Ln/G;->a:[Ljava/lang/String;

    .line 80
    :cond_a
    return-object v0

    .line 73
    :cond_b
    mul-int/lit8 v0, v2, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v2, :cond_a

    .line 75
    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 77
    mul-int/lit8 v4, v1, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 78
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Landroid/graphics/Bitmap;
    .registers 8
    .parameter

    .prologue
    const/16 v6, 0x11

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 85
    if-lez v3, :cond_1c

    .line 86
    new-array v0, v3, [Landroid/graphics/Bitmap;

    move v1, v2

    .line 87
    :goto_c
    if-ge v1, v3, :cond_1d

    .line 88
    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(II)[B

    move-result-object v4

    .line 90
    array-length v5, v4

    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v0, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 95
    :cond_1c
    const/4 v0, 0x0

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Ln/G;->f:I

    return v0
.end method

.method public a(F)Z
    .registers 3
    .parameter

    .prologue
    .line 99
    iget v0, p0, Ln/G;->g:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_e

    iget v0, p0, Ln/G;->h:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b()[Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Ln/G;->e:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Ln/G;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Ln/G;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .registers 5

    .prologue
    .line 119
    iget-wide v0, p0, Ln/G;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public f()J
    .registers 3

    .prologue
    .line 123
    iget-wide v0, p0, Ln/G;->d:J

    return-wide v0
.end method
