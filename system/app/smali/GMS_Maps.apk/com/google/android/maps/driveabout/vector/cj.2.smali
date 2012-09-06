.class public Lcom/google/android/maps/driveabout/vector/cj;
.super Lcom/google/android/maps/driveabout/vector/ek;
.source "SourceFile"


# instance fields
.field private d:Ln/aK;

.field private final e:Ljava/util/List;

.field private final f:Ln/Q;

.field private g:Lcom/google/android/maps/driveabout/vector/k;

.field private h:Ln/aK;

.field private i:F

.field private final j:F

.field private k:J


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;ILcom/google/android/maps/driveabout/vector/df;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p3}, Lcom/google/android/maps/driveabout/vector/ek;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/df;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:Ljava/util/List;

    .line 27
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->f:Ln/Q;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->k:J

    .line 45
    mul-int v0, p2, p2

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->j:F

    .line 46
    return-void
.end method

.method private a(Ln/am;Ln/Q;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 103
    if-eqz p3, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->h:Ln/aK;

    invoke-virtual {p1}, Ln/am;->h()Ln/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/aK;->b(Ln/ab;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 131
    :cond_f
    :goto_f
    return-void

    .line 106
    :cond_10
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    .line 107
    const/high16 v1, 0x2000

    shr-int/2addr v1, v0

    .line 108
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cj;->f:Ln/Q;

    invoke-virtual {p1}, Ln/am;->e()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Ln/am;->f()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Ln/Q;->d(II)V

    .line 115
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cj;->g:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cj;->f:Ln/Q;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;Z)F

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cj;->g:Lcom/google/android/maps/driveabout/vector/k;

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/maps/driveabout/vector/k;->b(FF)F

    move-result v1

    .line 117
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cj;->i:F

    mul-float/2addr v2, v1

    mul-float/2addr v1, v2

    .line 118
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cj;->j:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_69

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_69

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cj;->b(Ln/am;Ln/Q;)Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 122
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 124
    :cond_55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 125
    invoke-direct {p0, v0, p2, v5}, Lcom/google/android/maps/driveabout/vector/cj;->a(Ln/am;Ln/Q;Z)V

    goto :goto_59

    .line 129
    :cond_69
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->j()Ln/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Lcom/google/android/maps/driveabout/vector/df;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/df;->a()Ln/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/av;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->k:J

    return-wide v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v3

    .line 52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->d:Ln/aK;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->d:Ln/aK;

    invoke-virtual {v3, v0}, Ln/aK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cj;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 53
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:Ljava/util/List;

    .line 77
    :goto_19
    return-object v0

    .line 55
    :cond_1a
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->k:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->k:J

    .line 59
    invoke-virtual {v3}, Ln/aK;->c()Ln/ab;

    move-result-object v0

    check-cast v0, Ln/r;

    .line 60
    invoke-virtual {v0}, Ln/r;->g()Ln/Q;

    move-result-object v1

    invoke-virtual {v0}, Ln/r;->f()Ln/Q;

    move-result-object v0

    invoke-virtual {v1, v0}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    .line 61
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->c(FF)F

    move-result v0

    float-to-int v0, v0

    .line 62
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cj;->g:Lcom/google/android/maps/driveabout/vector/k;

    .line 66
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cj;->h:Ln/aK;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v1

    const v4, 0x3c8efa35

    mul-float/2addr v1, v4

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cj;->i:F

    .line 70
    invoke-virtual {v3}, Ln/aK;->a()Ln/aL;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Lcom/google/android/maps/driveabout/vector/df;

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/df;->a()Ln/av;

    move-result-object v4

    invoke-static {v1, v0, v4}, Ln/am;->a(Ln/aL;ILn/av;)Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    .line 72
    :goto_67
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7e

    .line 74
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v5

    invoke-direct {p0, v0, v5, v2}, Lcom/google/android/maps/driveabout/vector/cj;->a(Ln/am;Ln/Q;Z)V

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_67

    .line 76
    :cond_7e
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/cj;->d:Ln/aK;

    .line 77
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:Ljava/util/List;

    goto :goto_19
.end method
