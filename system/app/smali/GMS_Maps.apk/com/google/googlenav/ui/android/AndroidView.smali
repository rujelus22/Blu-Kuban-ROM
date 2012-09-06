.class public Lcom/google/googlenav/ui/android/AndroidView;
.super Lcom/google/googlenav/ui/android/BaseAndroidView;
.source "SourceFile"

# interfaces
.implements Laj/m;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/google/googlenav/ui/c;


# instance fields
.field private final f:LT/e;

.field private g:LaB/h;

.field private h:Lcom/google/googlenav/ui/android/F;

.field private i:Lcom/google/googlenav/ui/android/o;

.field private j:Lcom/google/googlenav/ui/android/o;

.field private final k:Landroid/graphics/Point;

.field private l:Z

.field private m:Landroid/graphics/Canvas;

.field private final n:Laj/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/BaseAndroidView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, LT/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT/e;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LT/e;

    .line 93
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Landroid/graphics/Point;

    .line 115
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/AndroidView;->setFocusable(Z)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/AndroidView;->setFocusableInTouchMode(Z)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/AndroidView;->setWillNotDraw(Z)V

    .line 119
    new-instance v0, Laj/g;

    invoke-direct {v0}, Laj/g;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->n:Laj/g;

    .line 120
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->n:Laj/g;

    invoke-virtual {v0, p1, p0, p0}, Laj/g;->a(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:Laj/i;

    invoke-virtual {v0, p1, p0}, Laj/i;->a(Landroid/content/Context;Laj/m;)V

    .line 123
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->b()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 124
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->a()V

    .line 126
    :cond_39
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/AndroidView;)F
    .registers 2
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->k()F

    move-result v0

    return v0
.end method

