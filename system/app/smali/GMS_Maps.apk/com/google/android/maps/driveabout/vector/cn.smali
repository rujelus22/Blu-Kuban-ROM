.class public Lcom/google/android/maps/driveabout/vector/cn;
.super Lcom/google/android/maps/driveabout/vector/dr;


# instance fields
.field private final d:F

.field private e:Lt/at;

.field private f:Lt/at;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/cn;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lt/m;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;Lt/m;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/dr;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lt/m;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->x()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cn;->a(D)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->d:F

    return-void
.end method

.method public static a(D)F
    .registers 4

    const-wide/high16 v0, 0x3ffc

    cmpl-double v0, p0, v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f80

    :goto_8
    return v0

    :cond_9
    const-wide v0, 0x3ff19999a0000000L

    cmpl-double v0, p0, v0

    if-lez v0, :cond_16

    const v0, 0x3f15c01a

    goto :goto_8

    :cond_16
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public a(Lt/L;)F
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/dr;->a(Lt/L;)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->d:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->e:Lt/at;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->e:Lt/at;

    invoke-virtual {v1, v0}, Lt/at;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->g:Ljava/util/List;

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {v1}, Lt/at;->a()Lt/au;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cn;->c(Lcom/google/android/maps/driveabout/vector/t;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cn;->c:Lt/m;

    invoke-static {v0, v2, v3}, Lt/af;->a(Lt/au;ILt/m;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    :goto_33
    if-nez v0, :cond_38

    invoke-virtual {p0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cn;->a(Lt/at;Ljava/util/ArrayList;)V

    :cond_38
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cn;->g:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->e:Lt/at;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->g:Ljava/util/List;

    goto :goto_13

    :cond_3f
    const/4 v0, 0x0

    goto :goto_33
.end method

.method a(Lt/at;Ljava/util/ArrayList;)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_7
    if-ge v3, v4, :cond_24

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-virtual {v0}, Lt/af;->i()Lt/V;

    move-result-object v1

    invoke-virtual {p1, v1}, Lt/at;->b(Lt/W;)Z

    move-result v1

    if-eqz v1, :cond_2f

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_1f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_7

    :cond_24
    add-int/lit8 v0, v4, -0x1

    :goto_26
    if-lt v0, v2, :cond_2e

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_2e
    return-void

    :cond_2f
    move v0, v2

    goto :goto_1f
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->f:Lt/at;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->f:Lt/at;

    invoke-virtual {v1, v0}, Lt/at;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->h:Ljava/util/List;

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {v1}, Lt/at;->a()Lt/au;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cn;->c(Lcom/google/android/maps/driveabout/vector/t;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cn;->c:Lt/m;

    invoke-static {v0, v2, v3}, Lt/af;->b(Lt/au;ILt/m;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    :goto_33
    if-nez v0, :cond_38

    invoke-virtual {p0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cn;->a(Lt/at;Ljava/util/ArrayList;)V

    :cond_38
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->f:Lt/at;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cn;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->h:Ljava/util/List;

    goto :goto_13

    :cond_3f
    const/4 v0, 0x0

    goto :goto_33
.end method

.method protected c(Lcom/google/android/maps/driveabout/vector/t;)I
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->d:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->b:Lcom/google/android/maps/driveabout/vector/dp;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cn;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/dp;->a(Lt/L;Lcom/google/android/maps/driveabout/vector/cU;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/do;->a(F)I

    move-result v0

    :goto_19
    return v0

    :cond_1a
    float-to-int v0, v0

    goto :goto_19
.end method
