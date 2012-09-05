.class public Lcom/google/android/maps/driveabout/vector/bQ;
.super Lcom/google/android/maps/driveabout/vector/dr;


# instance fields
.field private d:Lt/at;

.field private final e:Ljava/util/List;

.field private final f:Lt/L;

.field private g:Lcom/google/android/maps/driveabout/vector/t;

.field private h:Lt/at;

.field private i:F

.field private final j:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dr;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lt/m;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->e:Ljava/util/List;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->f:Lt/L;

    mul-int v0, p2, p2

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->j:F

    return-void
.end method

.method private a(Lt/af;Lt/L;Z)V
    .registers 10

    const/4 v5, 0x1

    if-eqz p3, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->h:Lt/at;

    invoke-virtual {p1}, Lt/af;->i()Lt/V;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt/at;->b(Lt/W;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    const/high16 v1, 0x2000

    shr-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bQ;->f:Lt/L;

    invoke-virtual {p1}, Lt/af;->f()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Lt/af;->g()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lt/L;->d(II)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bQ;->g:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bQ;->f:Lt/L;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;Z)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bQ;->g:Lcom/google/android/maps/driveabout/vector/t;

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/maps/driveabout/vector/t;->b(FF)F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bQ;->i:F

    mul-float/2addr v2, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bQ;->j:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_69

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_69

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bQ;->b(Lt/af;Lt/L;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-direct {p0, v0, p2, v5}, Lcom/google/android/maps/driveabout/vector/bQ;->a(Lt/af;Lt/L;Z)V

    goto :goto_59

    :cond_69
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->d:Lt/at;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->d:Lt/at;

    invoke-virtual {v3, v0}, Lt/at;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->e:Ljava/util/List;

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {v3}, Lt/at;->c()Lt/W;

    move-result-object v0

    check-cast v0, Lt/n;

    invoke-virtual {v0}, Lt/n;->g()Lt/L;

    move-result-object v1

    invoke-virtual {v0}, Lt/n;->f()Lt/L;

    move-result-object v0

    invoke-virtual {v1, v0}, Lt/L;->c(Lt/L;)F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->c(FF)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bQ;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bQ;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bQ;->h:Lt/at;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v1

    const v4, 0x3c8efa35

    mul-float/2addr v1, v4

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bQ;->i:F

    invoke-virtual {v3}, Lt/at;->a()Lt/au;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bQ;->c:Lt/m;

    invoke-static {v1, v0, v4}, Lt/af;->a(Lt/au;ILt/m;)Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    :goto_56
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6d

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v5

    invoke-direct {p0, v0, v5, v2}, Lcom/google/android/maps/driveabout/vector/bQ;->a(Lt/af;Lt/L;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_56

    :cond_6d
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/bQ;->d:Lt/at;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->e:Ljava/util/List;

    goto :goto_13
.end method