.method private a()V
    .registers 2

    .prologue
    .line 161
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->g:LaB/h;

    .line 162
    new-instance v0, Lcom/google/googlenav/ui/android/F;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/F;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/F;

    .line 163
    new-instance v0, Lcom/google/googlenav/ui/android/o;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/o;-><init>(Lcom/google/googlenav/ui/android/AndroidView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/o;

    .line 164
    new-instance v0, Lcom/google/googlenav/ui/android/o;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/o;-><init>(Lcom/google/googlenav/ui/android/AndroidView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Lcom/google/googlenav/ui/android/o;

    .line 165
    return-void
.end method

.method private a(Landroid/view/MotionEvent;IIJ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 222
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:Laj/i;

    invoke-virtual {v0}, Laj/i;->b()V

    .line 223
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->j()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 224
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/o;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/o;->a(Landroid/view/MotionEvent;)V

    .line 225
    new-instance v0, LZ/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/o;

    iget v3, v1, Lcom/google/googlenav/ui/android/o;->a:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/o;

    iget v4, v1, Lcom/google/googlenav/ui/android/o;->b:I

    move v1, p2

    move v2, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, LZ/b;-><init>(IIIIJLandroid/graphics/Point;)V

    .line 233
    :goto_21
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->a(LZ/b;)V

    .line 234
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->invalidate()V

    .line 235
    return-void

    .line 230
    :cond_2e
    new-instance v0, LZ/b;

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

    invoke-direct/range {v0 .. v7}, LZ/b;-><init>(IIIIJLandroid/graphics/Point;)V

    goto :goto_21
.end method

.method private j()Z
    .registers 2

    .prologue
    .line 191
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->j()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private k()F
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->g:LaB/h;

    invoke-virtual {v0}, LaB/h;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 411
    const/4 v0, 0x0

    .line 413
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->g:LaB/h;

    invoke-virtual {v0}, LaB/h;->d()F

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method public a(Lcom/google/googlenav/android/i;Lcom/google/googlenav/ui/android/ButtonContainer;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/i;

    .line 131
    new-instance v0, Lcom/google/googlenav/ui/android/b;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/android/b;-><init>(Lcom/google/googlenav/android/i;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->c:Lcom/google/googlenav/ui/android/b;

    .line 132
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/u;)V
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x3f00

    const/4 v2, 0x0

    .line 385
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->l:Z

    if-eqz v0, :cond_47

    .line 386
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->g:LaB/h;

    if-nez v0, :cond_e

    .line 389
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->a()V

    .line 392
    :cond_e
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v0

    check-cast v0, LT/e;

    invoke-virtual {v0}, LT/e;->f()Landroid/graphics/Canvas;

    move-result-object v0

    .line 393
    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->m:Landroid/graphics/Canvas;

    .line 397
    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 398
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 399
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->k()F

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

    .line 400
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/F;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/F;->a(Landroid/graphics/Canvas;)V

    .line 401
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v0

    check-cast v0, LT/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/F;

    invoke-virtual {v0, v1}, LT/e;->a(Landroid/graphics/Canvas;)V

    .line 403
    :cond_47
    return-void
.end method

.method public a(Laj/r;)Z
    .registers 3
    .parameter

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public a(Laj/t;)Z
    .registers 3
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:Laj/i;

    invoke-virtual {v0}, Laj/i;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/v;->a(Laj/t;)Z

    move-result v0

    .line 332
    :goto_12
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->invalidate()V

    .line 333
    return v0

    .line 330
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public a(Laj/z;)Z
    .registers 3
    .parameter

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->n:Laj/g;

    invoke-virtual {v0}, Laj/g;->a()V

    .line 137
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:Laj/i;

    invoke-virtual {v0}, Laj/i;->c()V

    .line 138
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/u;)V
    .registers 4
    .parameter

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->l:Z

    if-eqz v0, :cond_1c

    .line 419
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v0

    check-cast v0, LT/e;

    invoke-virtual {v0}, LT/e;->f()Landroid/graphics/Canvas;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 421
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v0

    check-cast v0, LT/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->m:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, LT/e;->a(Landroid/graphics/Canvas;)V

    .line 423
    :cond_1c
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 148
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 153
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method

.method public g()V
    .registers 1

    .prologue
    .line 158
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    .line 246
    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->l:Z

    .line 170
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->l:Z

    if-eqz v0, :cond_13

    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/c;)V

    .line 173
    :cond_13
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->d:Z

    .line 174
    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->d:Z

    if-eqz v1, :cond_1f

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->d:Z

    .line 176
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->n()V

    .line 179
    :cond_1f
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LT/e;

    invoke-virtual {v1, p1}, LT/e;->a(Landroid/graphics/Canvas;)V

    .line 180
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LT/e;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->a(LS/e;)V

    .line 181
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->onDraw(Landroid/graphics/Canvas;)V

    .line 183
    if-nez v0, :cond_3d

    .line 184
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->screenDrawn()V

    .line 186
    :cond_3d
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->h()V

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter

    .prologue
    .line 313
    const/4 v2, -0x1

    const/4 v3, 0x7

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    .line 315
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 281
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->h()V

    .line 283
    if-eqz p1, :cond_b

    if-nez p2, :cond_c

    .line 308
    :cond_b
    :goto_b
    return v2

    .line 290
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:Laj/i;

    invoke-virtual {v0}, Laj/i;->b()V

    .line 293
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->j()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 294
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/o;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/o;->a(Landroid/view/MotionEvent;)V

    .line 295
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Lcom/google/googlenav/ui/android/o;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/android/o;->a(Landroid/view/MotionEvent;)V

    .line 296
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/o;

    iget v3, v3, Lcom/google/googlenav/ui/android/o;->a:I

    iget-object v4, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Lcom/google/googlenav/ui/android/o;

    iget v4, v4, Lcom/google/googlenav/ui/android/o;->a:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/o;

    iget v4, v4, Lcom/google/googlenav/ui/android/o;->b:I

    iget-object v5, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Lcom/google/googlenav/ui/android/o;

    iget v5, v5, Lcom/google/googlenav/ui/android/o;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 298
    new-instance v0, LZ/b;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Lcom/google/googlenav/ui/android/o;

    iget v3, v3, Lcom/google/googlenav/ui/android/o;->a:I

    iget-object v4, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:Lcom/google/googlenav/ui/android/o;

    iget v4, v4, Lcom/google/googlenav/ui/android/o;->b:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Landroid/graphics/Point;

    invoke-direct/range {v0 .. v7}, LZ/b;-><init>(IIIIJLandroid/graphics/Point;)V

    .line 306
    :goto_4b
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->a(LZ/b;)V

    .line 307
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->invalidate()V

    .line 308
    const/4 v2, 0x1

    goto :goto_b

    .line 301
    :cond_59
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Landroid/graphics/Point;

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

    .line 303
    new-instance v0, LZ/b;

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

    iget-object v7, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Landroid/graphics/Point;

    invoke-direct/range {v0 .. v7}, LZ/b;-><init>(IIIIJLandroid/graphics/Point;)V

    goto :goto_4b
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 269
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 239
    const/4 v2, -0x1

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    .line 241
    return v3
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 273
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    .line 275
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->n:Laj/g;

    invoke-virtual {v0, p1}, Laj/g;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 217
    :cond_a
    :goto_a
    return v2

    .line 206
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:Laj/i;

    invoke-virtual {v0}, Laj/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:Laj/i;

    invoke-virtual {v0, p1}, Laj/i;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 211
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2b

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    goto :goto_a

    :cond_2b
    move v2, v3

    .line 217
    goto :goto_a
.end method
