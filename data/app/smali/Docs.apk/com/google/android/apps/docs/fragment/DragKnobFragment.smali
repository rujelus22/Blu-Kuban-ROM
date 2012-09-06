.class public Lcom/google/android/apps/docs/fragment/DragKnobFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "DragKnobFragment.java"

# interfaces
.implements Laax;


# instance fields
.field private a:F

.field private a:I

.field private a:J

.field private a:Lcom/google/android/apps/docs/view/DragKnobView;

.field private a:Z

.field private b:F

.field private b:I

.field private b:J

.field private b:Landroid/view/ViewGroup;

.field private b:Z

.field private c:F

.field private c:I

.field private c:Z

.field private d:F

.field private d:Landroid/view/View;

.field private e:F

.field private e:Landroid/view/View;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private m:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Z

    .line 81
    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Z

    .line 125
    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:I

    .line 131
    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:I

    .line 164
    iput v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:I

    .line 165
    iput v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->m:I

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:Z

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .registers 12
    .parameter

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b(Landroid/view/MotionEvent;)F

    move-result v0

    .line 324
    iget v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->d:F

    sub-float v1, v0, v1

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 326
    iget-wide v4, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:J

    sub-long v4, v2, v4

    .line 328
    float-to-double v6, v1

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1d

    const-wide/16 v6, 0x32

    cmp-long v6, v4, v6

    if-lez v6, :cond_25

    .line 329
    :cond_1d
    iput-wide v4, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:J

    .line 330
    iput v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->e:F

    .line 331
    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->d:F

    .line 332
    iput-wide v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:J

    .line 335
    :cond_25
    return v0
.end method

.method private a(Landroid/view/View;)F
    .registers 3
    .parameter

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    goto :goto_9
.end method

.method public static a(Z)Lcom/google/android/apps/docs/fragment/DragKnobFragment;
    .registers 3
    .parameter

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;-><init>()V

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    invoke-static {v1, p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Landroid/os/Bundle;Z)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->d(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method

.method private a(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Landroid/view/View;F)V

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->d:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Landroid/view/View;F)V

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 280
    return-void
.end method

