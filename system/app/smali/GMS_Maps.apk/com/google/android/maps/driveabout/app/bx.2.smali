.class public Lcom/google/android/maps/driveabout/app/bx;
.super Lcom/google/android/maps/driveabout/app/bB;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:B

.field private i:Lt/C;

.field private j:F

.field private k:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V
    .registers 11

    const/4 v1, 0x0

    const/high16 v0, -0x4080

    invoke-direct {p0, p2, p3, v1}, Lcom/google/android/maps/driveabout/app/bB;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bw;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bx;->j:F

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bx;->k:F

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bx;->a()Lcom/google/android/maps/driveabout/app/bx;

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/app/bx;->a:Z

    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/app/bx;->b:Z

    iput p6, p0, Lcom/google/android/maps/driveabout/app/bx;->c:I

    iput-boolean p7, p0, Lcom/google/android/maps/driveabout/app/bx;->f:Z

    if-lez p8, :cond_23

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p8}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->d:Landroid/graphics/Bitmap;

    :cond_23
    return-void
.end method

.method private a(Lam/b;)V
    .registers 3

    new-instance v0, Lt/C;

    invoke-direct {v0, p1}, Lt/C;-><init>(Lam/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    invoke-virtual {v0}, Lt/C;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bx;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    invoke-virtual {v0}, Lt/C;->b()[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bx;->f:Z

    :cond_1b
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bx;Lam/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bx;->a(Lam/b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bx;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bx;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bx;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/bx;->e:Z

    return p1
.end method


# virtual methods
.method a()Lcom/google/android/maps/driveabout/app/bx;
    .registers 2

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/maps/driveabout/app/bx;->h:B

    return-object p0
.end method

.method public a(FF)V
    .registers 3

    iput p1, p0, Lcom/google/android/maps/driveabout/app/bx;->j:F

    iput p2, p0, Lcom/google/android/maps/driveabout/app/bx;->k:F

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bx;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bx;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/bx;->e:Z

    return-void
.end method

.method public a(F)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bx;->j:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1c

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bx;->k:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1c

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bx;->j:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1b

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bx;->k:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    invoke-virtual {v0, p1}, Lt/C;->a(F)Z

    move-result v0

    goto :goto_1b
.end method

.method public a(I)Z
    .registers 5

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/google/android/maps/driveabout/app/bx;->h:B

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bx;->c:I

    return v0
.end method

.method b(I)Lcom/google/android/maps/driveabout/app/bx;
    .registers 4

    iget-byte v0, p0, Lcom/google/android/maps/driveabout/app/bx;->h:B

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    int-to-byte v1, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/maps/driveabout/app/bx;->h:B

    return-object p0
.end method

.method public c(I)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bx;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->d:Landroid/graphics/Bitmap;

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    if-eqz v1, :cond_7

    if-gez p1, :cond_14

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    invoke-virtual {v1}, Lt/C;->a()I

    move-result p1

    :cond_14
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    invoke-virtual {v1}, Lt/C;->b()[Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v2, v1

    if-ge p1, v2, :cond_7

    aget-object v0, v1, p1

    goto :goto_7
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bx;->f:Z

    return v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bx;->b:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bx;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->g:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->g:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bx;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bx;->e:Z

    return v0
.end method

.method public h()Lt/C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->i:Lt/C;

    return-object v0
.end method
