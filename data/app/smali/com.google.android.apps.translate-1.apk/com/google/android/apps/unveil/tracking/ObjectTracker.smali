.class Lcom/google/android/apps/unveil/tracking/ObjectTracker;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;,
        Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;,
        Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;,
        Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;,
        Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;
    }
.end annotation


# static fields
.field private static final DRAW_TEXT:Z = false

.field private static final MAX_DEBUG_HISTORY_SIZE:I = 0x1e

.field private static final MAX_FRAME_HISTORY_SIZE:I = 0xc8

.field private static instance:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final debugHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final downsampleFactor:F

.field private final frameHeight:I

.field private final frameWidth:I

.field private lastFeatures:Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

.field private lastTimestamp:J

.field private nativeObjectTracker:I

.field private final timestampedDeltas:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;",
            ">;"
        }
    .end annotation
.end field

.field private final trackedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 571
    const-string v0, "clientvision"

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/ResourceUtils;->loadNativeLibrary(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method private constructor <init>(III)V
    .registers 6
    .parameter "frameWidth"
    .parameter "frameHeight"
    .parameter "downsampleFactor"

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->frameWidth:I

    .line 199
    iput p2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->frameHeight:I

    .line 200
    int-to-float v0, p3

    iput v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->trackedObjects:Ljava/util/Map;

    .line 205
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->initNative(II)V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/tracking/ObjectTracker;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;FFFFJ)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->setPreviousPositionNative(Ljava/lang/String;FFFFJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;FFFF[B)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->registerAppearanceInFrameNative(Ljava/lang/String;FFFF[B)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;[F)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getTrackedPositionNative(Ljava/lang/String;[F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->isObjectVisible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->upscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->instance:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/tracking/ObjectTracker;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->trackedObjects:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->forgetNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;)F
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getCurrentCorrelation(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static synthetic access$800()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private downscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 8
    .parameter "fullFrameRect"

    .prologue
    .line 400
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    div-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    div-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private drawFeaturesDebug(Landroid/graphics/Canvas;)V
    .registers 19
    .parameter "canvas"

    .prologue
    .line 285
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 286
    .local v6, p:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastFeatures:Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

    if-nez v1, :cond_c

    .line 325
    :cond_b
    return-void

    .line 289
    :cond_c
    const/4 v10, 0x3

    .line 291
    .local v10, featureSize:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastFeatures:Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->minScore:F
    invoke-static {v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->access$200(Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;)F

    move-result v13

    .line 292
    .local v13, minScore:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastFeatures:Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->maxScore:F
    invoke-static {v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->access$300(Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;)F

    move-result v12

    .line 294
    .local v12, maxScore:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastFeatures:Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

    iget-object v1, v1, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->pointDeltas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;

    .line 295
    .local v9, feature:Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;
    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->wasFound:Z
    invoke-static {v9}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->access$400(Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 296
    iget-object v1, v9, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureA:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    iget v1, v1, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->score:F

    sub-float/2addr v1, v13

    sub-float v2, v12, v13

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->floatToChar(F)I

    move-result v14

    .line 298
    .local v14, r:I
    const/high16 v1, 0x3f80

    iget-object v2, v9, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureA:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    iget v2, v2, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->score:F

    sub-float/2addr v2, v13

    sub-float v3, v12, v13

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->floatToChar(F)I

    move-result v7

    .line 301
    .local v7, b:I
    const/high16 v1, -0x100

    shl-int/lit8 v2, v14, 0x10

    or-int/2addr v1, v2

    or-int v8, v1, v7

    .line 302
    .local v8, color:I
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    const/4 v1, 0x4

    new-array v0, v1, [F

    move-object/from16 v16, v0

    const/4 v1, 0x0

    iget-object v2, v9, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureA:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    iget v2, v2, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->x:F

    aput v2, v16, v1

    const/4 v1, 0x1

    iget-object v2, v9, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureA:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    iget v2, v2, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->y:F

    aput v2, v16, v1

    const/4 v1, 0x2

    iget-object v2, v9, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureB:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    iget v2, v2, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->x:F

    aput v2, v16, v1

    const/4 v1, 0x3

    iget-object v2, v9, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureB:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    iget v2, v2, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->y:F

    aput v2, v16, v1

    .line 306
    .local v16, screenPoints:[F
    const/4 v1, 0x2

    aget v1, v16, v1

    const/high16 v2, 0x4040

    sub-float v2, v1, v2

    const/4 v1, 0x3

    aget v1, v16, v1

    const/high16 v3, 0x4040

    sub-float v3, v1, v3

    const/4 v1, 0x2

    aget v1, v16, v1

    const/high16 v4, 0x4040

    add-float/2addr v4, v1

    const/4 v1, 0x3

    aget v1, v16, v1

    const/high16 v5, 0x4040

    add-float/2addr v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 310
    const v1, -0xff0001

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    const/4 v1, 0x2

    aget v2, v16, v1

    const/4 v1, 0x3

    aget v3, v16, v1

    const/4 v1, 0x0

    aget v4, v16, v1

    const/4 v1, 0x1

    aget v5, v16, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_27

    .line 320
    .end local v7           #b:I
    .end local v8           #color:I
    .end local v14           #r:I
    .end local v16           #screenPoints:[F
    :cond_b7
    const/16 v1, -0x100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    const/4 v1, 0x2

    new-array v15, v1, [F

    const/4 v1, 0x0

    iget-object v2, v9, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureA:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    iget v2, v2, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->x:F

    aput v2, v15, v1

    const/4 v1, 0x1

    iget-object v2, v9, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureA:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    iget v2, v2, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->y:F

    aput v2, v15, v1

    .line 322
    .local v15, screenPoint:[F
    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v2, 0x1

    aget v2, v15, v2

    const/high16 v3, 0x40a0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_27
.end method

.method private drawHistoryDebug(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x4000

    .line 245
    iget v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->frameWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    iget v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->frameHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->drawHistoryPoint(Landroid/graphics/Canvas;FF)V

    .line 248
    return-void
.end method

.method private drawHistoryPoint(Landroid/graphics/Canvas;FF)V
    .registers 15
    .parameter "canvas"
    .parameter "startX"
    .parameter "startY"

    .prologue
    const/high16 v9, -0x1

    .line 251
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 252
    .local v5, p:Landroid/graphics/Paint;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 255
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    const/high16 v0, 0x4000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 259
    const v0, -0xff0100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    const/high16 v0, 0x4040

    invoke-virtual {p1, p2, p3, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget-object v9, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    monitor-enter v9

    .line 266
    :try_start_29
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    .line 267
    .local v8, numPoints:I
    move v1, p2

    .line 268
    .local v1, lastX:F
    move v2, p3

    .line 269
    .local v2, lastY:F
    const/4 v7, 0x0

    .local v7, featureNum:I
    :goto_32
    if-ge v7, v8, :cond_51

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    sub-int v10, v8, v7

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 271
    .local v6, delta:Landroid/graphics/PointF;
    iget v0, v6, Landroid/graphics/PointF;->x:F

    add-float v3, v1, v0

    .line 272
    .local v3, newX:F
    iget v0, v6, Landroid/graphics/PointF;->y:F

    add-float v4, v2, v0

    .local v4, newY:F
    move-object v0, p1

    .line 273
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 274
    move v1, v3

    .line 275
    move v2, v4

    .line 269
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 277
    .end local v3           #newX:F
    .end local v4           #newY:F
    .end local v6           #delta:Landroid/graphics/PointF;
    :cond_51
    monitor-exit v9

    .line 278
    return-void

    .line 277
    .end local v1           #lastX:F
    .end local v2           #lastY:F
    .end local v7           #featureNum:I
    .end local v8           #numPoints:I
    :catchall_53
    move-exception v0

    monitor-exit v9
    :try_end_55
    .catchall {:try_start_29 .. :try_end_55} :catchall_53

    throw v0
.end method

.method private native drawNative(III)V
.end method

.method private static floatToChar(F)I
    .registers 4
    .parameter "value"

    .prologue
    .line 281
    const/4 v0, 0x0

    const v1, 0x437fffbe

    mul-float/2addr v1, p0

    float-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private native forgetNative(Ljava/lang/String;)V
.end method

.method private declared-synchronized getAccumulatedDelta(JFFF)Landroid/graphics/PointF;
    .registers 12
    .parameter "timestamp"
    .parameter "positionX"
    .parameter "positionY"
    .parameter "radius"

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/graphics/RectF;

    sub-float v2, p3, p5

    sub-float v3, p4, p5

    add-float v4, p3, p5

    add-float v5, p4, p5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getCurrentPosition(JLandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 331
    .local v0, currPosition:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v2, p3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, p4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v1

    .line 329
    .end local v0           #currPosition:Landroid/graphics/RectF;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native getCurrentCorrelation(Ljava/lang/String;)F
.end method

.method private declared-synchronized getCurrentPosition(JLandroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 14
    .parameter "timestamp"
    .parameter "oldPosition"

    .prologue
    .line 336
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    .line 338
    .local v8, downscaledFrameRect:Landroid/graphics/RectF;
    const/4 v0, 0x4

    new-array v7, v0, [F

    .line 339
    .local v7, delta:[F
    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    iget v5, v8, Landroid/graphics/RectF;->right:F

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getCurrentPositionNative(JFFFF[F)V

    .line 342
    new-instance v9, Landroid/graphics/RectF;

    const/4 v0, 0x0

    aget v0, v7, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    const/4 v2, 0x2

    aget v2, v7, v2

    const/4 v3, 0x3

    aget v3, v7, v3

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 344
    .local v9, newPosition:Landroid/graphics/RectF;
    invoke-direct {p0, v9}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->upscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 336
    .end local v7           #delta:[F
    .end local v8           #downscaledFrameRect:Landroid/graphics/RectF;
    .end local v9           #newPosition:Landroid/graphics/RectF;
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native getCurrentPositionNative(JFFFF[F)V
.end method

.method private native getFeaturesNative(Z)[F
.end method

.method private native getFeaturesPacked(F)[B
.end method

.method public static declared-synchronized getInstance(III)Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    .registers 6
    .parameter "frameWidth"
    .parameter "frameHeight"
    .parameter "downsampleFactor"

    .prologue
    .line 188
    const-class v1, Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->instance:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-nez v0, :cond_12

    .line 189
    new-instance v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;-><init>(III)V

    sput-object v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->instance:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    .line 194
    sget-object v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->instance:Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1a

    monitor-exit v1

    return-object v0

    .line 191
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Tried to create a new objectracker before releasing the old one!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    .line 188
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native getTrackedPositionNative(Ljava/lang/String;[F)V
.end method

.method private native initNative(II)V
.end method

.method private native isObjectVisible(Ljava/lang/String;)Z
.end method

.method private native nextFrameNative([BJ[F)V
.end method

.method private native registerAppearanceInFrameNative(Ljava/lang/String;FFFF[B)V
.end method

.method private native releaseMemoryNative()V
.end method

.method private native setPreviousPositionNative(Ljava/lang/String;FFFFJ)V
.end method

.method private updateDebugHistory()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 348
    new-instance v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getFeaturesNative(Z)[F

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;-><init>(Lcom/google/android/apps/unveil/tracking/ObjectTracker;[F)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastFeatures:Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

    .line 350
    iget-wide v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastTimestamp:J

    iget v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->frameWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->frameHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    const/high16 v5, 0x42c8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getAccumulatedDelta(JFFF)Landroid/graphics/PointF;

    move-result-object v6

    .line 353
    .local v6, delta:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    monitor-enter v1

    .line 354
    :try_start_22
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 356
    :goto_27
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-le v0, v2, :cond_3b

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_27

    .line 359
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    .line 360
    return-void
.end method

.method private upscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 8
    .parameter "downsampledFrameRect"

    .prologue
    .line 407
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    mul-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "canvas"
    .parameter "frameToCanvas"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 364
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 366
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->drawHistoryDebug(Landroid/graphics/Canvas;)V

    .line 367
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->drawFeaturesDebug(Landroid/graphics/Canvas;)V

    .line 369
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 370
    monitor-exit p0

    return-void

    .line 363
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized drawOverlay(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/apps/unveil/env/Size;I)V
    .registers 6
    .parameter "gl"
    .parameter "cameraViewSize"
    .parameter "cameraRotation"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    iget v0, p2, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v1, p2, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->drawNative(III)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 213
    monitor-exit p0

    return-void

    .line 212
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDebugText()Ljava/util/Vector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 375
    .local v0, lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastFeatures:Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

    if-eqz v1, :cond_5f

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num features "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastFeatures:Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

    iget-object v2, v2, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->pointDeltas:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Min score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastFeatures:Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->minScore:F
    invoke-static {v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->access$200(Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastFeatures:Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;

    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->maxScore:F
    invoke-static {v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->access$300(Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_5f
    return-object v0
.end method

.method protected declared-synchronized nextFrame([BJ[FZ)V
    .registers 11
    .parameter "frameData"
    .parameter "timestamp"
    .parameter "transformationMatrix"
    .parameter "updateDebugInfo"

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->nextFrameNative([BJ[F)V

    .line 220
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    new-instance v3, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;

    iget v4, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F

    invoke-direct {p0, v4}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getFeaturesPacked(F)[B

    move-result-object v4

    invoke-direct {v3, p0, p2, p3, v4}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;-><init>(Lcom/google/android/apps/unveil/tracking/ObjectTracker;J[B)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 222
    :goto_14
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_27

    .line 223
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_14

    .line 219
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2

    .line 226
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->trackedObjects:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    .line 227
    .local v1, trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    #calls: Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->updateTrackedPosition()V
    invoke-static {v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->access$100(Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;)V

    goto :goto_31

    .line 230
    .end local v1           #trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    :cond_41
    if-eqz p5, :cond_46

    .line 231
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->updateDebugHistory()V

    .line 234
    :cond_46
    iput-wide p2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastTimestamp:J
    :try_end_48
    .catchall {:try_start_27 .. :try_end_48} :catchall_24

    .line 235
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized pollAccumulatedFlowData(J)Ljava/util/List;
    .registers 7
    .parameter "endFrameTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 385
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v1, frameDeltas:Ljava/util/List;,"Ljava/util/List<[B>;"
    :goto_6
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2a

    .line 387
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;

    .line 388
    .local v0, currentDeltas:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;
    iget-wide v2, v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;->timestamp:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_2a

    .line 389
    iget-object v2, v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;->deltas:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_6

    .line 385
    .end local v0           #currentDeltas:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;
    .end local v1           #frameDeltas:Ljava/util/List;,"Ljava/util/List<[B>;"
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2

    .line 396
    .restart local v1       #frameDeltas:Ljava/util/List;,"Ljava/util/List<[B>;"
    :cond_2a
    monitor-exit p0

    return-object v1
.end method

.method protected declared-synchronized release()V
    .registers 3

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->releaseMemoryNative()V

    .line 239
    const-class v1, Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_10

    .line 240
    const/4 v0, 0x0

    :try_start_8
    sput-object v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->instance:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    .line 241
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d

    .line 242
    monitor-exit p0

    return-void

    .line 241
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    :try_start_f
    throw v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_10

    .line 238
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackObject(Landroid/graphics/RectF;J[B)Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    .registers 11
    .parameter "position"
    .parameter "timestamp"
    .parameter "frameData"

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;-><init>(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Landroid/graphics/RectF;J[B)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackObject(Landroid/graphics/RectF;[B)Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    .registers 9
    .parameter "position"
    .parameter "frameData"

    .prologue
    .line 531
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    iget-wide v3, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->lastTimestamp:J

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;-><init>(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Landroid/graphics/RectF;J[B)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