.method private static a(Landroid/os/Bundle;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    const-string v0, "isBelowCovered"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method private a(Landroid/view/View;F)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 421
    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 422
    iget-boolean v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Z

    if-eqz v1, :cond_16

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 427
    :goto_15
    return-void

    .line 425
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_15
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x4170

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 355
    const-wide/16 v3, 0xfa

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 362
    :cond_12
    :goto_12
    return v0

    .line 359
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:F

    sub-float/2addr v1, v2

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:F

    sub-float/2addr v2, v3

    .line 362
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_12

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_12

    const/4 v0, 0x1

    goto :goto_12
.end method

.method private b(Landroid/view/MotionEvent;)F
    .registers 3
    .parameter

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    goto :goto_8
.end method

.method private b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:Z

    .line 394
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->q()V

    .line 395
    return-void
.end method

.method private p()V
    .registers 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a()Landroid/view/View;

    move-result-object v0

    const-string v1, "DragKnobFragment"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laam;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    .line 191
    return-void
.end method

.method private q()V
    .registers 5

    .prologue
    .line 263
    iget v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->h:F

    .line 264
    const/4 v0, 0x0

    .line 265
    iget-boolean v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:Z

    if-eqz v2, :cond_11

    .line 266
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->e:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :goto_d
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(FF)V

    .line 274
    return-void

    .line 268
    :cond_11
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->e:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 270
    iget v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    goto :goto_d
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    .line 292
    sget v0, LcU;->drag_knob:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/DragKnobView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/view/DragKnobView;->a(Laax;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    return-object v0
.end method

.method public a()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->m:I

    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_1a

    iget v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:I

    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_1d

    .line 197
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->d:Landroid/view/View;

    .line 200
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->d:Landroid/view/View;

    if-eqz v0, :cond_4c

    .line 201
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Z

    if-nez v0, :cond_4b

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Landroid/view/View;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 203
    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->h:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4b

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->h:F

    iget v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4b

    .line 204
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->q()V

    .line 260
    :cond_4b
    :goto_4b
    return-void

    .line 211
    :cond_4c
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_57

    .line 214
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->p()V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4b

    .line 220
    :cond_57
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->m:I

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:I

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 224
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_e1

    move v0, v1

    :goto_75
    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Z

    .line 225
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, LcQ;->drag_knob_width_visible_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:I

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->e:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->d:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 238
    iget-boolean v3, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Z

    if-eqz v3, :cond_e3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_9f
    const/4 v3, -0x1

    if-ne v0, v3, :cond_e6

    .line 241
    :goto_a2
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Z

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_ac
    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:I

    .line 242
    if-eqz v1, :cond_b7

    .line 245
    iget v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:I

    iget v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:I

    .line 252
    :cond_b7
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcQ;->drag_knob_extra_touch_zone_per_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 254
    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->h:F

    .line 255
    iget v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->h:F

    iget v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->i:F

    .line 256
    iget v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->h:F

    iget v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->i:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->j:F

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/view/DragKnobView;->setVisibility(I)V

    .line 259
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->q()V

    goto/16 :goto_4b

    :cond_e1
    move v0, v2

    .line 224
    goto :goto_75

    .line 238
    :cond_e3
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_9f

    :cond_e6
    move v1, v2

    goto :goto_a2

    .line 241
    :cond_e8
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_ac
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/os/Bundle;)V

    .line 300
    if-eqz p1, :cond_10

    .line 301
    :goto_5
    if-eqz p1, :cond_f

    .line 302
    const-string v0, "isBelowCovered"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:Z

    .line 304
    :cond_f
    return-void

    .line 300
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_5
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter

    .prologue
    .line 308
    const-string v0, "DragKnobFragment"

    const-string v1, "onStartDrag"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Z

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:F

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:F

    .line 312
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:F

    .line 313
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->f:F

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->g:F

    .line 315
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:J

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->e:F

    .line 317
    iget v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:F

    iput v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->d:F

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:J

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:Z

    if-eq v0, p1, :cond_7

    .line 399
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b(Z)V

    .line 401
    :cond_7
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:F

    sub-float v1, v0, v1

    .line 341
    iget v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->f:F

    add-float/2addr v0, v1

    .line 342
    iget v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->h:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1e

    .line 343
    iget v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->h:F

    .line 344
    iget v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->f:F

    sub-float v1, v0, v1

    .line 350
    :cond_17
    :goto_17
    iget v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->g:F

    add-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(FF)V

    .line 351
    return-void

    .line 345
    :cond_1e
    iget v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->i:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_17

    .line 346
    iget v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->i:F

    .line 347
    iget v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->f:F

    sub-float v1, v0, v1

    goto :goto_17
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->c(Landroid/os/Bundle;)V

    .line 285
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:Z

    invoke-static {p1, v0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Landroid/os/Bundle;Z)V

    .line 286
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 368
    const-string v2, "DragKnobFragment"

    const-string v3, "onStopDrag"

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iput-boolean v1, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Z

    .line 371
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 373
    iget-boolean v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:Z

    if-nez v2, :cond_19

    :goto_15
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b(Z)V

    .line 390
    :goto_18
    return-void

    :cond_19
    move v0, v1

    .line 373
    goto :goto_15

    .line 377
    :cond_1b
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->c:F

    sub-float/2addr v2, v3

    .line 378
    iget v3, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->f:F

    add-float/2addr v2, v3

    .line 379
    iget v3, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->j:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_51

    move v2, v0

    .line 381
    :goto_2c
    iget-wide v3, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4d

    .line 382
    iget v3, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->e:F

    iget-wide v4, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    .line 383
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3e99999a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4d

    .line 384
    float-to-double v2, v3

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_53

    :goto_4c
    move v2, v0

    .line 389
    :cond_4d
    invoke-direct {p0, v2}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b(Z)V

    goto :goto_18

    :cond_51
    move v2, v1

    .line 379
    goto :goto_2c

    :cond_53
    move v0, v1

    .line 384
    goto :goto_4c
.end method

.method public f_()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 405
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f_()V

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 408
    iput-object v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->d:Landroid/view/View;

    .line 409
    iput-object v2, p0, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->b:Landroid/view/ViewGroup;

    .line 410
    return-void
.end method
