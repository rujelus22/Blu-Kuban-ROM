.class public final Lcom/google/android/maps/driveabout/vector/do;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/vector/do;


# instance fields
.field private final b:I

.field private final c:[I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:[I

.field private final i:[I

.field private final j:[F

.field private k:Ljava/util/TreeSet;

.field private final l:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/do;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/do;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/do;->a:Lcom/google/android/maps/driveabout/vector/do;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->c:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/do;->b:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/do;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/do;->e:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/do;->f:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/do;->d:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->j:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->l:[F

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->k:Ljava/util/TreeSet;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->h:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->i:[I

    return-void
.end method

.method public constructor <init>([IIII)V
    .registers 14

    const/4 v0, 0x0

    const/high16 v4, -0x4080

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/do;->c:[I

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/do;->b:I

    const/high16 v1, 0x3f80

    int-to-float v2, p3

    div-float v5, v1, v2

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/do;->g:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->c:[I

    array-length v6, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->c:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/do;->e:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->c:[I

    add-int/lit8 v2, v6, -0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/do;->f:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/do;->d:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/do;->f:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->j:[F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/do;->f:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->l:[F

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->j:[F

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->l:[F

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([FF)V

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->k:Ljava/util/TreeSet;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/do;->d:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/do;->d:I

    int-to-float v2, v2

    move v4, v0

    move v0, v1

    :goto_4d
    if-ge v4, v6, :cond_8d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->k:Ljava/util/TreeSet;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/do;->c:[I

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->j:[F

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/do;->c:[I

    aget v7, v7, v4

    aget v1, v1, v7

    const/4 v7, 0x0

    cmpg-float v1, v1, v7

    if-gez v1, :cond_cb

    int-to-float v1, v4

    mul-float/2addr v1, v5

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/do;->d:I

    int-to-float v7, v7

    add-float/2addr v1, v7

    :goto_6f
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/do;->c:[I

    aget v7, v7, v4

    if-ge v0, v7, :cond_80

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/do;->j:[F

    aput v2, v7, v0

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/do;->l:[F

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_80
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/do;->j:[F

    aput v1, v2, v0

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_87
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    move v0, v1

    goto :goto_4d

    :cond_8d
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/do;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->h:[I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/do;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->i:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->h:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->i:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->k:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v3

    :goto_ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/do;->h:[I

    aput v1, v4, v0

    if-le v1, v3, :cond_c8

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/do;->i:[I

    aput v0, v4, v1

    :cond_c8
    move v1, v0

    goto :goto_ae

    :cond_ca
    return-void

    :cond_cb
    move v1, v0

    move v0, v2

    goto :goto_87
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/do;->g:I

    return v0
.end method

.method public a(F)I
    .registers 4

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/do;->d:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/do;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/do;->f:I

    :goto_11
    return v0

    :cond_12
    if-gez v0, :cond_16

    const/4 v0, -0x1

    goto :goto_11

    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/do;->c:[I

    aget v0, v1, v0

    goto :goto_11
.end method

.method public a(I)I
    .registers 3

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->h:[I

    array-length v0, v0

    if-lt p1, v0, :cond_9

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->h:[I

    aget v0, v0, p1

    goto :goto_8
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/do;->f:I

    return v0
.end method

.method public b(I)I
    .registers 3

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->i:[I

    array-length v0, v0

    if-lt p1, v0, :cond_9

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->i:[I

    aget v0, v0, p1

    goto :goto_8
.end method

.method public c(I)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->k:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(I)F
    .registers 3

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->j:[F

    array-length v0, v0

    if-lt p1, v0, :cond_a

    :cond_7
    const/high16 v0, -0x4080

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->j:[F

    aget v0, v0, p1

    goto :goto_9
.end method

.method public e(I)F
    .registers 3

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->j:[F

    array-length v0, v0

    if-lt p1, v0, :cond_a

    :cond_7
    const/high16 v0, -0x4080

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/do;->l:[F

    aget v0, v0, p1

    goto :goto_9
.end method
