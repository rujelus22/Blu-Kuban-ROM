.class public Lcom/google/android/apps/unveil/textinput/SmudgeView;
.super Landroid/view/View;
.source "SmudgeView.java"

# interfaces
.implements Lcom/google/android/apps/unveil/textinput/ZoomableContainer$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;,
        Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;
    }
.end annotation


# static fields
.field private static final BASE_COLORMATRIX_DATA:[F = null

.field private static final FAKE_HIGHLIGHT_ALPHA:F = 0.6f

.field private static final HORIZONTAL_MAXIMUM_ABSOLUTE_SLOPE:F = 0.25f

.field private static final INVERTING_COLORMATRIX_DATA:[F = null

.field private static final MAX_FULL_REDRAW_TIME_MS:J = 0x1f4L

.field private static final MIN_TOUCH_RADIUS_DIP:I = 0x32

.field private static final MIN_X_DELTA_FOR_SLOPE_COMPUTATION_DIP:I = 0x64

.field private static final MULTIPASS_SMUDGE_LIMIT_MS:F = 1000.0f

.field private static final SINGLE_LINE_DETECTION_ERROR_DIP:I = 0x5

.field private static final TOUCH_RADIUS_DOWNSCALE_RATIO:F = 0.75f

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private acceptSmudges:Z

.field private final alphaPaint:Landroid/graphics/Paint;

.field private final baseImagePaint:Landroid/graphics/Paint;

.field private currentSmudgeHorizontal:Z

.field private currentSmudgeLineLeft:Z

.field private currentSmudgeLineRight:Z

.field private currentSmudgeMajorDiameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private currentSmudgePath:Landroid/graphics/Path;

.field private currentSmudgePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private currentSmudgeStartMajorDiamater:Ljava/lang/Float;

.field private final dirtyRect:Landroid/graphics/Rect;

.field private final highlightCompositor:Landroid/graphics/Paint;

.field private final highlightImagePaint:Landroid/graphics/Paint;

.field private final highlightPaint:Landroid/graphics/Paint;

.field private imageToDisplay:Landroid/graphics/Bitmap;

.field private volatile imageToDisplayIsValid:Z

.field private imageToDisplayPicture:Lcom/google/android/apps/unveil/env/Picture;

.field private final joinPaint:Landroid/graphics/Paint;

.field final joinPath:Landroid/graphics/Path;

.field private lastFullRedrawTime:J

.field private lastSmudgeCompletedTime:J

.field private listener:Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;

.field private final minTouchRadius:F

.field private final minXDeltaForSlopeComputation:F

.field private offScreenCanvas:Landroid/graphics/Canvas;

.field private offScreenPicture:Lcom/google/android/apps/unveil/env/Picture;

.field private final singleLineDetectionError:F

.field private final tmpFloats:[F

.field private final tmpPoint:[F

.field private final tmpRectF:Landroid/graphics/RectF;

.field private final tmpRectI:Landroid/graphics/Rect;

.field private final unzoomMatrix:Landroid/graphics/Matrix;

.field private useManualInvalidation:Z

.field private final zoomMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x14

    .line 47
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 66
    new-array v0, v1, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->BASE_COLORMATRIX_DATA:[F

    .line 78
    new-array v0, v1, [F

    fill-array-data v0, :array_44

    sput-object v0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->INVERTING_COLORMATRIX_DATA:[F

    return-void

    .line 66
    :array_18
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x19t 0x3et
        0x9at 0x99t 0x19t 0x3et
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x19t 0x3et
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3et
        0x9at 0x99t 0x19t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 78
    :array_44
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0xc8t 0x42t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "c"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x100

    const/4 v1, 0x1

    .line 261
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    .line 180
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectF:Landroid/graphics/RectF;

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeMajorDiameters:Ljava/util/List;

    .line 237
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeLineLeft:Z

    .line 239
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeLineRight:Z

    .line 240
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeHorizontal:Z

    .line 247
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->zoomMatrix:Landroid/graphics/Matrix;

    .line 248
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->unzoomMatrix:Landroid/graphics/Matrix;

    .line 250
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpPoint:[F

    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpFloats:[F

    .line 518
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPath:Landroid/graphics/Path;

    .line 262
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setFocusable(Z)V

    .line 263
    invoke-virtual {p0, v4}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setBackgroundColor(I)V

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightPaint:Landroid/graphics/Paint;

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPaint:Landroid/graphics/Paint;

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 273
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->baseImagePaint:Landroid/graphics/Paint;

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->baseImagePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/google/android/apps/unveil/textinput/SmudgeView;->BASE_COLORMATRIX_DATA:[F

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 276
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightImagePaint:Landroid/graphics/Paint;

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightImagePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/AvoidXfermode;

    sget-object v2, Landroid/graphics/AvoidXfermode$Mode;->TARGET:Landroid/graphics/AvoidXfermode$Mode;

    invoke-direct {v1, v3, v4, v2}, Landroid/graphics/AvoidXfermode;-><init>(IILandroid/graphics/AvoidXfermode$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightImagePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 281
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightCompositor:Landroid/graphics/Paint;

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightCompositor:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 284
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->alphaPaint:Landroid/graphics/Paint;

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->alphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/google/android/apps/unveil/textinput/SmudgeView;->INVERTING_COLORMATRIX_DATA:[F

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 287
    const/high16 v0, 0x42c8

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->minXDeltaForSlopeComputation:F

    .line 288
    const/high16 v0, 0x4248

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->minTouchRadius:F

    .line 289
    const/high16 v0, 0x40a0

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->singleLineDetectionError:F

    .line 291
    const v0, 0x3f19999a

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setAlphaValue(F)V

    .line 292
    return-void
.end method

.method private declared-synchronized addPathPoint(IIF)V
    .registers 13
    .parameter "x"
    .parameter "y"
    .parameter "major"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 573
    monitor-enter p0

    :try_start_3
    iget v5, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->minTouchRadius:F

    invoke-static {v5, p3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-direct {p0, p1, p2, v5}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->mapPoint(IIF)[F

    move-result-object v0

    .line 574
    .local v0, floats:[F
    const/4 v5, 0x0

    aget v5, v0, v5

    float-to-int p1, v5

    .line 575
    const/4 v5, 0x1

    aget v5, v0, v5

    float-to-int p2, v5

    .line 576
    const/4 v5, 0x2

    aget p3, v0, v5

    .line 578
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeMajorDiameters:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePath:Landroid/graphics/Path;

    if-nez v5, :cond_45

    .line 581
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePath:Landroid/graphics/Path;

    .line 582
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePath:Landroid/graphics/Path;

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 583
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeStartMajorDiamater:Ljava/lang/Float;
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_af

    .line 602
    :goto_43
    monitor-exit p0

    return-void

    .line 588
    :cond_45
    :try_start_45
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 589
    .local v1, previousPoint:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 591
    .local v2, startPoint:Landroid/graphics/Point;
    iget-boolean v6, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeLineLeft:Z

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    int-to-float v7, p1

    iget v8, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->singleLineDetectionError:F

    sub-float/2addr v7, v8

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_b2

    move v5, v3

    :goto_6c
    and-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeLineLeft:Z

    .line 592
    iget-boolean v6, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeLineRight:Z

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    int-to-float v7, p1

    iget v8, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->singleLineDetectionError:F

    add-float/2addr v7, v8

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_b4

    move v5, v3

    :goto_7d
    and-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeLineRight:Z

    .line 596
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->minXDeltaForSlopeComputation:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a7

    .line 597
    iget-boolean v5, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeHorizontal:Z

    iget v6, v2, Landroid/graphics/Point;->y:I

    sub-int v6, p2, v6

    iget v7, v2, Landroid/graphics/Point;->x:I

    sub-int v7, p1, v7

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3e80

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b6

    :goto_a4
    and-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeHorizontal:Z

    .line 601
    :cond_a7
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePath:Landroid/graphics/Path;

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V
    :try_end_ae
    .catchall {:try_start_45 .. :try_end_ae} :catchall_af

    goto :goto_43

    .line 573
    .end local v0           #floats:[F
    .end local v1           #previousPoint:Landroid/graphics/Point;
    .end local v2           #startPoint:Landroid/graphics/Point;
    :catchall_af
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #floats:[F
    .restart local v1       #previousPoint:Landroid/graphics/Point;
    .restart local v2       #startPoint:Landroid/graphics/Point;
    :cond_b2
    move v5, v4

    .line 591
    goto :goto_6c

    :cond_b4
    move v5, v4

    .line 592
    goto :goto_7d

    :cond_b6
    move v3, v4

    .line 597
    goto :goto_a4
.end method

.method private declared-synchronized completePath(IIF)Landroid/graphics/Path;
    .registers 12
    .parameter "finalX"
    .parameter "finalY"
    .parameter "majorDiameter"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f40

    .line 611
    monitor-enter p0

    :try_start_5
    iget v4, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->minTouchRadius:F

    invoke-static {v4, p3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->mapPoint(IIF)[F

    move-result-object v0

    .line 612
    .local v0, floats:[F
    const/4 v4, 0x0

    aget v4, v0, v4

    float-to-int p1, v4

    .line 613
    const/4 v4, 0x1

    aget v4, v0, v4

    float-to-int p2, v4

    .line 614
    const/4 v4, 0x2

    aget p3, v0, v4

    .line 616
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePath:Landroid/graphics/Path;

    .line 617
    .local v1, path:Landroid/graphics/Path;
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 618
    .local v3, startPoint:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeStartMajorDiamater:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 620
    .local v2, startMajorDiameter:F
    mul-float v4, v2, v6

    div-float/2addr v4, v7

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    mul-float/2addr v6, p3

    div-float/2addr v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/GeometryUtils;->intersect(Landroid/graphics/Point;FLandroid/graphics/Point;F)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 622
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_42

    .line 625
    .end local v1           #path:Landroid/graphics/Path;
    :goto_3e
    monitor-exit p0

    return-object v1

    .restart local v1       #path:Landroid/graphics/Path;
    :cond_40
    const/4 v1, 0x0

    goto :goto_3e

    .line 611
    .end local v0           #floats:[F
    .end local v1           #path:Landroid/graphics/Path;
    .end local v2           #startMajorDiameter:F
    .end local v3           #startPoint:Landroid/graphics/Point;
    :catchall_42
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private determineInvalidRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10
    .parameter "input"
    .parameter "output"

    .prologue
    const/4 v6, 0x0

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 436
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->lastFullRedrawTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_21

    .line 437
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 438
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->unzoomMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 439
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 444
    :goto_20
    return-void

    .line 441
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getHeight()I

    move-result v3

    invoke-virtual {p2, v6, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 442
    iput-wide v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->lastFullRedrawTime:J

    goto :goto_20
.end method

.method private isCurrentSmudgeOneLine()Z
    .registers 2

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeHorizontal:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeLineLeft:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeLineRight:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private mapPoint(IIF)[F
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "major"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 562
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpPoint:[F

    int-to-float v2, p1

    aput v2, v1, v3

    .line 563
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpPoint:[F

    int-to-float v2, p2

    aput v2, v1, v4

    .line 564
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->zoomMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpPoint:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 565
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->zoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    .line 566
    .local v0, r:F
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpFloats:[F

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpPoint:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 567
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpFloats:[F

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpPoint:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 568
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpFloats:[F

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 569
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpFloats:[F

    return-object v1
.end method

.method private paint(Landroid/graphics/Path;)V
    .registers 6
    .parameter "completePath"

    .prologue
    const/4 v3, 0x0

    .line 640
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenPicture:Lcom/google/android/apps/unveil/env/Picture;

    if-eqz v0, :cond_19

    .line 641
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 642
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplayIsValid:Z

    if-eqz v0, :cond_19

    .line 643
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplay:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 647
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->invalidate()V

    .line 648
    return-void
.end method

.method private paintJoin()V
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/high16 v10, 0x4000

    .line 524
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 525
    .local v5, size:I
    if-nez v5, :cond_c

    .line 555
    :goto_b
    return-void

    .line 529
    :cond_c
    add-int/lit8 v2, v5, -0x1

    .line 530
    .local v2, lastIndex:I
    add-int/lit8 v7, v2, -0x1

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 532
    .local v4, nextToLastIndex:I
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 533
    .local v1, last:Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    invoke-direct {v3, v7}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 536
    .local v3, nextToLast:Landroid/graphics/Point;
    invoke-static {v3, v1}, Lcom/google/android/apps/unveil/env/GeometryUtils;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v7

    const/high16 v8, 0x3f80

    cmpg-float v7, v7, v8

    if-gez v7, :cond_37

    .line 537
    invoke-virtual {v3, v9, v9}, Landroid/graphics/Point;->offset(II)V

    .line 540
    :cond_37
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 541
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPath:Landroid/graphics/Path;

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 542
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPath:Landroid/graphics/Path;

    iget v8, v1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 544
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeMajorDiameters:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeMajorDiameters:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    const/high16 v8, 0x3f40

    mul-float v6, v7, v8

    .line 546
    .local v6, stroke:F
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 547
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 549
    div-float v0, v6, v10

    .line 550
    .local v0, halfStroke:F
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectF:Landroid/graphics/RectF;

    iget v8, v3, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v0

    iget v9, v3, Landroid/graphics/Point;->y:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v0

    iget v10, v3, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Point;->x:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v0

    iget v11, v3, Landroid/graphics/Point;->y:I

    iget v12, v1, Landroid/graphics/Point;->y:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 553
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectF:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 554
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_b
.end method

.method private resetPath()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 630
    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePath:Landroid/graphics/Path;

    .line 631
    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeStartMajorDiamater:Ljava/lang/Float;

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeMajorDiameters:Ljava/util/List;

    .line 634
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeLineLeft:Z

    .line 635
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeLineRight:Z

    .line 636
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgeHorizontal:Z

    .line 637
    return-void
.end method

.method private setAlphaValue(F)V
    .registers 6
    .parameter "alpha"

    .prologue
    const/high16 v3, 0x437f

    .line 651
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getAlphaValue()F

    move-result v1

    mul-float/2addr v1, v3

    mul-float v2, v3, p1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e

    .line 661
    :goto_d
    return-void

    .line 655
    :cond_e
    mul-float v1, v3, p1

    float-to-int v0, v1

    .line 656
    .local v0, alphaInt:I
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 657
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->baseImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 658
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 659
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightCompositor:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 660
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_d
.end method


# virtual methods
.method public clearSmudges()V
    .registers 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 312
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->postInvalidate()V

    .line 313
    return-void
.end method

.method public getAlphaValue()F
    .registers 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->joinPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->lastFullRedrawTime:J

    .line 402
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->useManualInvalidation:Z

    if-eqz v0, :cond_18

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 405
    :cond_18
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 406
    return-void
.end method

.method public invalidate(IIII)V
    .registers 9
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->useManualInvalidation:Z

    if-eqz v0, :cond_1d

    .line 420
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->union(IIII)V

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 425
    :goto_1c
    return-void

    .line 423
    :cond_1d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1c
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->useManualInvalidation:Z

    if-eqz v0, :cond_e

    .line 411
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 414
    :cond_e
    invoke-super {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 415
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenPicture:Lcom/google/android/apps/unveil/env/Picture;

    if-nez v0, :cond_7

    .line 397
    :goto_6
    return-void

    .line 370
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplayIsValid:Z

    if-eqz v0, :cond_7b

    .line 371
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setAlphaValue(F)V

    .line 372
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->useManualInvalidation:Z

    if-eqz v0, :cond_75

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 380
    :goto_1b
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 381
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplay:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplay:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->baseImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenPicture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->highlightCompositor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_6

    .line 375
    :cond_75
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    goto :goto_1b

    .line 395
    :cond_7b
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenPicture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 670
    sget-object v0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "onLayout(%d, %d, %d, %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 672
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 317
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenPicture:Lcom/google/android/apps/unveil/env/Picture;

    if-eqz v1, :cond_9

    .line 319
    iput-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenPicture:Lcom/google/android/apps/unveil/env/Picture;

    .line 321
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplayPicture:Lcom/google/android/apps/unveil/env/Picture;

    if-eqz v1, :cond_f

    .line 322
    iput-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplayPicture:Lcom/google/android/apps/unveil/env/Picture;

    .line 324
    :cond_f
    if-lez p1, :cond_13

    if-gtz p2, :cond_14

    .line 339
    :cond_13
    :goto_13
    return-void

    .line 327
    :cond_14
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    .local v0, offScreenBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenCanvas:Landroid/graphics/Canvas;

    .line 329
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 330
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplay:Landroid/graphics/Bitmap;

    .line 331
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplay:Landroid/graphics/Bitmap;

    invoke-static {v1, v4}, Lcom/google/android/apps/unveil/env/PictureFactory;->createBitmap(Landroid/graphics/Bitmap;I)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplayPicture:Lcom/google/android/apps/unveil/env/Picture;

    .line 332
    invoke-static {v0, v4}, Lcom/google/android/apps/unveil/env/PictureFactory;->createBitmap(Landroid/graphics/Bitmap;I)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenPicture:Lcom/google/android/apps/unveil/env/Picture;

    .line 334
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_13

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 336
    iput-boolean v5, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->useManualInvalidation:Z

    .line 337
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_13
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "event"

    .prologue
    .line 448
    iget-boolean v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->acceptSmudges:Z

    if-nez v9, :cond_6

    .line 450
    const/4 v9, 0x0

    .line 515
    :goto_5
    return v9

    .line 453
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 454
    .local v6, now:J
    iget-wide v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->lastSmudgeCompletedTime:J

    sub-long v9, v6, v9

    long-to-float v9, v9

    const/high16 v10, 0x447a

    cmpg-float v9, v9, v10

    if-gez v9, :cond_56

    const/4 v4, 0x1

    .line 455
    .local v4, isMultipassSmudge:Z
    :goto_16
    iput-wide v6, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->lastSmudgeCompletedTime:J

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 458
    .local v0, action:I
    if-eqz v0, :cond_24

    const/4 v9, 0x2

    if-eq v0, v9, :cond_24

    const/4 v9, 0x7

    if-ne v0, v9, :cond_9c

    .line 460
    :cond_24
    if-nez v0, :cond_31

    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->listener:Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;

    if-eqz v9, :cond_31

    if-nez v4, :cond_31

    .line 461
    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->listener:Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;

    invoke-interface {v9}, Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;->onSmudgeStarted()V

    .line 464
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 465
    .local v2, historySize:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 466
    .local v8, pointerCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3a
    if-ge v3, v2, :cond_5b

    .line 467
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3d
    if-ge v5, v8, :cond_58

    .line 468
    invoke-virtual {p1, v5, v3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1, v5, v3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1, v5, v3}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->addPathPoint(IIF)V

    .line 470
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->paintJoin()V

    .line 467
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 454
    .end local v0           #action:I
    .end local v2           #historySize:I
    .end local v3           #i:I
    .end local v4           #isMultipassSmudge:Z
    .end local v5           #j:I
    .end local v8           #pointerCount:I
    :cond_56
    const/4 v4, 0x0

    goto :goto_16

    .line 466
    .restart local v0       #action:I
    .restart local v2       #historySize:I
    .restart local v3       #i:I
    .restart local v4       #isMultipassSmudge:Z
    .restart local v5       #j:I
    .restart local v8       #pointerCount:I
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 473
    .end local v5           #j:I
    :cond_5b
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_5c
    if-ge v5, v8, :cond_75

    .line 476
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->addPathPoint(IIF)V

    .line 477
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->paintJoin()V

    .line 473
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 480
    :cond_75
    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->dirtyRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    invoke-direct {p0, v9, v10}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->determineInvalidRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 481
    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->invalidate(Landroid/graphics/Rect;)V

    .line 482
    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->listener:Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;

    if-eqz v9, :cond_99

    .line 483
    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->listener:Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;

    new-instance v10, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    iget-object v11, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenPicture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->isCurrentSmudgeOneLine()Z

    move-result v12

    iget-object v13, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    invoke-direct {v10, v11, v12, v4, v13}, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;-><init>(Lcom/google/android/apps/unveil/env/Picture;ZZLjava/util/List;)V

    iget-object v11, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->tmpRectI:Landroid/graphics/Rect;

    invoke-interface {v9, v10, v11}, Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;->onSmudgeProgress(Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;Landroid/graphics/Rect;)V

    .line 487
    :cond_99
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 490
    .end local v2           #historySize:I
    .end local v3           #i:I
    .end local v5           #j:I
    .end local v8           #pointerCount:I
    :cond_9c
    const/4 v9, 0x1

    if-eq v0, v9, :cond_a2

    const/4 v9, 0x3

    if-ne v0, v9, :cond_ff

    .line 491
    :cond_a2
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_a3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v5, v9, :cond_c0

    .line 492
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->addPathPoint(IIF)V

    .line 493
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->paintJoin()V

    .line 491
    add-int/lit8 v5, v5, 0x1

    goto :goto_a3

    .line 495
    :cond_c0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->completePath(IIF)Landroid/graphics/Path;

    move-result-object v1

    .line 497
    .local v1, completePath:Landroid/graphics/Path;
    if-eqz v1, :cond_d7

    .line 498
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->paint(Landroid/graphics/Path;)V

    .line 501
    :cond_d7
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->invalidate()V

    .line 502
    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->listener:Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;

    if-eqz v9, :cond_f3

    const/4 v9, 0x3

    if-eq v0, v9, :cond_f3

    .line 503
    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->listener:Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;

    new-instance v10, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    iget-object v11, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->offScreenPicture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->isCurrentSmudgeOneLine()Z

    move-result v12

    iget-object v13, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->currentSmudgePoints:Ljava/util/List;

    invoke-direct {v10, v11, v12, v4, v13}, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;-><init>(Lcom/google/android/apps/unveil/env/Picture;ZZLjava/util/List;)V

    invoke-interface {v9, v10}, Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;->onSmudgeComplete(Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;)V

    .line 507
    :cond_f3
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->resetPath()V

    .line 509
    const/4 v9, 0x3

    if-ne v0, v9, :cond_fc

    .line 510
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->clearSmudges()V

    .line 513
    :cond_fc
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 515
    .end local v1           #completePath:Landroid/graphics/Path;
    .end local v5           #j:I
    :cond_ff
    const/4 v9, 0x0

    goto/16 :goto_5
.end method

.method public onZoom(Landroid/graphics/Matrix;)V
    .registers 3
    .parameter "matrix"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->zoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 677
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->unzoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 678
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->listener:Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;

    if-eqz v0, :cond_13

    .line 679
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->listener:Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;->onZoom()V

    .line 681
    :cond_13
    return-void
.end method

.method public setAcceptSmudges(Z)V
    .registers 2
    .parameter "acceptSmudges"

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->acceptSmudges:Z

    .line 308
    return-void
.end method

.method public setImageToDisplay(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .registers 9
    .parameter "newBitmap"
    .parameter "transformation"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 348
    if-nez p1, :cond_a

    .line 349
    iput-boolean v4, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplayIsValid:Z

    .line 361
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->postInvalidate()V

    .line 362
    return-void

    .line 351
    :cond_a
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplay:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 352
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz p2, :cond_1a

    .line 353
    invoke-virtual {v0, p1, p2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 358
    :goto_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplayIsValid:Z

    goto :goto_6

    .line 355
    :cond_1a
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplay:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->imageToDisplay:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v5, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_16
.end method

.method public setListener(Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/SmudgeView;->listener:Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;

    .line 304
    return-void
.end method
