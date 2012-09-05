.class public Lcom/sec/android/glview/TwGLUtil;
.super Ljava/lang/Object;
.source "TwGLUtil.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.cooliris.media.action.REVIEW"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static Assert(Z)V
    .registers 2
    .parameter "cond"

    .prologue
    .line 220
    if-nez p0, :cond_8

    .line 221
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 223
    :cond_8
    return-void
.end method

.method public static final calculateSampleSize(II)I
    .registers 3
    .parameter "src"
    .parameter "target"

    .prologue
    .line 675
    if-lt p0, p1, :cond_4

    if-nez p1, :cond_6

    .line 676
    :cond_4
    const/4 v0, 0x1

    .line 678
    :goto_5
    return v0

    :cond_6
    div-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_5
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_8

    .line 425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 426
    :cond_8
    return-object p0
.end method

.method public static clamp(III)I
    .registers 3
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 490
    if-le p0, p2, :cond_3

    .line 494
    .end local p2
    :goto_2
    return p2

    .line 492
    .restart local p2
    :cond_3
    if-ge p0, p1, :cond_7

    move p2, p1

    .line 493
    goto :goto_2

    :cond_7
    move p2, p0

    .line 494
    goto :goto_2
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 179
    if-nez p0, :cond_3

    .line 186
    :goto_2
    return-void

    .line 182
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 183
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static distance(FFFF)F
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 476
    sub-float v0, p0, p2

    .line 477
    .local v0, dx:F
    sub-float v1, p1, p3

    .line 478
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 437
    if-eq p0, p1, :cond_c

    if-nez p0, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static getAlphaOffAnimation()Landroid/view/animation/Animation;
    .registers 3

    .prologue
    .line 262
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 263
    .local v0, showAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 265
    return-object v0
.end method

.method public static getAlphaOnAnimation()Landroid/view/animation/Animation;
    .registers 3

    .prologue
    .line 250
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 251
    .local v0, showAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 253
    return-object v0
.end method

.method public static getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 538
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 539
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 540
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 541
    return-object v0
.end method

.method public static getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;
    .registers 4
    .parameter "array"

    .prologue
    .line 523
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 524
    .local v1, tempBuffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 525
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 526
    .local v0, buffer:Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 527
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 528
    return-object v0
.end method

.method public static getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V
    .registers 5
    .parameter "glContext"
    .parameter "glCoordinate"
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 558
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 559
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 560
    return-void
.end method

.method public static getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F
    .registers 2
    .parameter "glContext"
    .parameter "screenDistance"

    .prologue
    .line 570
    return p1
.end method

.method public static getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F
    .registers 2
    .parameter "glContext"
    .parameter "screenDistance"

    .prologue
    .line 582
    return p1
.end method

