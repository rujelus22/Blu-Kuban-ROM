.class public Lcom/google/android/maps/driveabout/vector/be;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:[I

.field private h:Z


# direct methods
.method constructor <init>(IIIIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/be;->g:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/be;->h:Z

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/be;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/be;->b:I

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/be;->c:I

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/be;->d:I

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/be;->e:I

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/be;->f:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/vector/be;)V
    .registers 9

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/be;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/be;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/be;->c:I

    iget v4, p1, Lcom/google/android/maps/driveabout/vector/be;->d:I

    iget v5, p1, Lcom/google/android/maps/driveabout/vector/be;->e:I

    iget v6, p1, Lcom/google/android/maps/driveabout/vector/be;->f:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/be;-><init>(IIIIII)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/be;)I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/be;->e:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/be;)I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/be;->f:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/vector/be;)I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/be;->a:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/vector/be;)I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/be;->b:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/vector/be;)I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/be;->c:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/vector/be;)I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/be;->d:I

    return v0
.end method


# virtual methods
.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/be;->h:Z

    return-void
.end method

.method a()[I
    .registers 8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/be;->g:[I

    if-nez v0, :cond_5e

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/be;->h:Z

    if-eqz v0, :cond_61

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/16 v1, 0x3024

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/be;->a:I

    aput v1, v0, v4

    const/16 v1, 0x3023

    aput v1, v0, v5

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/be;->b:I

    aput v1, v0, v6

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/be;->c:I

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/be;->d:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/be;->e:I

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/be;->f:I

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3038

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/be;->g:[I

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/be;->g:[I

    return-object v0

    :cond_61
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/16 v1, 0x3024

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/be;->a:I

    aput v1, v0, v4

    const/16 v1, 0x3023

    aput v1, v0, v5

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/be;->b:I

    aput v1, v0, v6

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/be;->c:I

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/be;->d:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/be;->e:I

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/be;->f:I

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/be;->g:[I

    goto :goto_5e
.end method
