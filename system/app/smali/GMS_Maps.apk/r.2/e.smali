.class public Lr/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cd;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Ljava/util/Set;

.field private final c:F

.field private d:J

.field private e:I

.field private f:F

.field private g:Z


# direct methods
.method private constructor <init>(F)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lr/e;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr/e;->d:J

    iput v2, p0, Lr/e;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lr/e;->f:F

    iput-boolean v2, p0, Lr/e;->g:Z

    iput p1, p0, Lr/e;->c:F

    return-void
.end method

.method constructor <init>(Lt/u;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lr/e;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr/e;->d:J

    iput v2, p0, Lr/e;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lr/e;->f:F

    iput-boolean v2, p0, Lr/e;->g:Z

    invoke-virtual {p1}, Lt/u;->e()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lr/e;->c:F

    invoke-virtual {p0, p1}, Lr/e;->a(Lt/u;)Z

    return-void
.end method

.method private static a(F)F
    .registers 4

    mul-float v0, p0, p0

    const/high16 v1, 0x4040

    const/high16 v2, 0x4000

    mul-float/2addr v2, p0

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method private static a(FFFFF)F
    .registers 7

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_5

    :goto_4
    return p3

    :cond_5
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_b

    move p3, p4

    goto :goto_4

    :cond_b
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    sub-float v1, p4, p3

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    goto :goto_4
.end method

.method static a(FFIFF)F
    .registers 11

    const/high16 v5, 0x42c8

    const/high16 v4, 0x41a0

    const/high16 v3, 0x4190

    const/4 v1, 0x0

    cmpl-float v0, p4, v1

    if-lez v0, :cond_22

    const/high16 v0, 0x4040

    invoke-static {p1, v3, v4, v0, v1}, Lr/e;->a(FFFFF)F

    move-result v0

    :goto_11
    const/high16 v2, 0x4120

    invoke-static {p0, v1, v2, v1, v0}, Lr/e;->a(FFFFF)F

    move-result v0

    invoke-static {p3}, Lr/e;->a(F)F

    move-result v1

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_31

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    :cond_21
    :goto_21
    return v0

    :cond_22
    cmpg-float v0, p4, v1

    if-gez v0, :cond_2f

    const/high16 v0, -0x3fc0

    const/high16 v2, -0x4080

    invoke-static {p1, v3, v4, v0, v2}, Lr/e;->a(FFFFF)F

    move-result v0

    goto :goto_11

    :cond_2f
    move v0, v1

    goto :goto_11

    :cond_31
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_21

    const/high16 v2, 0x3f80

    sub-float v1, v2, v1

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    goto :goto_21
.end method

.method static a(IF)I
    .registers 6

    const/high16 v1, 0x3f80

    invoke-static {p1}, Lr/e;->a(F)F

    move-result v0

    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_1b

    :goto_a
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    const v3, 0x3f19999a

    invoke-static {v0, v2, v1, v3, v1}, Lr/e;->a(FFFFF)F

    move-result v0

    invoke-static {v1, v0, v0, v0}, Lcom/google/android/maps/driveabout/vector/C;->a(FFFF)I

    move-result v0

    :goto_1a
    return v0

    :cond_1b
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_22

    sub-float v0, v1, v0

    goto :goto_a

    :cond_22
    move v0, v1

    goto :goto_a

    :cond_24
    invoke-static {v0, v0, v0, v0}, Lcom/google/android/maps/driveabout/vector/C;->a(FFFF)I

    move-result v0

    goto :goto_1a
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/t;Lt/L;)F
    .registers 8

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v1

    iget v2, p0, Lr/e;->e:I

    iget v3, p0, Lr/e;->f:F

    iget v4, p0, Lr/e;->c:F

    invoke-static {v0, v1, v2, v3, v4}, Lr/e;->a(FFIFF)F

    move-result v0

    invoke-virtual {p2}, Lt/L;->e()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cd;)I
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lr/e;

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lr/e;->b()F

    move-result v0

    check-cast p1, Lr/e;

    invoke-virtual {p1}, Lr/e;->b()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    :cond_13
    return v0
.end method

