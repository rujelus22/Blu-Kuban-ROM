.class public Lt/C;
.super Ljava/lang/Object;


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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lt/C;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lam/b;)V
    .registers 5

    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt/C;->b:Ljava/lang/String;

    invoke-static {p1}, Lt/C;->a(Lam/b;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt/C;->c:[Ljava/lang/String;

    invoke-static {p1}, Lt/C;->b(Lam/b;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lt/C;->e:[Landroid/graphics/Bitmap;

    const/16 v0, 0x15

    invoke-static {p1, v0}, Lam/g;->e(Lam/b;I)I

    move-result v0

    iput v0, p0, Lt/C;->f:I

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {v0, v1, v2}, Lam/g;->c(Lam/b;II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lt/C;->g:F

    const/16 v1, 0x3e

    invoke-static {v0, v1, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lt/C;->h:F

    :goto_3c
    const/16 v0, 0x8

    invoke-static {p1, v0, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lt/C;->d:J

    return-void

    :cond_46
    const/4 v0, 0x0

    iput v0, p0, Lt/C;->g:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lt/C;->h:F

    goto :goto_3c
.end method

.method private static a(Lam/b;)[Ljava/lang/String;
    .registers 8

    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lam/b;->l(I)I

    move-result v2

    if-nez v2, :cond_b

    sget-object v0, Lt/C;->a:[Ljava/lang/String;

    :cond_a
    return-object v0

    :cond_b
    mul-int/lit8 v0, v2, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v2, :cond_a

    invoke-virtual {p0, v6, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    mul-int/lit8 v4, v1, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private static b(Lam/b;)[Landroid/graphics/Bitmap;
    .registers 8

    const/16 v6, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v6}, Lam/b;->l(I)I

    move-result v3

    if-lez v3, :cond_1c

    new-array v0, v3, [Landroid/graphics/Bitmap;

    move v1, v2

    :goto_c
    if-ge v1, v3, :cond_1d

    invoke-virtual {p0, v6, v1}, Lam/b;->b(II)[B

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lt/C;->f:I

    return v0
.end method

.method public a(F)Z
    .registers 3

    iget v0, p0, Lt/C;->g:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_e

    iget v0, p0, Lt/C;->h:F

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

    iget-object v0, p0, Lt/C;->e:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/C;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/C;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .registers 5

    iget-wide v0, p0, Lt/C;->d:J

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

    iget-wide v0, p0, Lt/C;->d:J

    return-wide v0
.end method
