.class public Lcom/google/android/maps/driveabout/vector/dd;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;

# interfaces
.implements LaA/m;


# static fields
.field private static final a:D


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/driveabout/vector/dd;->a:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->h:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dd;->c:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dd;->d:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dd;->e:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dd;->f:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dd;->g:Z

    return-void
.end method

.method private static b(LaA/t;)Z
    .registers 5

    invoke-virtual {p0}, LaA/t;->g()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, LaA/t;->e()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_24

    invoke-virtual {p0}, LaA/t;->e()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff003afb7e90ff9L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dd;->c:Z

    return-void
.end method

.method public a(LaA/r;)Z
    .registers 14

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->f:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, LaA/r;->a(FF)V

    invoke-virtual {p1}, LaA/r;->a()F

    move-result v1

    invoke-virtual {p1}, LaA/r;->b()F

    move-result v2

    invoke-virtual {p1}, LaA/r;->c()F

    move-result v3

    invoke-virtual {p1}, LaA/r;->d()F

    move-result v4

    invoke-virtual {p1}, LaA/r;->f()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p1}, LaA/r;->g()Z

    move-result v0

    if-nez v0, :cond_34

    move v6, v7

    :cond_34
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {p1}, LaA/r;->e()F

    move-result v5

    const/high16 v8, 0x4334

    mul-float/2addr v5, v8

    float-to-double v8, v5

    const-wide v10, 0x400921fb54442d18L

    div-double/2addr v8, v10

    double-to-float v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cV;->b(FFFFFZ)F

    :goto_4c
    return v7

    :cond_4d
    move v7, v6

    goto :goto_4c
.end method

.method public a(LaA/t;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x4000

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->d:Z

    if-eqz v0, :cond_31

    invoke-virtual {p1}, LaA/t;->i()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    const/high16 v1, -0x4080

    const/16 v2, 0x14a

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(FI)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(FFF)V

    :cond_31
    :goto_31
    move v6, v7

    :cond_32
    return v6

    :cond_33
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->g:Z

    if-nez v0, :cond_3d

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dd;->b(LaA/t;)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_3d
    invoke-virtual {p1}, LaA/t;->e()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/android/maps/driveabout/vector/dd;->a:D

    div-double/2addr v0, v2

    double-to-float v1, v0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->g:Z

    if-eqz v0, :cond_88

    invoke-virtual {p1}, LaA/t;->a()F

    move-result v2

    invoke-virtual {p1}, LaA/t;->b()F

    move-result v3

    invoke-virtual {p1}, LaA/t;->c()F

    move-result v4

    invoke-virtual {p1}, LaA/t;->d()F

    move-result v5

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dd;->b(LaA/t;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v1, 0x0

    :cond_65
    invoke-virtual {p1}, LaA/t;->j()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p1}, LaA/t;->f()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {p1}, LaA/t;->h()Z

    move-result v0

    if-nez v0, :cond_78

    move v6, v7

    :cond_78
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cV;->a(FFFFFZ)F

    move-result v0

    :goto_82
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(FFF)V

    goto :goto_31

    :cond_88
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Lcom/google/android/maps/driveabout/vector/cV;->a(FI)F

    move-result v0

    goto :goto_82
.end method

.method public a(LaA/z;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dd;->e:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    invoke-virtual {p1}, LaA/z;->a()F

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cV;->b(FI)V

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dd;->d:Z

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dd;->e:Z

    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dd;->f:Z

    return-void
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dd;->g:Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 8

    const/high16 v4, 0x4000

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/dd;->h:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    :goto_1b
    return v0

    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->d:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->g:Z

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_2c
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v3

    const/high16 v4, 0x3f80

    const/16 v5, 0x14a

    invoke-virtual {v3, v4, v1, v0, v5}, Lcom/google/android/maps/driveabout/vector/cV;->a(FFFI)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v4, v3, v1, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(FFF)V

    move v0, v2

    goto :goto_1b

    :cond_41
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, v0, v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    goto :goto_2c

    :cond_53
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->h:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d(FF)V

    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->h:Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->c:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/android/maps/driveabout/vector/cV;->b(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p2, v1, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Landroid/view/MotionEvent;FF)Z

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c(FF)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->c:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/android/maps/driveabout/vector/cV;->a(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->s()V

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dd;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e(FF)Z

    move-result v0

    return v0
.end method