.method public a()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, Lr/e;->b:Ljava/util/Set;

    if-nez v0, :cond_16

    iget-object v0, p0, Lr/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lt/s;->a:Lcom/google/common/base/o;

    invoke-static {v0, v1}, LK/bF;->a(Ljava/lang/Iterable;Lcom/google/common/base/o;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, LK/bu;->a(Ljava/lang/Iterable;)LK/bu;

    move-result-object v0

    iput-object v0, p0, Lr/e;->b:Ljava/util/Set;

    :cond_16
    iget-object v0, p0, Lr/e;->b:Ljava/util/Set;

    return-object v0
.end method

.method a(Lt/r;)Lr/e;
    .registers 6

    iget-object v0, p0, Lr/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v1, Lr/e;

    iget-object v0, p0, Lr/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    invoke-virtual {v0}, Lt/u;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v0}, Lr/e;-><init>(F)V

    iget-object v0, p0, Lr/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    invoke-virtual {v0}, Lt/u;->b()Lt/r;

    move-result-object v3

    invoke-virtual {v3, p1}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v1, v0}, Lr/e;->a(Lt/u;)Z

    goto :goto_25

    :cond_3f
    move-object p0, v1

    goto :goto_8
.end method

.method public a(I)V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lr/e;->a(IJ)V

    return-void
.end method

.method a(IJ)V
    .registers 5

    iput p1, p0, Lr/e;->e:I

    iput-wide p2, p0, Lr/e;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lr/e;->f:F

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cb;->b()Lcom/google/android/maps/driveabout/vector/cc;

    iget-boolean v1, p0, Lr/e;->g:Z

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->w()V

    :cond_12
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/C;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;Lt/L;)V
    .registers 11

    const/16 v5, 0x1e00

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p0, p2, p4}, Lr/e;->a(Lcom/google/android/maps/driveabout/vector/t;Lt/L;)F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->p()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-interface {v1, v4, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget v2, p0, Lr/e;->e:I

    iget v3, p0, Lr/e;->f:F

    invoke-static {v2, v3}, Lr/e;->a(IF)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/C;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cb;->b()Lcom/google/android/maps/driveabout/vector/cc;

    move-result-object v2

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cc;->f:Lcom/google/android/maps/driveabout/vector/cc;

    if-eq v2, v3, :cond_39

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cc;->g:Lcom/google/android/maps/driveabout/vector/cc;

    if-eq v2, v3, :cond_39

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cc;->h:Lcom/google/android/maps/driveabout/vector/cc;

    if-ne v2, v3, :cond_50

    cmpg-float v0, v0, v4

    if-gez v0, :cond_50

    :cond_39
    const/4 v0, 0x1

    :goto_3a
    iput-boolean v0, p0, Lr/e;->g:Z

    iget-boolean v0, p0, Lr/e;->g:Z

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->v()V

    invoke-interface {v1, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    const/16 v0, 0x202

    const/16 v2, 0xff

    const/16 v3, 0x80

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    :cond_4f
    return-void

    :cond_50
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method a(J)Z
    .registers 6

    iget-wide v0, p0, Lr/e;->d:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x43fa

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lr/e;->a(FFF)F

    move-result v0

    iput v0, p0, Lr/e;->f:F

    invoke-virtual {p0}, Lr/e;->c()Z

    move-result v0

    return v0
.end method

.method public a(Lt/u;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lt/u;->e()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lr/e;->c:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_16

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    iget-object v0, p0, Lr/e;->b:Ljava/util/Set;

    if-eqz v0, :cond_18

    :cond_15
    :goto_15
    return v2

    :cond_16
    move v0, v2

    goto :goto_e

    :cond_18
    invoke-virtual {p1}, Lt/u;->e()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lr/e;->c:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_15

    iget-object v0, p0, Lr/e;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lt/u;->b()Lt/r;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    goto :goto_15
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lr/e;->c:F

    return v0
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lr/e;->e:I

    if-eqz v0, :cond_e

    iget v0, p0, Lr/e;->f:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/maps/driveabout/vector/cd;

    invoke-virtual {p0, p1}, Lr/e;->a(Lcom/google/android/maps/driveabout/vector/cd;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    invoke-virtual {p0}, Lr/e;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lr/e;->e:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lr/e;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lr/e;->f:F

    return-void
.end method

.method public f()Z
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lr/e;->a(J)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lr/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/common/base/s;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "height"

    iget v2, p0, Lr/e;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "animationStartTimeMs"

    iget-wide v2, p0, Lr/e;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "animationPosition"

    iget v2, p0, Lr/e;->f:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "animationType"

    iget v2, p0, Lr/e;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "featureIds"

    iget-object v2, p0, Lr/e;->b:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
