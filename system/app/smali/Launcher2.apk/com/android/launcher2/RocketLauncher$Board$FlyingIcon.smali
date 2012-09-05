.class public Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;
.super Landroid/widget/ImageView;
.source "RocketLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/RocketLauncher$Board;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlyingIcon"
.end annotation


# static fields
.field public static final ANGULAR_VMAX:F = 45.0f

.field public static final ANGULAR_VMIN:F = 0.0f

.field public static final SCALE_MAX:F = 4.0f

.field public static final SCALE_MIN:F = 0.5f

.field public static final VMAX:F = 1000.0f

.field public static final VMIN:F = 100.0f


# instance fields
.field public angle:F

.field public anglex:F

.field public angley:F

.field public boardCenterX:F

.field public boardCenterY:F

.field public component:Landroid/content/ComponentName;

.field public dist:F

.field public endscale:F

.field public fuse:F

.field public final hsv:[F

.field final synthetic this$0:Lcom/android/launcher2/RocketLauncher$Board;

.field public v:F

.field public vr:F


# direct methods
.method public constructor <init>(Lcom/android/launcher2/RocketLauncher$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "as"

    .prologue
    const/4 v3, 0x2

    const/high16 v2, 0x3f80

    .line 104
    iput-object p1, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    .line 105
    invoke-direct {p0, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->hsv:[F

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setLayerType(ILandroid/graphics/Paint;)V

    .line 108
    const v0, 0x7f02000e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setBackgroundResource(I)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->hsv:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->hsv:[F

    aput v2, v0, v3

    .line 112
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/high16 v10, 0x4170

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    iget-object v7, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    #getter for: Lcom/android/launcher2/RocketLauncher$Board;->mManeuveringThrusters:Z
    invoke-static {v7}, Lcom/android/launcher2/RocketLauncher$Board;->access$000(Lcom/android/launcher2/RocketLauncher$Board;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->component:Landroid/content/ComponentName;

    if-nez v7, :cond_12

    .line 168
    :cond_11
    :goto_11
    return v5

    .line 119
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->getAlpha()F

    move-result v7

    const/high16 v8, 0x3f00

    cmpg-float v7, v7, v8

    if-gez v7, :cond_20

    .line 120
    invoke-virtual {p0, v5}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setPressed(Z)V

    goto :goto_11

    .line 124
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_b8

    :cond_27
    :goto_27
    move v5, v6

    .line 168
    goto :goto_11

    .line 126
    :pswitch_29
    invoke-virtual {p0, v6}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setPressed(Z)V

    .line 127
    iget-object v5, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    invoke-virtual {v5}, Lcom/android/launcher2/RocketLauncher$Board;->resetWarpTimer()V

    goto :goto_27

    .line 130
    :pswitch_32
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 131
    .local v2, hit:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 132
    .local v3, offset:Landroid/graphics/Point;
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iget v7, v3, Landroid/graphics/Point;->x:I

    add-int v0, v5, v7

    .line 134
    .local v0, globx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v7, v3, Landroid/graphics/Point;->y:I

    add-int v1, v5, v7

    .line 135
    .local v1, globy:I
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setPressed(Z)V

    .line 136
    iget-object v5, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    invoke-virtual {v5}, Lcom/android/launcher2/RocketLauncher$Board;->resetWarpTimer()V

    goto :goto_27

    .line 139
    .end local v0           #globx:I
    .end local v1           #globy:I
    .end local v2           #hit:Landroid/graphics/Rect;
    .end local v3           #offset:Landroid/graphics/Point;
    :pswitch_5e
    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 140
    invoke-virtual {p0, v5}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setPressed(Z)V

    .line 141
    new-instance v7, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon$1;

    invoke-direct {v7, p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon$1;-><init>(Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;)V

    const-wide/16 v8, 0x190

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    iput v11, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->endscale:F

    .line 153
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 154
    .local v4, s:Landroid/animation/AnimatorSet;
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    const-string v8, "scaleX"

    new-array v9, v6, [F

    aput v10, v9, v5

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "scaleY"

    new-array v9, v6, [F

    aput v10, v9, v5

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x2

    const-string v9, "alpha"

    new-array v10, v6, [F

    aput v11, v10, v5

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 162
    const-wide/16 v7, 0x1f4

    invoke-virtual {v4, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 163
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x4040

    invoke-direct {v5, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_27

    .line 124
    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_29
        :pswitch_5e
        :pswitch_32
    .end packed-switch
.end method

.method public randomize()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const-wide v4, 0x4066800000000000L

    const-wide v2, 0x400921fb54442d18L

    .line 182
    const/high16 v0, 0x42c8

    const/high16 v1, 0x447a

    invoke-static {v0, v1}, Lcom/android/launcher2/RocketLauncher$Board;->randfrange(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->v:F

    .line 183
    const/high16 v0, 0x43b4

    invoke-static {v6, v0}, Lcom/android/launcher2/RocketLauncher$Board;->randfrange(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->angle:F

    .line 184
    iget v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->angle:F

    float-to-double v0, v0

    div-double/2addr v0, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->anglex:F

    .line 185
    iget v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->angle:F

    float-to-double v0, v0

    div-double/2addr v0, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->angley:F

    .line 186
    const/high16 v0, 0x4234

    invoke-static {v6, v0}, Lcom/android/launcher2/RocketLauncher$Board;->randfrange(FF)F

    move-result v0

    invoke-static {}, Lcom/android/launcher2/RocketLauncher$Board;->randsign()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->vr:F

    .line 187
    const/high16 v0, 0x3f00

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/android/launcher2/RocketLauncher$Board;->randfrange(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->endscale:F

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->randomizeIcon()V

    .line 190
    return-void
.end method

.method public randomizeIcon()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    iget-object v0, v0, Lcom/android/launcher2/RocketLauncher$Board;->mComponentNames:[Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/launcher2/RocketLauncher$Board;->pick([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->component:Landroid/content/ComponentName;

    .line 178
    iget-object v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    iget-object v0, v0, Lcom/android/launcher2/RocketLauncher$Board;->mIcons:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->randomize()V

    .line 193
    iget-object v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    invoke-virtual {v0}, Lcom/android/launcher2/RocketLauncher$Board;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->boardCenterX:F

    .line 194
    iget-object v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    invoke-virtual {v0}, Lcom/android/launcher2/RocketLauncher$Board;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->boardCenterY:F

    .line 195
    iget v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->boardCenterX:F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setX(F)V

    .line 196
    iget v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->boardCenterY:F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setY(F)V

    .line 197
    iget v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->boardCenterX:F

    iget v1, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->boardCenterY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->fuse:F

    .line 198
    const/high16 v0, 0x4334

    iget v1, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->angle:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setRotation(F)V

    .line 199
    invoke-virtual {p0, v2}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setScaleX(F)V

    .line 200
    invoke-virtual {p0, v2}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setScaleY(F)V

    .line 201
    iput v2, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->dist:F

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setAlpha(F)V

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 172
    const-string v0, "<\'%s\' @ (%.1f, %.1f) v=%.1f a=%.1f dist/fuse=%.1f/%.1f>"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "icon"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->v:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->angle:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->dist:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->fuse:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .registers 14
    .parameter "dt"

    .prologue
    const/high16 v11, 0x42c8

    const/high16 v10, 0x3f40

    const-wide/high16 v8, 0x4008

    const/4 v3, 0x0

    const/high16 v7, 0x3f80

    .line 205
    iget v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->dist:F

    iget v5, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->v:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->dist:F

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->anglex:F

    iget v6, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->v:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setX(F)V

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->angley:F

    iget v6, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->v:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setY(F)V

    .line 209
    iget v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->endscale:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_8b

    .line 210
    iget v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->endscale:F

    iget v5, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->dist:F

    iget v6, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->fuse:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/RocketLauncher$Board;->lerp(FFF)F

    move-result v2

    .line 211
    .local v2, scale:F
    iget v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->v:F

    sub-float/2addr v4, v11

    const/high16 v5, 0x4461

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v7, v10, v4}, Lcom/android/launcher2/RocketLauncher$Board;->lerp(FFF)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setScaleX(F)V

    .line 212
    const/high16 v4, 0x3fc0

    iget v5, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->v:F

    sub-float/2addr v5, v11

    const/high16 v6, 0x4461

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v7, v4, v5}, Lcom/android/launcher2/RocketLauncher$Board;->lerp(FFF)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setScaleY(F)V

    .line 213
    iget v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->fuse:F

    const v5, 0x3e19999a

    mul-float v0, v4, v5

    .line 214
    .local v0, q1:F
    iget v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->fuse:F

    mul-float v1, v4, v10

    .line 215
    .local v1, q4:F
    iget v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->dist:F

    cmpg-float v4, v4, v0

    if-gez v4, :cond_8c

    .line 216
    iget v3, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->dist:F

    div-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setAlpha(F)V

    .line 223
    .end local v0           #q1:F
    .end local v1           #q4:F
    .end local v2           #scale:F
    :cond_8b
    :goto_8b
    return-void

    .line 217
    .restart local v0       #q1:F
    .restart local v1       #q4:F
    .restart local v2       #scale:F
    :cond_8c
    iget v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->dist:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_b0

    .line 218
    iget v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->dist:F

    iget v5, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->fuse:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_9e

    :goto_9a
    invoke-virtual {p0, v3}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setAlpha(F)V

    goto :goto_8b

    :cond_9e
    iget v3, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->dist:F

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->fuse:F

    sub-float/2addr v4, v1

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v3, v7, v3

    goto :goto_9a

    .line 220
    :cond_b0
    invoke-virtual {p0, v7}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->setAlpha(F)V

    goto :goto_8b
.end method
