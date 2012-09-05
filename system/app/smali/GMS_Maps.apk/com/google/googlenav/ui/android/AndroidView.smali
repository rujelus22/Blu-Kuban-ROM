.class public Lcom/google/googlenav/ui/android/AndroidView;
.super Lcom/google/googlenav/ui/android/BaseAndroidView;

# interfaces
.implements LaA/m;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/google/googlenav/ui/c;


# instance fields
.field private final e:Lai/e;

.field private f:LaP/h;

.field private g:Lcom/google/googlenav/ui/android/t;

.field private h:Lcom/google/googlenav/ui/android/p;

.field private i:Lcom/google/googlenav/ui/android/p;

.field private final j:Landroid/graphics/Point;

.field private k:Z

.field private l:Landroid/graphics/Canvas;

.field private final m:LaA/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/BaseAndroidView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lai/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lai/e;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:Lai/e;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Landroid/graphics/Point;

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/AndroidView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/AndroidView;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/AndroidView;->setWillNotDraw(Z)V

    new-instance v0, LaA/g;

    invoke-direct {v0}, LaA/g;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->m:LaA/g;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->m:LaA/g;

    invoke-virtual {v0, p1, p0, p0}, LaA/g;->a(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V

    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, LaA/i;->a(Landroid/content/Context;LaA/m;)V

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->b()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->i()V

    :cond_3b
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/AndroidView;)F
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->l()F

    move-result v0

    return v0
.end method

.method private a(Landroid/view/MotionEvent;IIJ)V
    .registers 14

    const/4 v7, 0x0

    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v0

    invoke-virtual {v0}, LaA/i;->c()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->j()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/p;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/p;->a(Landroid/view/MotionEvent;)V

    new-instance v0, Laq/c;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/p;

    iget v3, v1, Lcom/google/googlenav/ui/android/p;->a:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/p;

    iget v4, v1, Lcom/google/googlenav/ui/android/p;->b:I

    move v1, p2

    move v2, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Laq/c;-><init>(IIIIJLandroid/graphics/Point;)V

    :goto_23
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Laq/c;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->invalidate()V

    return-void

    :cond_30
    new-instance v0, Laq/c;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v1, p2

    move v2, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Laq/c;-><init>(IIIIJLandroid/graphics/Point;)V

    goto :goto_23
.end method

.method private i()V
    .registers 2

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LaP/h;

    new-instance v0, Lcom/google/googlenav/ui/android/t;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/t;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->g:Lcom/google/googlenav/ui/android/t;

    new-instance v0, Lcom/google/googlenav/ui/android/p;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/p;-><init>(Lcom/google/googlenav/ui/android/AndroidView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/p;

    new-instance v0, Lcom/google/googlenav/ui/android/p;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/p;-><init>(Lcom/google/googlenav/ui/android/AndroidView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/p;

    return-void
.end method

.method private j()Z
    .registers 2

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->o()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private l()F
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LaP/h;

    invoke-virtual {v0}, LaP/h;->c()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LaP/h;

    invoke-virtual {v0}, LaP/h;->d()F

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->m:LaA/g;

    invoke-virtual {v0}, LaA/g;->a()V

    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v0

    invoke-virtual {v0}, LaA/i;->d()V

    return-void
.end method

.method public a(Lcom/google/googlenav/android/l;Lcom/google/googlenav/ui/android/ButtonContainer;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/l;

    new-instance v0, Lcom/google/googlenav/ui/android/c;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/android/c;-><init>(Lcom/google/googlenav/android/l;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->c:Lcom/google/googlenav/ui/android/c;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/C;)V
    .registers 7

    const/high16 v4, 0x3f00

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LaP/h;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->i()V

    :cond_e
    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v0

    check-cast v0, Lai/e;

    invoke-virtual {v0}, Lai/e;->f()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->l:Landroid/graphics/Canvas;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->l()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->g:Lcom/google/googlenav/ui/android/t;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/t;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v0

    check-cast v0, Lai/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->g:Lcom/google/googlenav/ui/android/t;

    invoke-virtual {v0, v1}, Lai/e;->a(Landroid/graphics/Canvas;)V

    :cond_47
    return-void
.end method

.method public a(LaA/r;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public a(LaA/t;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/D;->a(LaA/t;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->invalidate()V

    return v0
.end method

.method public a(LaA/z;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/C;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v0

    check-cast v0, Lai/e;

    invoke-virtual {v0}, Lai/e;->f()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v0

    check-cast v0, Lai/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->l:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lai/e;->a(Landroid/graphics/Canvas;)V

    :cond_1c
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/c;)V

    :cond_13
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->d:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->d:Z

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->k()V

    :cond_1f
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:Lai/e;

    invoke-virtual {v1, p1}, Lai/e;->a(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:Lai/e;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->a(Lah/e;)V

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->onDraw(Landroid/graphics/Canvas;)V

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->q()V

    :cond_3d
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->h()V

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 8

    const/4 v2, -0x1

    const/4 v3, 0x7

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 13

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->h()V

    if-eqz p1, :cond_b

    if-nez p2, :cond_c

    :cond_b
    :goto_b
    return v2

    :cond_c
    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v0

    invoke-virtual {v0}, LaA/i;->c()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->j()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/p;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/p;->a(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/p;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/android/p;->a(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/p;

    iget v3, v3, Lcom/google/googlenav/ui/android/p;->a:I

    iget-object v4, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/p;

    iget v4, v4, Lcom/google/googlenav/ui/android/p;->a:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/p;

    iget v4, v4, Lcom/google/googlenav/ui/android/p;->b:I

    iget-object v5, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/p;

    iget v5, v5, Lcom/google/googlenav/ui/android/p;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    new-instance v0, Laq/c;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/p;

    iget v3, v3, Lcom/google/googlenav/ui/android/p;->a:I

    iget-object v4, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/p;

    iget v4, v4, Lcom/google/googlenav/ui/android/p;->b:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Landroid/graphics/Point;

    invoke-direct/range {v0 .. v7}, Laq/c;-><init>(IIIIJLandroid/graphics/Point;)V

    :goto_4d
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Laq/c;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->invalidate()V

    const/4 v2, 0x1

    goto :goto_b

    :cond_5b
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    new-instance v0, Laq/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Landroid/graphics/Point;

    invoke-direct/range {v0 .. v7}, Laq/c;-><init>(IIIIJLandroid/graphics/Point;)V

    goto :goto_4d
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    return v3
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->m:LaA/g;

    invoke-virtual {v0, p1}, LaA/g;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return v2

    :cond_b
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aC()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LaA/i;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    goto :goto_a

    :cond_2f
    move v2, v3

    goto :goto_a
.end method