.method public static final getGLOrientationBySystemOrientation(I)I
    .registers 3
    .parameter "orientation"

    .prologue
    .line 659
    invoke-static {p0}, Lcom/sec/android/glview/TwGLUtil;->roundOrientation(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5a

    .line 661
    .local v0, degree:I
    sparse-switch v0, :sswitch_data_12

    .line 670
    const/4 v1, 0x0

    :goto_a
    return v1

    .line 663
    :sswitch_b
    const/4 v1, 0x3

    goto :goto_a

    .line 665
    :sswitch_d
    const/4 v1, 0x2

    goto :goto_a

    .line 667
    :sswitch_f
    const/4 v1, 0x1

    goto :goto_a

    .line 661
    nop

    :sswitch_data_12
    .sparse-switch
        0x5a -> :sswitch_b
        0xb4 -> :sswitch_d
        0x10e -> :sswitch_f
    .end sparse-switch
.end method

.method public static getScreenCoordinateFromGLCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V
    .registers 5
    .parameter "glContext"
    .parameter "screenCoordinate"
    .parameter "glX"
    .parameter "glY"

    .prologue
    .line 598
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 599
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 600
    return-void
.end method

.method public static getScreenDistanceFromGLDistanceX(Lcom/sec/android/glview/TwGLContext;F)F
    .registers 2
    .parameter "glContext"
    .parameter "glDistance"

    .prologue
    .line 611
    return p1
.end method

.method public static getScreenDistanceFromGLDistanceY(Lcom/sec/android/glview/TwGLContext;F)F
    .registers 2
    .parameter "glContext"
    .parameter "glDistance"

    .prologue
    .line 623
    return p1
.end method

.method public static getSlideInAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;
    .registers 11
    .parameter "view"
    .parameter "from"

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x0

    .line 387
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 389
    .local v1, animation:Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_7a

    .line 403
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :pswitch_16
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 405
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 406
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 407
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 408
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 409
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x3f80

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 410
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 411
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 412
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 413
    return-object v1

    .line 394
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_58
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 395
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_21

    .line 397
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_63
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 398
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_21

    .line 400
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_6f
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 401
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_21

    .line 389
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_58
        :pswitch_63
        :pswitch_6f
    .end packed-switch
.end method

.method public static getSlideInAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;
    .registers 11
    .parameter "view"
    .parameter "from"

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x0

    .line 350
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 352
    .local v1, animation:Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_80

    .line 366
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    :pswitch_16
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 368
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_20
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 369
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 370
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 371
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 372
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x3f80

    invoke-direct {v0, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 373
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 374
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 375
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 376
    return-object v1

    .line 357
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_61
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 358
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_20

    .line 360
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_6b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 361
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_20

    .line 363
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_76
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 364
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_20

    .line 352
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_16
        :pswitch_61
        :pswitch_6b
        :pswitch_76
    .end packed-switch
.end method

.method public static getSlideOutAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;
    .registers 11
    .parameter "view"
    .parameter "to"

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x0

    .line 313
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 315
    .local v1, animation:Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_7a

    .line 329
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :pswitch_16
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 331
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 332
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 333
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 334
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 335
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x3f80

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 336
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 337
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 338
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 339
    return-object v1

    .line 320
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_58
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 321
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_21

    .line 323
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_63
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 324
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_21

    .line 326
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_6f
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 327
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_21

    .line 315
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_58
        :pswitch_63
        :pswitch_6f
    .end packed-switch
.end method

.method public static getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;
    .registers 11
    .parameter "view"
    .parameter "to"

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x0

    .line 276
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 278
    .local v1, animation:Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_80

    .line 292
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :pswitch_16
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 294
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_20
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 295
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 296
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 297
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 298
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x3f80

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 299
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 300
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 301
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 302
    return-object v1

    .line 283
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_61
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 284
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_20

    .line 286
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_6b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 287
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_20

    .line 289
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_76
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 290
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_20

    .line 278
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_16
        :pswitch_61
        :pswitch_6b
        :pswitch_76
    .end packed-switch
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, s:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 166
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 170
    .end local v0           #i:I
    :goto_c
    return v0

    .line 165
    .restart local v0       #i:I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static isPowerOf2(I)Z
    .registers 2
    .parameter "n"

    .prologue
    .line 447
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static nextPowerOf2(I)I
    .registers 2
    .parameter "n"

    .prologue
    .line 457
    add-int/lit8 p0, p0, -0x1

    .line 458
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 459
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 460
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 461
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 462
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 463
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 73
    if-eqz p1, :cond_31

    if-eqz p0, :cond_31

    .line 74
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 78
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 80
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_31

    .line 81
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_30} :catch_32

    .line 82
    move-object p0, v7

    .line 88
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_31
    :goto_31
    return-object p0

    .line 84
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_32
    move-exception v0

    goto :goto_31
.end method

.method private static roundOrientation(I)I
    .registers 3
    .parameter "orientation"

    .prologue
    .line 633
    const/4 v1, -0x1

    if-ne p0, v1, :cond_4

    .line 634
    const/4 p0, 0x0

    .line 636
    :cond_4
    rem-int/lit16 p0, p0, 0x168

    .line 638
    const/16 v1, 0x2d

    if-ge p0, v1, :cond_c

    .line 639
    const/4 v0, 0x0

    .line 649
    .local v0, retVal:I
    :goto_b
    return v0

    .line 640
    .end local v0           #retVal:I
    :cond_c
    const/16 v1, 0x87

    if-ge p0, v1, :cond_13

    .line 641
    const/16 v0, 0x5a

    .restart local v0       #retVal:I
    goto :goto_b

    .line 642
    .end local v0           #retVal:I
    :cond_13
    const/16 v1, 0xe1

    if-ge p0, v1, :cond_1a

    .line 643
    const/16 v0, 0xb4

    .restart local v0       #retVal:I
    goto :goto_b

    .line 644
    .end local v0           #retVal:I
    :cond_1a
    const/16 v1, 0x13b

    if-ge p0, v1, :cond_21

    .line 645
    const/16 v0, 0x10e

    .restart local v0       #retVal:I
    goto :goto_b

    .line 647
    .end local v0           #retVal:I
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #retVal:I
    goto :goto_b
.end method

.method public static toGLMatrix([F)[F
    .registers 8
    .parameter "v"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 504
    const/16 v0, 0xf

    const/16 v1, 0x8

    aget v1, p0, v1

    aput v1, p0, v0

    .line 505
    const/16 v0, 0xd

    aget v1, p0, v6

    aput v1, p0, v0

    .line 506
    aget v0, p0, v5

    aput v0, p0, v6

    .line 507
    aget v0, p0, v2

    aput v0, p0, v5

    .line 508
    const/16 v0, 0xc

    aget v1, p0, v4

    aput v1, p0, v0

    .line 509
    aget v0, p0, v3

    aput v0, p0, v2

    .line 510
    const/4 v0, 0x6

    aget v0, p0, v0

    aput v0, p0, v3

    .line 511
    const/4 v0, 0x6

    const/16 v1, 0x8

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v3, p0, v2

    aput v3, p0, v1

    aput v3, p0, v0

    aput v3, p0, v4

    .line 512
    const/16 v0, 0xa

    const/high16 v1, 0x3f80

    aput v1, p0, v0

    .line 513
    return-object p0
.end method
