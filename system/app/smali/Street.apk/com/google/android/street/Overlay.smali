.class Lcom/google/android/street/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/Overlay$Pancake;,
        Lcom/google/android/street/Overlay$HitTester;,
        Lcom/google/android/street/Overlay$Polygon;,
        Lcom/google/android/street/Overlay$FadeAnimation;,
        Lcom/google/android/street/Overlay$Label;
    }
.end annotation


# static fields
.field private static final ARROW_DATA:[F

.field private static final BAR_DATA:[F

.field private static final COS_NO_SHOW:F

.field private static final COS_SHOW_BELOW:F

.field private static final GROUND_PANCAKE_DATA:[F

.field private static final GROUND_PANCAKE_DATA_FILL_INDICES:[B

.field private static final GROUND_PANCAKE_DATA_OUTLINE_INDICES:[B

.field private static final GROUND_PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

.field private static final INTERIOR_ARROW_DATA:[F

.field private static final INTERIOR_ARROW_SHADOW_DATA:[F

.field private static final PANCAKE_DATA:[F

.field private static final PANCAKE_DATA_FILL_INDICES:[B

.field private static final PANCAKE_DATA_OUTLINE_INDICES:[B

.field private static final PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

.field private static final PYRAMID_DATA:[F

.field private static final PYRAMID_FILL_INDEX:[B

.field private static final PYRAMID_OUTLINE_INDEX:[B

.field private static final STREET_ANCHOR:[F

.field private static final STREET_ANCHOR_DIR_ARROW:[F


# instance fields
.field private m3DLabelMaker:Lcom/google/android/street/LabelMaker;

.field private mAddressBubble:[Landroid/graphics/drawable/Drawable;

.field private final mArrow:Lcom/google/android/street/Overlay$Polygon;

.field private mAspectRatio:F

.field private final mCompassDirectionNames:[Ljava/lang/CharSequence;

.field private mConfig:Lcom/google/android/street/PanoramaConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDirectionPaint:Landroid/graphics/Paint;

.field private mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

.field private final mDisplayDensity:F

.field private mDrawDisabled:Z

.field private mDrawRoadLabels:Z

.field private final mEnablePancake:Z

.field private final mEnablePanoPoints:Z

.field private mFancyStreetLabelIds:[[I

.field private mHighlight:I

.field private final mHitTesterLock:Ljava/lang/Object;

.field private mIncomingLink:Lcom/google/android/street/PanoramaLink;

.field private mIncomingYaw:F

.field private final mInteriorArrow:Lcom/google/android/street/Overlay$Polygon;

.field private final mInteriorArrowShadow:Lcom/google/android/street/Overlay$Polygon;

.field private mIsIndoorScene:Z

.field private final mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

.field private mLabelMaker:Lcom/google/android/street/LabelMaker;

.field private mLabelsComputed:Z

.field private mLabelsInitialized:Z

.field private mLastTrackballTime:J

.field private mLinks:[Lcom/google/android/street/PanoramaLink;

.field private mNextDrawTime:J

.field private mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

.field private mOutgoingLink:Lcom/google/android/street/PanoramaLink;

.field private mOutgoingYaw:F

.field private mPegmanOnPancake:Landroid/graphics/drawable/Drawable;

.field private mPegmanOnPancakeLabelId:I

.field private final mProjector:Lcom/google/android/street/Projector;

.field private mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

.field private final mRoad:Lcom/google/android/street/Overlay$Polygon;

.field private final mScratch:[F

.field private mSelectedLink:I

.field private final mStreetOutlinePaint:Landroid/graphics/Paint;

.field private final mStreetPaint:Landroid/graphics/Paint;

.field private mStreets:[[Lcom/google/android/street/Overlay$Label;

.field private mTouchUsed:Z

.field private mTrackballUsed:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x20

    const/16 v1, 0x12

    const/16 v5, 0xc

    const/4 v4, 0x4

    .line 88
    new-array v0, v5, [F

    fill-array-data v0, :array_aa

    sput-object v0, Lcom/google/android/street/Overlay;->BAR_DATA:[F

    .line 102
    const/16 v0, 0x15

    new-array v0, v0, [F

    fill-array-data v0, :array_c6

    sput-object v0, Lcom/google/android/street/Overlay;->ARROW_DATA:[F

    .line 120
    new-array v0, v1, [F

    fill-array-data v0, :array_f4

    sput-object v0, Lcom/google/android/street/Overlay;->INTERIOR_ARROW_DATA:[F

    .line 134
    new-array v0, v1, [F

    fill-array-data v0, :array_11c

    sput-object v0, Lcom/google/android/street/Overlay;->INTERIOR_ARROW_SHADOW_DATA:[F

    .line 154
    new-array v0, v5, [F

    fill-array-data v0, :array_144

    sput-object v0, Lcom/google/android/street/Overlay;->PANCAKE_DATA:[F

    .line 162
    new-array v0, v4, [B

    fill-array-data v0, :array_160

    sput-object v0, Lcom/google/android/street/Overlay;->PANCAKE_DATA_FILL_INDICES:[B

    .line 165
    new-array v0, v4, [B

    fill-array-data v0, :array_166

    sput-object v0, Lcom/google/android/street/Overlay;->PANCAKE_DATA_OUTLINE_INDICES:[B

    .line 167
    new-instance v0, Lcom/google/android/street/Overlay$Polygon;

    sget-object v1, Lcom/google/android/street/Overlay;->PANCAKE_DATA:[F

    sget-object v2, Lcom/google/android/street/Overlay;->PANCAKE_DATA_FILL_INDICES:[B

    sget-object v3, Lcom/google/android/street/Overlay;->PANCAKE_DATA_OUTLINE_INDICES:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/street/Overlay$Polygon;-><init>([F[B[B)V

    sput-object v0, Lcom/google/android/street/Overlay;->PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

    .line 178
    const/high16 v0, 0x4040

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/street/Overlay;->getCircle(FI)[F

    move-result-object v0

    sput-object v0, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA:[F

    .line 182
    invoke-static {v6}, Lcom/google/android/street/Overlay;->getPolygonStripIndices(I)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA_FILL_INDICES:[B

    .line 186
    invoke-static {v6}, Lcom/google/android/street/Overlay;->getRange(I)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA_OUTLINE_INDICES:[B

    .line 189
    new-instance v0, Lcom/google/android/street/Overlay$Polygon;

    sget-object v1, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA:[F

    sget-object v2, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA_FILL_INDICES:[B

    sget-object v3, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA_OUTLINE_INDICES:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/street/Overlay$Polygon;-><init>([F[B[B)V

    sput-object v0, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

    .line 194
    const/16 v0, 0xf

    new-array v0, v0, [F

    fill-array-data v0, :array_16c

    sput-object v0, Lcom/google/android/street/Overlay;->PYRAMID_DATA:[F

    .line 201
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_18e

    sput-object v0, Lcom/google/android/street/Overlay;->PYRAMID_FILL_INDEX:[B

    .line 204
    new-array v0, v5, [B

    fill-array-data v0, :array_196

    sput-object v0, Lcom/google/android/street/Overlay;->PYRAMID_OUTLINE_INDEX:[B

    .line 222
    new-array v0, v4, [F

    fill-array-data v0, :array_1a0

    sput-object v0, Lcom/google/android/street/Overlay;->STREET_ANCHOR:[F

    .line 224
    new-array v0, v4, [F

    fill-array-data v0, :array_1ac

    sput-object v0, Lcom/google/android/street/Overlay;->STREET_ANCHOR_DIR_ARROW:[F

    .line 234
    const/high16 v0, 0x42d2

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, Lcom/google/android/street/Overlay;->COS_NO_SHOW:F

    .line 239
    const/high16 v0, 0x428c

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, Lcom/google/android/street/Overlay;->COS_SHOW_BELOW:F

    return-void

    .line 88
    nop

    :array_aa
    .array-data 0x4
        0xfat 0xedt 0x6bt 0x3dt
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
        0xfat 0xedt 0x6bt 0x3dt
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0xa0t 0x41t
        0xfat 0xedt 0x6bt 0xbdt
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0xa0t 0x41t
        0xfat 0xedt 0x6bt 0xbdt
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 102
    :array_c6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3et 0xat 0x57t 0x3et
        0x82t 0xc5t 0xe1t 0x3et
        0x11t 0xc7t 0x3at 0xbet
        0x3et 0xat 0x57t 0x3et
        0x94t 0x4dt 0x39t 0x3et
        0xfat 0xedt 0x6bt 0xbdt
        0x3et 0xat 0x57t 0x3et
        0x94t 0x4dt 0x39t 0x3et
        0xfat 0xedt 0x6bt 0xbdt
        0x3et 0xat 0x57t 0x3et
        0x0t 0x0t 0x0t 0x0t
        0xfat 0xedt 0x6bt 0x3dt
        0x3et 0xat 0x57t 0x3et
        0x0t 0x0t 0x0t 0x0t
        0xfat 0xedt 0x6bt 0x3dt
        0x3et 0xat 0x57t 0x3et
        0x94t 0x4dt 0x39t 0x3et
        0x11t 0xc7t 0x3at 0x3et
        0x3et 0xat 0x57t 0x3et
        0x94t 0x4dt 0x39t 0x3et
    .end array-data

    .line 120
    :array_f4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0xbft
        0x12t 0x88t 0xd7t 0x3et
        0x11t 0xc7t 0x3at 0xbet
        0xcdt 0xcct 0x4ct 0xbft
        0x6et 0x17t 0x9at 0x3et
        0x11t 0xc7t 0x3at 0xbet
        0xcdt 0xcct 0x4ct 0xbft
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0xbft
        0xat 0xd7t 0xa3t 0x3et
        0x11t 0xc7t 0x3at 0x3et
        0xcdt 0xcct 0x4ct 0xbft
        0xcdt 0xcct 0x4ct 0x3et
        0x11t 0xc7t 0x3at 0x3et
        0xcdt 0xcct 0x4ct 0xbft
        0x6et 0x17t 0x9at 0x3et
    .end array-data

    .line 134
    :array_11c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3et 0xat 0x57t 0xbft
        0x12t 0x88t 0xd7t 0x3et
        0x11t 0xc7t 0x3at 0xbet
        0x3et 0xat 0x57t 0xbft
        0x6et 0x17t 0x9at 0x3et
        0x11t 0xc7t 0x3at 0xbet
        0x3et 0xat 0x57t 0xbft
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
        0x3et 0xat 0x57t 0xbft
        0xat 0xd7t 0xa3t 0x3et
        0x11t 0xc7t 0x3at 0x3et
        0x3et 0xat 0x57t 0xbft
        0xcdt 0xcct 0x4ct 0x3et
        0x11t 0xc7t 0x3at 0x3et
        0x3et 0xat 0x57t 0xbft
        0x6et 0x17t 0x9at 0x3et
    .end array-data

    .line 154
    :array_144
    .array-data 0x4
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0xc0t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0xc0t
        0x0t 0x0t 0x40t 0xc0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0xc0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 162
    :array_160
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x2t
    .end array-data

    .line 165
    :array_166
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
    .end array-data

    .line 194
    :array_16c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 201
    :array_18e
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x0t
    .end array-data

    .line 204
    nop

    :array_196
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x0t
        0x2t
        0x3t
        0x0t
        0x3t
        0x4t
        0x0t
        0x4t
        0x1t
    .end array-data

    .line 222
    :array_1a0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3et 0xat 0x57t 0x3et
        0x82t 0xc5t 0xe1t 0x3dt
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 224
    :array_1ac
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3et 0xat 0x57t 0x3et
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/street/Projector;ZZZ)V
    .registers 12
    .parameter "context"
    .parameter "projector"
    .parameter "enablePancake"
    .parameter "enablePanoPoints"
    .parameter "drawRoadLabels"

    .prologue
    const/high16 v0, -0x4080

    const/16 v5, 0x60

    const/4 v4, 0x1

    const/16 v3, 0xff

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput v0, p0, Lcom/google/android/street/Overlay;->mIncomingYaw:F

    .line 347
    iput v0, p0, Lcom/google/android/street/Overlay;->mOutgoingYaw:F

    .line 378
    iput-object p1, p0, Lcom/google/android/street/Overlay;->mContext:Landroid/content/Context;

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    .line 380
    new-instance v0, Lcom/google/android/street/Overlay$Polygon;

    sget-object v1, Lcom/google/android/street/Overlay;->BAR_DATA:[F

    invoke-direct {v0, v1}, Lcom/google/android/street/Overlay$Polygon;-><init>([F)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mRoad:Lcom/google/android/street/Overlay$Polygon;

    .line 381
    new-instance v0, Lcom/google/android/street/Overlay$Polygon;

    sget-object v1, Lcom/google/android/street/Overlay;->ARROW_DATA:[F

    invoke-direct {v0, v1}, Lcom/google/android/street/Overlay$Polygon;-><init>([F)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mArrow:Lcom/google/android/street/Overlay$Polygon;

    .line 382
    new-instance v0, Lcom/google/android/street/Overlay$Polygon;

    sget-object v1, Lcom/google/android/street/Overlay;->INTERIOR_ARROW_DATA:[F

    invoke-direct {v0, v1}, Lcom/google/android/street/Overlay$Polygon;-><init>([F)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mInteriorArrow:Lcom/google/android/street/Overlay$Polygon;

    .line 383
    new-instance v0, Lcom/google/android/street/Overlay$Polygon;

    sget-object v1, Lcom/google/android/street/Overlay;->INTERIOR_ARROW_SHADOW_DATA:[F

    invoke-direct {v0, v1}, Lcom/google/android/street/Overlay$Polygon;-><init>([F)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mInteriorArrowShadow:Lcom/google/android/street/Overlay$Polygon;

    .line 384
    iput-object p2, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    .line 386
    iput-boolean p5, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    .line 387
    invoke-direct {p0}, Lcom/google/android/street/Overlay;->createLabelMakers()V

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mCompassDirectionNames:[Ljava/lang/CharSequence;

    .line 393
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    .line 394
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 395
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4270

    iget v2, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 396
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 397
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 400
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    .line 401
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 402
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 403
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 404
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    iget v2, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 407
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mDirectionPaint:Landroid/graphics/Paint;

    .line 408
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mDirectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 409
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mDirectionPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    iget v2, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 410
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mDirectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 412
    new-instance v0, Lcom/google/android/street/Overlay$HitTester;

    invoke-direct {v0}, Lcom/google/android/street/Overlay$HitTester;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    .line 413
    new-instance v0, Lcom/google/android/street/Overlay$HitTester;

    invoke-direct {v0}, Lcom/google/android/street/Overlay$HitTester;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

    .line 414
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mHitTesterLock:Ljava/lang/Object;

    .line 415
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mScratch:[F

    .line 416
    new-instance v0, Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-direct {v0, v4}, Lcom/google/android/street/Overlay$FadeAnimation;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    .line 417
    iput-boolean p3, p0, Lcom/google/android/street/Overlay;->mEnablePancake:Z

    .line 418
    iput-boolean p4, p0, Lcom/google/android/street/Overlay;->mEnablePanoPoints:Z

    .line 419
    return-void
.end method

.method private addLabels(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsComputed:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    if-nez v0, :cond_9

    .line 1294
    :cond_8
    :goto_8
    return-void

    .line 1228
    :cond_9
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    if-nez v0, :cond_10

    .line 1229
    invoke-direct {p0}, Lcom/google/android/street/Overlay;->createLabelMakers()V

    .line 1232
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsInitialized:Z

    if-nez v0, :cond_21

    .line 1233
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->initialize(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1234
    iget-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->initialize(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsInitialized:Z

    .line 1239
    :cond_21
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-eqz v0, :cond_b4

    if-nez p2, :cond_b4

    .line 1240
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    const/16 v1, 0x200

    const/16 v2, 0x400

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/street/LabelMaker;->beginAdding(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1241
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v8, v0

    .line 1242
    const/4 v0, 0x3

    filled-new-array {v8, v0}, [I

    move-result-object v0

    const-class v1, Lcom/google/android/street/Overlay$Label;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/android/street/Overlay$Label;

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    .line 1243
    const/4 v0, 0x0

    move v9, v0

    :goto_44
    if-ge v9, v8, :cond_bd

    .line 1244
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v0, v0, v9

    .line 1245
    iget-object v1, v0, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    if-eqz v1, :cond_b0

    iget-object v1, v0, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b0

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/android/street/Overlay;->getDirectionText(Lcom/google/android/street/PanoramaLink;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1248
    const/4 v0, 0x0

    move v10, v0

    :goto_7b
    const/4 v0, 0x3

    if-ge v10, v0, :cond_b0

    .line 1249
    new-instance v11, Lcom/google/android/street/Overlay$Label;

    invoke-direct {v11}, Lcom/google/android/street/Overlay$Label;-><init>()V

    .line 1250
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget-object v1, p0, Lcom/google/android/street/Overlay;->mAddressBubble:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v1, v10

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mDirectionPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;II)I

    move-result v0

    .line 1253
    iput v0, v11, Lcom/google/android/street/Overlay$Label;->mLabelID:I

    .line 1254
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v1, v0}, Lcom/google/android/street/LabelMaker;->getWidth(I)F

    move-result v1

    iput v1, v11, Lcom/google/android/street/Overlay$Label;->mWidth:F

    .line 1255
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v1, v0}, Lcom/google/android/street/LabelMaker;->getHeight(I)F

    move-result v0

    iput v0, v11, Lcom/google/android/street/Overlay$Label;->mHeight:F

    .line 1256
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    aget-object v0, v0, v9

    aput-object v11, v0, v10

    .line 1248
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_7b

    .line 1243
    :cond_b0
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_44

    .line 1264
    :cond_b4
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    const/16 v1, 0x100

    const/16 v2, 0x100

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/street/LabelMaker;->beginAdding(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1268
    :cond_bd
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget-object v1, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancake:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iput v0, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancakeLabelId:I

    .line 1270
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->endAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1273
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-eqz v0, :cond_146

    if-eqz p2, :cond_146

    .line 1274
    iget-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1275
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v0, v0

    .line 1276
    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    iput-object p2, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    .line 1277
    const/4 v1, 0x0

    :goto_ea
    if-ge v1, v0, :cond_141

    .line 1278
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v2, v2, v1

    .line 1279
    iget-object v3, v2, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    if-eqz v3, :cond_136

    iget-object v3, v2, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_136

    .line 1280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/android/street/Overlay;->getDirectionText(Lcom/google/android/street/PanoramaLink;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1282
    const/4 v3, 0x0

    :goto_120
    const/4 v4, 0x3

    if-ge v3, v4, :cond_13e

    .line 1283
    iget-object v4, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v2, v6, v7}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)I

    move-result v5

    aput v5, v4, v3

    .line 1282
    add-int/lit8 v3, v3, 0x1

    goto :goto_120

    .line 1287
    :cond_136
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 1277
    :cond_13e
    add-int/lit8 v1, v1, 0x1

    goto :goto_ea

    .line 1290
    :cond_141
    iget-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->endAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1293
    :cond_146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsComputed:Z

    goto/16 :goto_8
.end method

.method private beginLabelOpacity(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .parameter

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-virtual {v0}, Lcom/google/android/street/Overlay$FadeAnimation;->getOpacity()I

    move-result v0

    .line 1341
    const/high16 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 1342
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 1344
    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1346
    :cond_16
    return-void
.end method

.method private clearLabelMakers(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 470
    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsComputed:Z

    .line 471
    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsInitialized:Z

    .line 472
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    if-eqz v0, :cond_11

    .line 473
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->shutdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 474
    iput-object v1, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    .line 476
    :cond_11
    iget-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    if-eqz v0, :cond_1c

    .line 477
    iget-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->shutdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 478
    iput-object v1, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    .line 480
    :cond_1c
    return-void
.end method

.method private computeAnimation(Lcom/google/android/street/UserOrientation;J)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x7d0

    .line 1371
    invoke-direct {p0, p2, p3}, Lcom/google/android/street/Overlay;->computeLabelOpacity(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/street/Overlay;->mNextDrawTime:J

    .line 1373
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/street/Overlay;->mSelectedLink:I

    .line 1374
    iget-wide v0, p0, Lcom/google/android/street/Overlay;->mLastTrackballTime:J

    sub-long v0, p2, v0

    cmp-long v0, v0, v3

    if-gez v0, :cond_34

    .line 1375
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    invoke-virtual {p1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v1

    const/high16 v2, 0x42f0

    invoke-static {v0, v1, v2}, Lcom/google/android/street/PanoramaConfig;->getClosestLinkIndex([Lcom/google/android/street/PanoramaLink;FF)I

    move-result v0

    iput v0, p0, Lcom/google/android/street/Overlay;->mSelectedLink:I

    .line 1378
    iget-wide v0, p0, Lcom/google/android/street/Overlay;->mLastTrackballTime:J

    add-long/2addr v0, v3

    .line 1379
    iget-wide v2, p0, Lcom/google/android/street/Overlay;->mNextDrawTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_32

    iget-wide v2, p0, Lcom/google/android/street/Overlay;->mNextDrawTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_34

    .line 1380
    :cond_32
    iput-wide v0, p0, Lcom/google/android/street/Overlay;->mNextDrawTime:J

    .line 1383
    :cond_34
    return-void
.end method

.method private computeLabelOpacity(J)J
    .registers 8
    .parameter "currentTime"

    .prologue
    const/4 v4, 0x0

    .line 1394
    iget-boolean v3, p0, Lcom/google/android/street/Overlay;->mTrackballUsed:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/google/android/street/Overlay;->mTouchUsed:Z

    if-eqz v3, :cond_16

    :cond_9
    const/4 v3, 0x1

    move v2, v3

    .line 1396
    .local v2, labelVisible:Z
    :goto_b
    iput-boolean v4, p0, Lcom/google/android/street/Overlay;->mTrackballUsed:Z

    .line 1397
    iput-boolean v4, p0, Lcom/google/android/street/Overlay;->mTouchUsed:Z

    .line 1399
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-virtual {v3, v2, p1, p2}, Lcom/google/android/street/Overlay$FadeAnimation;->computeLabelOpacity(ZJ)J

    move-result-wide v0

    .line 1402
    .local v0, labelTimeout:J
    return-wide v0

    .end local v0           #labelTimeout:J
    .end local v2           #labelVisible:Z
    :cond_16
    move v2, v4

    .line 1394
    goto :goto_b
.end method

.method private static createDirectionsArrow(Lcom/google/android/street/PanoramaLink;Lcom/google/android/street/PanoramaLink;)Lcom/google/android/street/Overlay$Polygon;
    .registers 22
    .parameter "inLink"
    .parameter "outLink"

    .prologue
    .line 591
    const/4 v13, 0x0

    .line 592
    .local v13, outX:F
    const v14, 0x3f51ac9b

    .line 593
    .local v14, outZ:F
    const/4 v9, 0x0

    .line 594
    .local v9, midX:F
    const v10, 0x3ea35936

    .line 596
    .local v10, midZ:F
    const/high16 v4, 0x42b4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    move/from16 p1, v0

    .end local p1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    move/from16 p0, v0

    .end local p0
    sub-float p0, p1, p0

    sub-float p0, v4, p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/street/StreetMath;->normalizeDegrees(F)F

    move-result p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result p0

    .line 599
    .local p0, outYawUnit:F
    const/high16 p1, 0x3f00

    invoke-static/range {p0 .. p0}, Lcom/google/android/street/StreetMath;->cosUnit(F)F

    move-result v4

    mul-float v7, p1, v4

    .line 600
    .local v7, inX:F
    const/high16 p1, 0x3f00

    invoke-static/range {p0 .. p0}, Lcom/google/android/street/StreetMath;->sinUnit(F)F

    move-result p0

    .end local p0           #outYawUnit:F
    mul-float p0, p0, p1

    const p1, 0x3ea35936

    add-float v8, p0, p1

    .line 614
    .local v8, inZ:F
    const/16 v11, 0x17

    .line 615
    .local v11, numVertices:I
    mul-int/lit8 p0, v11, 0x3

    move/from16 v0, p0

    new-array v0, v0, [F

    move-object v15, v0

    .line 616
    .local v15, vertices:[F
    const v4, 0x3de38e39

    .line 617
    .local v4, deltaT:F
    const/16 p0, 0x0

    .line 618
    .local p0, componentIndex:I
    const/16 p1, 0x0

    .local p1, i:I
    move/from16 v6, p1

    .end local p1           #i:I
    .local v6, i:I
    move/from16 p1, p0

    .end local p0           #componentIndex:I
    .local p1, componentIndex:I
    :goto_4b
    const/16 p0, 0xa

    move v0, v6

    move/from16 v1, p0

    if-ge v0, v1, :cond_a6

    .line 619
    move v0, v6

    int-to-float v0, v0

    move/from16 p0, v0

    mul-float v5, v4, p0

    .line 620
    .local v5, t:F
    invoke-static {v7, v9, v13, v5}, Lcom/google/android/street/StreetMath;->bezier(FFFF)F

    move-result v16

    .line 621
    .local v16, x:F
    invoke-static {v8, v10, v14, v5}, Lcom/google/android/street/StreetMath;->bezier(FFFF)F

    move-result v17

    .line 622
    .local v17, z:F
    invoke-static {v7, v9, v13, v5}, Lcom/google/android/street/StreetMath;->bezierTangent(FFFF)F

    move-result p0

    .line 623
    .local p0, dx:F
    invoke-static {v8, v10, v14, v5}, Lcom/google/android/street/StreetMath;->bezierTangent(FFFF)F

    move-result v5

    .line 624
    .local v5, dz:F
    const v12, 0x3d6bedfa

    mul-float v18, p0, p0

    mul-float v19, v5, v5

    add-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v18

    div-float v12, v12, v18

    .line 626
    .local v12, scaleFactor:F
    neg-float v5, v5

    mul-float/2addr v5, v12

    .line 627
    .local v5, orthoX:F
    mul-float v12, v12, p0

    .line 628
    .local v12, orthoZ:F
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .local p0, componentIndex:I
    add-float v18, v16, v5

    aput v18, v15, p1

    .line 629
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    const v18, 0x3e570a3e

    aput v18, v15, p0

    .line 630
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    add-float v18, v17, v12

    aput v18, v15, p1

    .line 631
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    sub-float v5, v16, v5

    aput v5, v15, p0

    .line 632
    .end local v5           #orthoX:F
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    const v5, 0x3e570a3e

    aput v5, v15, p1

    .line 633
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    sub-float v5, v17, v12

    aput v5, v15, p0

    .line 618
    add-int/lit8 p0, v6, 0x1

    .end local v6           #i:I
    .local p0, i:I
    move/from16 v6, p0

    .end local p0           #i:I
    .restart local v6       #i:I
    goto :goto_4b

    .line 637
    .end local v12           #orthoZ:F
    .end local v16           #x:F
    .end local v17           #z:F
    :cond_a6
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .local p0, componentIndex:I
    const v4, -0x41c538ef

    aput v4, v15, p1

    .line 638
    .end local v4           #deltaT:F
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    const v4, 0x3e570a3e

    aput v4, v15, p0

    .line 639
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    const v4, 0x3f51ac9b

    aput v4, v15, p1

    .line 640
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    const v4, 0x3e3ac711

    aput v4, v15, p0

    .line 641
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    const v4, 0x3e570a3e

    aput v4, v15, p1

    .line 642
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    const v4, 0x3f51ac9b

    aput v4, v15, p0

    .line 643
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    const/4 v4, 0x0

    aput v4, v15, p1

    .line 644
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    const v4, 0x3e570a3e

    aput v4, v15, p0

    .line 645
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    const p0, 0x3f8a1dfc

    aput p0, v15, p1

    .line 652
    .end local p0           #componentIndex:I
    invoke-static {v11}, Lcom/google/android/street/Overlay$Polygon;->identityIndexArray(I)[B

    move-result-object p0

    .line 653
    .local p0, fillIndices:[B
    new-array v5, v11, [B

    .line 654
    .local v5, outlineIndices:[B
    div-int/lit8 p1, v11, 0x2

    .line 655
    .local p1, halfNumVertices:I
    const/4 v4, 0x0

    .end local v6           #i:I
    .end local v7           #inX:F
    .local v4, i:I
    :goto_ec
    move v0, v4

    move/from16 v1, p1

    if-ge v0, v1, :cond_106

    .line 656
    mul-int/lit8 v6, v4, 0x2

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 657
    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v11, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 655
    add-int/lit8 v4, v4, 0x1

    goto :goto_ec

    .line 660
    :cond_106
    const/4 v4, 0x1

    sub-int v4, v11, v4

    int-to-byte v4, v4

    aput-byte v4, v5, p1

    .line 661
    .end local v4           #i:I
    new-instance p1, Lcom/google/android/street/Overlay$Polygon;

    .end local p1           #halfNumVertices:I
    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/street/Overlay$Polygon;-><init>([F[B[B)V

    return-object p1
.end method

.method private createLabelMakers()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 425
    new-instance v1, Lcom/google/android/street/LabelMaker;

    const/16 v2, 0x200

    const/16 v3, 0x400

    invoke-direct {v1, v5, v2, v3, v5}, Lcom/google/android/street/LabelMaker;-><init>(ZIIZ)V

    iput-object v1, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    .line 426
    const/16 v0, 0x800

    .line 428
    .local v0, width:I
    iget v1, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000

    cmpg-double v1, v1, v3

    if-gez v1, :cond_19

    .line 429
    div-int/lit8 v0, v0, 0x2

    .line 431
    :cond_19
    new-instance v1, Lcom/google/android/street/LabelMaker;

    const/16 v2, 0x800

    const/4 v3, 0x0

    invoke-direct {v1, v5, v2, v0, v3}, Lcom/google/android/street/LabelMaker;-><init>(ZIIZ)V

    iput-object v1, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    .line 432
    return-void
.end method

.method private drawFancyStreetLabels(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;)V
    .registers 16
    .parameter "gl"
    .parameter "userOrientation"

    .prologue
    const/16 v12, 0x1700

    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    const v9, 0x3ccccccd

    const/4 v8, 0x0

    .line 869
    iget-boolean v5, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-nez v5, :cond_e

    .line 907
    :cond_d
    :goto_d
    return-void

    .line 872
    :cond_e
    iget-object v5, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    if-eqz v5, :cond_d

    .line 875
    iget-object v5, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    iget v6, p0, Lcom/google/android/street/Overlay;->mViewWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/street/Overlay;->mViewHeight:I

    int-to-float v7, v7

    invoke-virtual {v5, p1, v6, v7}, Lcom/google/android/street/LabelMaker;->beginDrawing(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 876
    invoke-interface {p1, v12}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 877
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 878
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 879
    invoke-virtual {p2}, Lcom/google/android/street/UserOrientation;->getRotationMatrix()[F

    move-result-object v5

    invoke-interface {p1, v5, v11}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 880
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2e
    iget-object v5, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v5, v5

    if-ge v3, v5, :cond_9a

    .line 881
    iget-object v5, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    aget-object v5, v5, v3

    aget v5, v5, v11

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3f

    .line 880
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 884
    :cond_3f
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 887
    const/high16 v5, 0x4334

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v6, v6, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    sub-float v1, v5, v6

    .line 888
    .local v1, groundTiltDeg:F
    invoke-static {v1}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v2

    .line 889
    .local v2, groundTiltRad:F
    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 890
    .local v0, csT:F
    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    .line 892
    .local v4, snT:F
    iget-object v5, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v5, v5, Lcom/google/android/street/PanoramaConfig;->mTiltPitchDeg:F

    neg-float v5, v5

    neg-float v6, v4

    invoke-interface {p1, v5, v0, v8, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 894
    iget-object v5, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    neg-float v5, v5

    invoke-interface {p1, v5, v8, v10, v8}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 895
    const/high16 v5, -0x4000

    invoke-interface {p1, v8, v8, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 896
    const/high16 v5, -0x3f60

    invoke-interface {p1, v8, v5, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 897
    const/high16 v5, -0x3d4c

    invoke-interface {p1, v5, v10, v8, v8}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 898
    const/high16 v5, 0x42b4

    invoke-interface {p1, v5, v8, v8, v10}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 899
    invoke-interface {p1, v9, v9, v9}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 900
    const/high16 v5, -0x3d90

    iget v6, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-interface {p1, v8, v5, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 901
    iget-object v5, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    aget-object v6, v6, v3

    aget v6, v6, v11

    invoke-virtual {v5, p1, v6}, Lcom/google/android/street/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 902
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_3c

    .line 904
    .end local v0           #csT:F
    .end local v1           #groundTiltDeg:F
    .end local v2           #groundTiltRad:F
    .end local v4           #snT:F
    :cond_9a
    invoke-interface {p1, v12}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 905
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 906
    iget-object v5, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v5, p1}, Lcom/google/android/street/LabelMaker;->endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_d
.end method

.method private drawLabel(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/Overlay$Label;)V
    .registers 8
    .parameter "gl"
    .parameter "label"

    .prologue
    .line 1358
    iget-object v0, p2, Lcom/google/android/street/Overlay$Label;->mPosition:[F

    .line 1359
    .local v0, pos:[F
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1360
    .local v1, x:F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1361
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    const/4 v3, 0x1

    aget v3, v0, v3

    iget v4, p2, Lcom/google/android/street/Overlay$Label;->mLabelID:I

    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/google/android/street/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 1363
    :cond_15
    return-void
.end method

.method private drawLabels(Ljavax/microedition/khronos/opengles/GL10;ZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x80

    const/4 v4, 0x0

    .line 1298
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget v1, p0, Lcom/google/android/street/Overlay;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/street/Overlay;->mViewHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/street/LabelMaker;->beginDrawing(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 1300
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-virtual {v0}, Lcom/google/android/street/Overlay$FadeAnimation;->isTransparent()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1301
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->beginLabelOpacity(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1304
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-eqz v0, :cond_3e

    if-nez p3, :cond_3e

    .line 1305
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v0, v0

    move v1, v4

    .line 1306
    :goto_23
    if-ge v1, v0, :cond_3e

    .line 1308
    iget v2, p0, Lcom/google/android/street/Overlay;->mHighlight:I

    if-ne v1, v2, :cond_38

    .line 1309
    const/4 v2, 0x1

    .line 1313
    :goto_2a
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    aget-object v3, v3, v1

    aget-object v2, v3, v2

    .line 1314
    if-eqz v2, :cond_35

    .line 1315
    invoke-direct {p0, p1, v2}, Lcom/google/android/street/Overlay;->drawLabel(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/Overlay$Label;)V

    .line 1306
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1310
    :cond_38
    iget v2, p0, Lcom/google/android/street/Overlay;->mSelectedLink:I

    if-ne v1, v2, :cond_6f

    .line 1311
    const/4 v2, 0x2

    goto :goto_2a

    .line 1320
    :cond_3e
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->endLabelOpacity(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1324
    :cond_41
    if-eqz p2, :cond_69

    .line 1325
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    const/high16 v1, 0x41f0

    const/high16 v2, 0x4270

    iget v3, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancakeLabelId:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/street/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 1329
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    const/16 v1, 0x1e

    const/16 v2, 0x3c

    iget-object v3, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancake:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancake:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    const/4 v7, -0x2

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/street/Overlay$HitTester;->add(IIIIIII)V

    .line 1336
    :cond_69
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1337
    return-void

    :cond_6f
    move v2, v4

    goto :goto_2a
.end method

.method private drawLink(Ljavax/microedition/khronos/opengles/GL10;FI)V
    .registers 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    move-object v5, v0

    aget-object v5, v5, p3

    .line 962
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 965
    iget v6, v5, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    sub-float v13, p2, v6

    .line 968
    const/high16 v6, 0x4334

    iget v7, v5, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    sub-float/2addr v6, v7

    .line 971
    const/high16 v7, 0x4334

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v8, v0

    iget v8, v8, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    sub-float/2addr v7, v8

    .line 972
    invoke-static {v7}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v7

    .line 973
    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v8

    .line 974
    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v7

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v9, v0

    iget v9, v9, Lcom/google/android/street/PanoramaConfig;->mTiltPitchDeg:F

    neg-float v9, v9

    const/4 v10, 0x0

    neg-float v7, v7

    move-object/from16 v0, p1

    move v1, v9

    move v2, v8

    move v3, v10

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 977
    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 979
    iget v6, v5, Lcom/google/android/street/PanoramaLink;->mRoadARGB:I

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    move-object v7, v0

    if-eq v5, v7, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    move-object v7, v0

    if-ne v5, v7, :cond_5c

    .line 981
    :cond_59
    const v6, -0x7fa9a934

    .line 983
    :cond_5c
    shr-int/lit8 v7, v6, 0x18

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    .line 988
    const v8, 0x3f8ccccd

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 989
    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    .line 990
    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    .line 991
    shr-int/lit8 v6, v6, 0x0

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    .line 992
    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    move v3, v6

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 993
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/street/Overlay;->mIsIndoorScene:Z

    move v6, v0

    if-nez v6, :cond_a8

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mRoad:Lcom/google/android/street/Overlay$Polygon;

    move-object v6, v0

    const/4 v7, 0x6

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Overlay$Polygon;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mRoad:Lcom/google/android/street/Overlay$Polygon;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/street/Overlay$Polygon;->drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1004
    :cond_a8
    invoke-static {v13}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v6

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v14

    .line 1005
    const/high16 v6, 0x4000

    mul-float/2addr v6, v14

    mul-float/2addr v6, v14

    const/high16 v7, 0x3f80

    sub-float/2addr v6, v7

    .line 1006
    const/high16 v7, 0x4080

    mul-float/2addr v7, v14

    mul-float/2addr v7, v14

    const/high16 v8, 0x4040

    sub-float/2addr v7, v8

    mul-float/2addr v7, v14

    .line 1007
    const v8, 0x3e4ccccd

    const/high16 v9, 0x3e80

    const v10, 0x3f2e147b

    const v11, 0x3eb5c28f

    mul-float/2addr v11, v14

    add-float/2addr v10, v11

    const v11, 0x3ea3d70a

    mul-float/2addr v6, v11

    sub-float v6, v10, v6

    const v10, 0x3e5c28f6

    mul-float/2addr v7, v10

    sub-float/2addr v6, v7

    mul-float/2addr v6, v9

    add-float/2addr v6, v8

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v7, v0

    if-eqz v7, :cond_ee

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    move-object v7, v0

    if-ne v5, v7, :cond_272

    .line 1015
    const v7, 0x3f1b8bad

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1021
    :cond_ee
    :goto_ee
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v6, v0

    if-eqz v6, :cond_116

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    move-object v6, v0

    if-eq v5, v6, :cond_116

    .line 1026
    const v6, 0x3f19999a

    const/high16 v7, 0x3f80

    const v8, 0x3f19999a

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 1029
    :cond_116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Overlay;->mSelectedLink:I

    move v6, v0

    move v0, v6

    move/from16 v1, p3

    if-ne v0, v1, :cond_27e

    const/4 v6, 0x1

    .line 1030
    :goto_121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Overlay;->mHighlight:I

    move v7, v0

    move v0, v7

    move/from16 v1, p3

    if-ne v0, v1, :cond_281

    const/4 v7, 0x1

    .line 1031
    :goto_12c
    if-eqz v7, :cond_12f

    .line 1032
    const/4 v6, 0x0

    .line 1034
    :cond_12f
    if-nez v6, :cond_133

    if-eqz v7, :cond_284

    :cond_133
    const/4 v7, 0x1

    move v15, v7

    .line 1036
    :goto_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v7, v0

    if-eqz v7, :cond_288

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    move-object v7, v0

    if-ne v5, v7, :cond_288

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 1038
    :goto_146
    if-eqz v15, :cond_2b4

    .line 1040
    if-eqz v6, :cond_28d

    .line 1041
    const v5, 0x8800

    const/16 v6, 0x6d00

    const v7, 0xad00

    const/high16 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1045
    :goto_15d
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 1046
    if-eqz v16, :cond_2a2

    .line 1049
    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, -0x42fd5239

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 1051
    const v5, 0x3f8ccccd

    const/high16 v6, 0x3f80

    const v7, 0x3f8ccccd

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 1063
    :goto_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/street/Projector;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1065
    if-eqz v16, :cond_2c5

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    const/4 v6, 0x5

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Overlay$Polygon;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 1067
    const/high16 v5, 0x1

    const/high16 v6, 0x1

    const/high16 v7, 0x1

    const/high16 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/street/Overlay$Polygon;->drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mScratch:[F

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v9, v0

    const/4 v10, 0x0

    const/16 v11, 0x40

    move-object/from16 v7, p1

    move/from16 v12, p3

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/street/Overlay$HitTester;->add(Lcom/google/android/street/Projector;Ljavax/microedition/khronos/opengles/GL10;[FLcom/google/android/street/Overlay$Polygon;III)V

    .line 1093
    :goto_1d3
    if-eqz v15, :cond_1d8

    .line 1094
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1097
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    move-object v5, v0

    aget-object v5, v5, p3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/street/Overlay$FadeAnimation;->isTransparent()Z

    move-result v6

    if-nez v6, :cond_3b2

    if-eqz v5, :cond_3b2

    .line 1102
    iget-object v6, v5, Lcom/google/android/street/Overlay$Label;->mPosition:[F

    .line 1106
    sget v7, Lcom/google/android/street/Overlay;->COS_NO_SHOW:F

    cmpl-float v7, v14, v7

    if-lez v7, :cond_3a6

    .line 1107
    iget v5, v5, Lcom/google/android/street/Overlay$Label;->mLabelID:I

    .line 1108
    if-eqz v16, :cond_385

    .line 1109
    sget-object v7, Lcom/google/android/street/Overlay;->STREET_ANCHOR_DIR_ARROW:[F

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/street/Overlay;->getBaseProjection([F[F)V

    .line 1114
    :goto_204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    move-object v7, v0

    invoke-virtual {v7, v5}, Lcom/google/android/street/LabelMaker;->getWidth(I)F

    move-result v7

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    move-object v8, v0

    invoke-virtual {v8, v5}, Lcom/google/android/street/LabelMaker;->getHeight(I)F

    move-result v5

    .line 1119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Overlay;->mViewHeight:I

    move v8, v0

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    mul-float/2addr v8, v9

    const v9, 0x3e19999a

    mul-float/2addr v8, v9

    .line 1120
    neg-float v9, v7

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    .line 1121
    neg-float v7, v7

    sub-float/2addr v7, v8

    .line 1123
    neg-float v5, v5

    const v10, 0x3ecccccd

    mul-float/2addr v5, v10

    .line 1126
    const/4 v10, 0x0

    aget v10, v6, v10

    .line 1127
    const/4 v11, 0x1

    aget v11, v6, v11

    .line 1135
    sget v12, Lcom/google/android/street/Overlay;->COS_SHOW_BELOW:F

    cmpg-float v12, v14, v12

    if-gtz v12, :cond_390

    .line 1137
    add-float v5, v10, v9

    .line 1138
    add-float v7, v11, v8

    move/from16 v17, v7

    move v7, v5

    move/from16 v5, v17

    .line 1157
    :goto_243
    const/4 v8, 0x0

    aput v7, v6, v8

    .line 1158
    const/4 v7, 0x1

    aput v5, v6, v7

    .line 1178
    :goto_249
    const/4 v5, 0x1

    :goto_24a
    const/4 v7, 0x3

    if-ge v5, v7, :cond_3b2

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    move-object v7, v0

    aget-object v7, v7, p3

    aget-object v7, v7, v5

    if-eqz v7, :cond_26f

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    move-object v7, v0

    aget-object v7, v7, p3

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/google/android/street/Overlay$Label;->mPosition:[F

    .line 1181
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v6, v9

    aput v9, v7, v8

    .line 1182
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v6, v9

    aput v9, v7, v8

    .line 1178
    :cond_26f
    add-int/lit8 v5, v5, 0x1

    goto :goto_24a

    .line 1017
    :cond_272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    move-object v7, v0

    if-ne v5, v7, :cond_ee

    .line 1018
    const v6, -0x415ca6ca

    goto/16 :goto_ee

    .line 1029
    :cond_27e
    const/4 v6, 0x0

    goto/16 :goto_121

    .line 1030
    :cond_281
    const/4 v7, 0x0

    goto/16 :goto_12c

    .line 1034
    :cond_284
    const/4 v7, 0x0

    move v15, v7

    goto/16 :goto_135

    .line 1036
    :cond_288
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_146

    .line 1043
    :cond_28d
    const v5, 0xf600

    const v6, 0x8a00

    const/16 v7, 0x1f00

    const/high16 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto/16 :goto_15d

    .line 1054
    :cond_2a2
    const v5, 0x3fa66666

    const/high16 v6, 0x3f80

    const v7, 0x3fa66666

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto/16 :goto_17f

    .line 1058
    :cond_2b4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x8000

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto/16 :goto_17f

    .line 1071
    :cond_2c5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/street/Overlay;->mIsIndoorScene:Z

    move v5, v0

    if-eqz v5, :cond_33c

    .line 1073
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Overlay;->mAspectRatio:F

    move v5, v0

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2e3

    .line 1077
    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 1079
    :cond_2e3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x5000

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mInteriorArrowShadow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    const/4 v6, 0x6

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Overlay$Polygon;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 1081
    const/high16 v5, 0x1

    const/high16 v6, 0x1

    const/high16 v7, 0x1

    const/high16 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mInteriorArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    const/4 v6, 0x6

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Overlay$Polygon;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mScratch:[F

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mInteriorArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v9, v0

    const/4 v10, 0x0

    const/16 v11, 0x40

    move-object/from16 v7, p1

    move/from16 v12, p3

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/street/Overlay$HitTester;->add(Lcom/google/android/street/Projector;Ljavax/microedition/khronos/opengles/GL10;[FLcom/google/android/street/Overlay$Polygon;III)V

    goto/16 :goto_1d3

    .line 1086
    :cond_33c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    const/4 v6, 0x6

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Overlay$Polygon;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 1087
    const/high16 v5, 0x1

    const/high16 v6, 0x1

    const/high16 v7, 0x1

    const/high16 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/street/Overlay$Polygon;->drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mScratch:[F

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v9, v0

    const/4 v10, 0x0

    const/16 v11, 0x40

    move-object/from16 v7, p1

    move/from16 v12, p3

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/street/Overlay$HitTester;->add(Lcom/google/android/street/Projector;Ljavax/microedition/khronos/opengles/GL10;[FLcom/google/android/street/Overlay$Polygon;III)V

    goto/16 :goto_1d3

    .line 1111
    :cond_385
    sget-object v7, Lcom/google/android/street/Overlay;->STREET_ANCHOR:[F

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/street/Overlay;->getBaseProjection([F[F)V

    goto/16 :goto_204

    .line 1141
    :cond_390
    invoke-static {v13}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v9

    invoke-static {v9}, Landroid/util/FloatMath;->sin(F)F

    move-result v9

    .line 1145
    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    if-ltz v9, :cond_3a1

    .line 1148
    add-float/2addr v7, v10

    .line 1149
    add-float/2addr v5, v11

    goto/16 :goto_243

    .line 1153
    :cond_3a1
    add-float v7, v10, v8

    .line 1154
    add-float/2addr v5, v11

    goto/16 :goto_243

    .line 1175
    :cond_3a6
    const/4 v5, 0x0

    const/high16 v7, 0x7fc0

    aput v7, v6, v5

    .line 1176
    const/4 v5, 0x1

    const/high16 v7, 0x7fc0

    aput v7, v6, v5

    goto/16 :goto_249

    .line 1187
    :cond_3b2
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1188
    return-void
.end method

.method private drawLinks(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;)V
    .registers 12
    .parameter "gl"
    .parameter "userOrientation"

    .prologue
    const/16 v8, 0x1700

    const/16 v7, 0xbe2

    const/4 v6, 0x0

    .line 916
    iget-boolean v3, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-nez v3, :cond_a

    .line 951
    :cond_9
    :goto_9
    return-void

    .line 919
    :cond_a
    iget v3, p0, Lcom/google/android/street/Overlay;->mAspectRatio:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_9

    .line 925
    const/16 v3, 0x1701

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 926
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 927
    invoke-virtual {p2}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v2

    .line 928
    .local v2, scale:F
    iget v3, p0, Lcom/google/android/street/Overlay;->mAspectRatio:F

    invoke-static {v3}, Lcom/google/android/street/Renderer;->getUnzoomedVerticalFov(F)F

    move-result v3

    mul-float v0, v3, v2

    .line 929
    .local v0, fovYDeg:F
    iget v3, p0, Lcom/google/android/street/Overlay;->mAspectRatio:F

    const v4, 0x3dcccccd

    const/high16 v5, 0x42c8

    invoke-static {p1, v0, v3, v4, v5}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 931
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 932
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 935
    const/high16 v3, -0x4000

    invoke-interface {p1, v6, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 936
    invoke-virtual {p2}, Lcom/google/android/street/UserOrientation;->getRotationMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 937
    const/high16 v3, -0x4080

    invoke-interface {p1, v6, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 939
    const/16 v3, 0x1d00

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 940
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 941
    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 943
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v3, p1}, Lcom/google/android/street/Projector;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 944
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 946
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5e
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v3, v3

    if-ge v1, v3, :cond_6d

    .line 947
    invoke-virtual {p2}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v3

    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/street/Overlay;->drawLink(Ljavax/microedition/khronos/opengles/GL10;FI)V

    .line 946
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 950
    :cond_6d
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_9
.end method

.method private drawPancake(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Overlay$Pancake;)V
    .registers 14
    .parameter "gl"
    .parameter "userOrientation"
    .parameter "pancake"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3e80

    const/high16 v7, 0x3f80

    const/high16 v6, 0x1

    const/4 v5, 0x0

    .line 767
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v2, v2, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-nez v2, :cond_f

    .line 824
    :cond_e
    :goto_e
    return-void

    .line 771
    :cond_f
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 772
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 774
    if-eqz p3, :cond_e

    .line 781
    invoke-virtual {p2}, Lcom/google/android/street/UserOrientation;->getRotationMatrix()[F

    move-result-object v2

    invoke-interface {p1, v2, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 782
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mYaw:F

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    neg-float v2, v2

    invoke-interface {p1, v2, v5, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 783
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mPitch:F

    sub-float v2, v8, v2

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    neg-float v2, v2

    invoke-interface {p1, v2, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 785
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mDistance:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_79

    .line 787
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mDistance:F

    neg-float v2, v2

    invoke-interface {p1, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 790
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mPitch:F

    sub-float v2, v8, v2

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    invoke-interface {p1, v2, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 792
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mYaw:F

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    invoke-interface {p1, v2, v5, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 795
    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 799
    .local v0, normalYawPitch:[F
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mNx:F

    iget v3, p3, Lcom/google/android/street/Overlay$Pancake;->mNy:F

    iget v4, p3, Lcom/google/android/street/Overlay$Pancake;->mNz:F

    neg-float v4, v4

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/street/StreetMath;->rectangularToSphericalCoords(FFF[F)V

    .line 801
    aget v2, v0, v9

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    neg-float v2, v2

    invoke-interface {p1, v2, v5, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 803
    const/4 v2, 0x1

    aget v2, v0, v2

    sub-float v2, v8, v2

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    invoke-interface {p1, v2, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 810
    .end local v0           #normalYawPitch:[F
    :cond_79
    if-eqz p3, :cond_ae

    iget-boolean v2, p3, Lcom/google/android/street/Overlay$Pancake;->mIsGround:Z

    if-eqz v2, :cond_ae

    .line 811
    sget-object v1, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

    .line 815
    .local v1, pancakePolygon:Lcom/google/android/street/Overlay$Polygon;
    :goto_81
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 816
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 817
    const v2, 0x8000

    invoke-interface {p1, v6, v6, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 818
    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Lcom/google/android/street/Overlay$Polygon;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 819
    invoke-interface {p1, v6, v6, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 820
    invoke-virtual {v1, p1}, Lcom/google/android/street/Overlay$Polygon;->drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 821
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 822
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v2, p1}, Lcom/google/android/street/Projector;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 823
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v2, p1}, Lcom/google/android/street/Projector;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_e

    .line 813
    .end local v1           #pancakePolygon:Lcom/google/android/street/Overlay$Polygon;
    :cond_ae
    sget-object v1, Lcom/google/android/street/Overlay;->PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

    .restart local v1       #pancakePolygon:Lcom/google/android/street/Overlay$Polygon;
    goto :goto_81
.end method

.method private drawPanoPoints(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 15
    .parameter "gl"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x1

    const/4 v5, 0x0

    .line 828
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-nez v0, :cond_b

    .line 862
    :cond_a
    return-void

    .line 832
    :cond_b
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v0, v0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    neg-float v0, v0

    const/high16 v1, 0x4334

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f80

    invoke-interface {p1, v0, v12, v1, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 833
    const/16 v0, 0x10

    new-array v9, v0, [F

    .line 834
    .local v9, inverseTiltMatrix:[F
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v0}, Lcom/google/android/street/PanoramaConfig;->getTiltMatrix()[F

    move-result-object v0

    invoke-static {v9, v5, v0, v5}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 835
    invoke-interface {p1, v9, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 837
    new-instance v4, Lcom/google/android/street/Overlay$Polygon;

    sget-object v0, Lcom/google/android/street/Overlay;->PYRAMID_DATA:[F

    sget-object v1, Lcom/google/android/street/Overlay;->PYRAMID_FILL_INDEX:[B

    sget-object v2, Lcom/google/android/street/Overlay;->PYRAMID_OUTLINE_INDEX:[B

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/street/Overlay$Polygon;-><init>([F[B[B)V

    .line 842
    .local v4, pyramid:Lcom/google/android/street/Overlay$Polygon;
    const/4 v8, 0x1

    .local v8, i:I
    :goto_34
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->numPanos()I

    move-result v0

    if-ge v8, v0, :cond_a

    .line 843
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0, v8}, Lcom/google/android/street/DepthMap;->getPanoId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v1, v1, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 842
    :goto_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 847
    :cond_53
    iget v0, p0, Lcom/google/android/street/Overlay;->mHighlight:I

    add-int/lit8 v1, v8, 0x14

    if-ne v0, v1, :cond_8d

    .line 848
    invoke-interface {p1, v5, v11, v5, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 852
    :goto_5c
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 853
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0, v8}, Lcom/google/android/street/DepthMap;->getPanoPoint(I)Lcom/google/android/street/DepthMap$Point;

    move-result-object v10

    .line 854
    .local v10, point:Lcom/google/android/street/DepthMap$Point;
    iget v0, v10, Lcom/google/android/street/DepthMap$Point;->x:F

    neg-float v0, v0

    iget v1, v10, Lcom/google/android/street/DepthMap$Point;->y:F

    invoke-interface {p1, v0, v12, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 855
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Projector;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 856
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Projector;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 857
    invoke-virtual {v4, p1}, Lcom/google/android/street/Overlay$Polygon;->drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 858
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    iget-object v1, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    iget-object v3, p0, Lcom/google/android/street/Overlay;->mScratch:[F

    add-int/lit8 v7, v8, 0x14

    move-object v2, p1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/street/Overlay$HitTester;->add(Lcom/google/android/street/Projector;Ljavax/microedition/khronos/opengles/GL10;[FLcom/google/android/street/Overlay$Polygon;III)V

    .line 860
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_50

    .line 850
    .end local v10           #point:Lcom/google/android/street/DepthMap$Point;
    :cond_8d
    invoke-interface {p1, v5, v5, v11, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto :goto_5c
.end method

.method private endLabelOpacity(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x1000

    .line 1349
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-virtual {v0}, Lcom/google/android/street/Overlay$FadeAnimation;->getOpacity()I

    move-result v0

    .line 1350
    const/high16 v1, 0x1

    if-eq v0, v1, :cond_19

    .line 1351
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 1353
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1355
    :cond_19
    return-void
.end method

.method private getBaseProjection([F[F)V
    .registers 5
    .parameter "input"
    .parameter "output"

    .prologue
    const/4 v1, 0x0

    .line 1218
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/google/android/street/Projector;->project([FI[FI)V

    .line 1219
    return-void
.end method

.method private static getCircle(FI)[F
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 1415
    mul-int/lit8 v0, p1, 0xc

    new-array v0, v0, [F

    .line 1417
    const v1, 0x3fc90fdb

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 1418
    const/4 v2, 0x0

    .line 1421
    const/4 v3, 0x0

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_e
    if-gt v2, p1, :cond_6a

    .line 1422
    invoke-static {v3}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    .line 1423
    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    .line 1424
    mul-int/lit8 v6, v2, 0x3

    aput v4, v0, v6

    .line 1425
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    aput v5, v0, v6

    .line 1426
    mul-int/lit8 v6, p1, 0x2

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v6, v7

    neg-float v7, v4

    aput v7, v0, v6

    .line 1427
    mul-int/lit8 v6, p1, 0x2

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    neg-float v7, v5

    aput v7, v0, v6

    .line 1430
    if-lez v2, :cond_66

    if-ge v2, p1, :cond_66

    .line 1431
    mul-int/lit8 v6, p1, 0x2

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    sub-int/2addr v6, v7

    neg-float v7, v4

    aput v7, v0, v6

    .line 1432
    mul-int/lit8 v6, p1, 0x2

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    aput v5, v0, v6

    .line 1433
    mul-int/lit8 v6, p1, 0x4

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    sub-int/2addr v6, v7

    aput v4, v0, v6

    .line 1434
    mul-int/lit8 v4, p1, 0x4

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v6, v2, 0x3

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    neg-float v5, v5

    aput v5, v0, v4

    .line 1436
    :cond_66
    add-float/2addr v3, v1

    .line 1421
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1438
    :cond_6a
    return-object v0
.end method

.method private getDirectionText(Lcom/google/android/street/PanoramaLink;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "link"

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mCompassDirectionNames:[Ljava/lang/CharSequence;

    iget v1, p1, Lcom/google/android/street/PanoramaLink;->mDirection:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getPolygonStripIndices(I)[B
    .registers 5
    .parameter "numVertices"

    .prologue
    .line 1446
    new-array v1, p0, [B

    .line 1447
    .local v1, indices:[B
    const/4 v0, 0x0

    .local v0, i:B
    :goto_3
    if-ge v0, p0, :cond_19

    .line 1450
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_12

    div-int/lit8 v2, v0, 0x2

    :goto_b
    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1447
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_3

    .line 1450
    :cond_12
    const/4 v2, 0x1

    sub-int v2, p0, v2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    goto :goto_b

    .line 1454
    :cond_19
    return-object v1
.end method

.method private static getRange(I)[B
    .registers 4
    .parameter "n"

    .prologue
    .line 1462
    new-array v1, p0, [B

    .line 1463
    .local v1, range:[B
    const/4 v0, 0x0

    .local v0, i:B
    :goto_3
    if-ge v0, p0, :cond_b

    .line 1464
    aput-byte v0, v1, v0

    .line 1463
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_3

    .line 1466
    :cond_b
    return-object v1
.end method

.method private handleLabelsOutOfMemory(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3
    .parameter "gl"

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->clearLabelMakers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 749
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-eqz v0, :cond_e

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    .line 753
    invoke-direct {p0}, Lcom/google/android/street/Overlay;->createLabelMakers()V

    .line 759
    :goto_d
    return-void

    .line 757
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawDisabled:Z

    goto :goto_d
.end method

.method private updateLinkInfo()V
    .registers 11

    .prologue
    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 521
    iput-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    .line 522
    iput-object v3, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    .line 523
    iput-object v3, p0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    .line 524
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v3, v3, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    .line 526
    iget v3, p0, Lcom/google/android/street/Overlay;->mIncomingYaw:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_dd

    iget v3, p0, Lcom/google/android/street/Overlay;->mOutgoingYaw:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_dd

    .line 527
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v4, p0, Lcom/google/android/street/Overlay;->mIncomingYaw:F

    invoke-virtual {v3, v4, v5}, Lcom/google/android/street/PanoramaConfig;->getClosestLink(FF)Lcom/google/android/street/PanoramaLink;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    .line 529
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v4, p0, Lcom/google/android/street/Overlay;->mOutgoingYaw:F

    invoke-virtual {v3, v4, v5}, Lcom/google/android/street/PanoramaConfig;->getClosestLink(FF)Lcom/google/android/street/PanoramaLink;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    .line 534
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    if-ne v3, v4, :cond_53

    .line 535
    new-instance v3, Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget v4, v4, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget-object v5, v5, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget v6, v6, Lcom/google/android/street/PanoramaLink;->mRoadARGB:I

    iget-object v7, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget-object v7, v7, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/street/PanoramaLink;-><init>(FLjava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    .line 547
    :cond_53
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    if-nez v3, :cond_de

    move v3, v9

    :goto_58
    iget-object v4, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    if-nez v4, :cond_e1

    move v4, v9

    :goto_5d
    add-int v1, v3, v4

    .line 549
    .local v1, numExtraLinks:I
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v3, v3

    add-int/2addr v3, v1

    new-array v3, v3, [Lcom/google/android/street/PanoramaLink;

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    .line 550
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v3, v3, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v5, v5, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v5, v5

    invoke-static {v3, v8, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 552
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    if-nez v3, :cond_93

    .line 553
    new-instance v3, Lcom/google/android/street/PanoramaLink;

    iget v4, p0, Lcom/google/android/street/Overlay;->mIncomingYaw:F

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v3, v4, v5, v8, v6}, Lcom/google/android/street/PanoramaLink;-><init>(FLjava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    .line 554
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v4, v4

    add-int/lit8 v2, v1, -0x1

    .end local v1           #numExtraLinks:I
    .local v2, numExtraLinks:I
    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    aput-object v5, v3, v4

    move v1, v2

    .line 556
    .end local v2           #numExtraLinks:I
    .restart local v1       #numExtraLinks:I
    :cond_93
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    if-nez v3, :cond_ae

    .line 557
    new-instance v3, Lcom/google/android/street/PanoramaLink;

    iget v4, p0, Lcom/google/android/street/Overlay;->mOutgoingYaw:F

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v3, v4, v5, v8, v6}, Lcom/google/android/street/PanoramaLink;-><init>(FLjava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    .line 558
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v4, v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    aput-object v5, v3, v4

    .line 563
    :cond_ae
    const/4 v0, 0x0

    .local v0, i:I
    :goto_af
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v3, v3

    sub-int/2addr v3, v9

    if-ge v0, v3, :cond_d3

    .line 564
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    if-ne v3, v4, :cond_e4

    .line 565
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v5, v5

    sub-int/2addr v5, v9

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 566
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v4, v4

    sub-int/2addr v4, v9

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    aput-object v5, v3, v4

    .line 570
    :cond_d3
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    invoke-static {v3, v4}, Lcom/google/android/street/Overlay;->createDirectionsArrow(Lcom/google/android/street/PanoramaLink;Lcom/google/android/street/PanoramaLink;)Lcom/google/android/street/Overlay$Polygon;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    .line 573
    .end local v0           #i:I
    .end local v1           #numExtraLinks:I
    :cond_dd
    return-void

    :cond_de
    move v3, v8

    .line 547
    goto/16 :goto_58

    :cond_e1
    move v4, v8

    goto/16 :goto_5d

    .line 563
    .restart local v0       #i:I
    .restart local v1       #numExtraLinks:I
    :cond_e4
    add-int/lit8 v0, v0, 0x1

    goto :goto_af
.end method


# virtual methods
.method public doSetMotionUse(IJ)V
    .registers 5
    .parameter "device"
    .parameter "time"

    .prologue
    const/4 v0, 0x1

    .line 483
    if-nez p1, :cond_8

    .line 484
    iput-wide p2, p0, Lcom/google/android/street/Overlay;->mLastTrackballTime:J

    .line 485
    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mTrackballUsed:Z

    .line 489
    :cond_7
    :goto_7
    return-void

    .line 486
    :cond_8
    if-ne p1, v0, :cond_7

    .line 487
    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mTouchUsed:Z

    goto :goto_7
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Overlay$Pancake;J)V
    .registers 15
    .parameter "gl"
    .parameter "userOrientation"
    .parameter "pancake"
    .parameter "currentTime"

    .prologue
    .line 673
    iget-boolean v6, p0, Lcom/google/android/street/Overlay;->mDrawDisabled:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    if-nez v6, :cond_9

    .line 740
    :cond_8
    :goto_8
    return-void

    .line 678
    :cond_9
    const/4 v6, 0x1

    new-array v3, v6, [I

    .line 679
    .local v3, maxTextureSize:[I
    const/16 v6, 0xd33

    const/4 v7, 0x0

    invoke-interface {p1, v6, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 682
    iget-object v6, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    if-eqz v6, :cond_69

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    if-eqz v6, :cond_69

    const/4 v6, 0x1

    move v2, v6

    .line 685
    .local v2, isDirectionsMode:Z
    :goto_1c
    iget-object v6, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v6, v6, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v6, :cond_6c

    const/4 v6, 0x1

    move v1, v6

    .line 691
    .local v1, hasDepthMap:Z
    :goto_24
    if-nez v2, :cond_6f

    const/4 v6, 0x0

    aget v6, v3, v6

    const/16 v7, 0x800

    if-lt v6, v7, :cond_6f

    if-eqz v1, :cond_6f

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-boolean v6, v6, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    if-nez v6, :cond_6f

    const/4 v6, 0x1

    move v5, v6

    .line 695
    .local v5, useFancyLabels:Z
    :goto_37
    invoke-direct {p0, p2, p4, p5}, Lcom/google/android/street/Overlay;->computeAnimation(Lcom/google/android/street/UserOrientation;J)V

    .line 698
    if-eqz v5, :cond_72

    :try_start_3c
    iget-boolean v6, p0, Lcom/google/android/street/Overlay;->mIsIndoorScene:Z

    if-nez v6, :cond_72

    const/4 v6, 0x1

    :goto_41
    invoke-direct {p0, p1, v6}, Lcom/google/android/street/Overlay;->addLabels(Ljavax/microedition/khronos/opengles/GL10;Z)V
    :try_end_44
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3c .. :try_end_44} :catch_74

    .line 704
    iget-object v6, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    iget v7, p0, Lcom/google/android/street/Overlay;->mViewWidth:I

    iget v8, p0, Lcom/google/android/street/Overlay;->mViewHeight:I

    invoke-virtual {v6, v7, v8}, Lcom/google/android/street/Overlay$HitTester;->reset(II)V

    .line 706
    iget-boolean v6, p0, Lcom/google/android/street/Overlay;->mIsIndoorScene:Z

    if-eqz v6, :cond_7a

    .line 709
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/Overlay;->drawLinks(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;)V

    .line 710
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v7}, Lcom/google/android/street/Overlay;->drawLabels(Ljavax/microedition/khronos/opengles/GL10;ZZ)V

    .line 735
    :cond_59
    :goto_59
    iget-object v6, p0, Lcom/google/android/street/Overlay;->mHitTesterLock:Ljava/lang/Object;

    monitor-enter v6

    .line 736
    :try_start_5c
    iget-object v4, p0, Lcom/google/android/street/Overlay;->mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

    .line 737
    .local v4, temp:Lcom/google/android/street/Overlay$HitTester;
    iget-object v7, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    iput-object v7, p0, Lcom/google/android/street/Overlay;->mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

    .line 738
    iput-object v4, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    .line 739
    monitor-exit v6

    goto :goto_8

    .end local v4           #temp:Lcom/google/android/street/Overlay$HitTester;
    :catchall_66
    move-exception v7

    monitor-exit v6
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_66

    throw v7

    .line 682
    .end local v1           #hasDepthMap:Z
    .end local v2           #isDirectionsMode:Z
    .end local v5           #useFancyLabels:Z
    :cond_69
    const/4 v6, 0x0

    move v2, v6

    goto :goto_1c

    .line 685
    .restart local v2       #isDirectionsMode:Z
    :cond_6c
    const/4 v6, 0x0

    move v1, v6

    goto :goto_24

    .line 691
    .restart local v1       #hasDepthMap:Z
    :cond_6f
    const/4 v6, 0x0

    move v5, v6

    goto :goto_37

    .line 698
    .restart local v5       #useFancyLabels:Z
    :cond_72
    const/4 v6, 0x0

    goto :goto_41

    .line 699
    :catch_74
    move-exception v6

    move-object v0, v6

    .line 700
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->handleLabelsOutOfMemory(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_8

    .line 712
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_7a
    if-eqz v5, :cond_96

    .line 714
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/Overlay;->drawFancyStreetLabels(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;)V

    .line 722
    :goto_7f
    if-nez p3, :cond_9a

    if-eqz v1, :cond_9a

    const/4 v6, 0x1

    :goto_84
    invoke-direct {p0, p1, v6, v5}, Lcom/google/android/street/Overlay;->drawLabels(Ljavax/microedition/khronos/opengles/GL10;ZZ)V

    .line 725
    iget-boolean v6, p0, Lcom/google/android/street/Overlay;->mEnablePanoPoints:Z

    if-eqz v6, :cond_8e

    .line 726
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->drawPanoPoints(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 730
    :cond_8e
    iget-boolean v6, p0, Lcom/google/android/street/Overlay;->mEnablePancake:Z

    if-eqz v6, :cond_59

    .line 731
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/street/Overlay;->drawPancake(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Overlay$Pancake;)V

    goto :goto_59

    .line 718
    :cond_96
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/Overlay;->drawLinks(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;)V

    goto :goto_7f

    .line 722
    :cond_9a
    const/4 v6, 0x0

    goto :goto_84
.end method

.method public getNextDrawTime()J
    .registers 3

    .prologue
    .line 1195
    iget-wide v0, p0, Lcom/google/android/street/Overlay;->mNextDrawTime:J

    return-wide v0
.end method

.method public getPanoramaLink(I)Lcom/google/android/street/PanoramaLink;
    .registers 4
    .parameter "index"

    .prologue
    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v1, v1, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    .line 514
    :goto_4
    return-object v1

    .line 513
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 514
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public hit(II)I
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mHitTesterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1208
    :try_start_3
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/street/Overlay$HitTester;->hit(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1209
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public initialize(Lcom/google/android/street/PanoramaConfig;II)V
    .registers 9
    .parameter "config"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 444
    iput-object p1, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    .line 445
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v1, v1, Lcom/google/android/street/PanoramaConfig;->mSceneType:I

    if-ne v1, v3, :cond_5d

    move v1, v3

    :goto_f
    iput-boolean v1, p0, Lcom/google/android/street/Overlay;->mIsIndoorScene:Z

    .line 447
    invoke-direct {p0}, Lcom/google/android/street/Overlay;->updateLinkInfo()V

    .line 448
    iput p2, p0, Lcom/google/android/street/Overlay;->mViewWidth:I

    .line 449
    iput p3, p0, Lcom/google/android/street/Overlay;->mViewHeight:I

    .line 450
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/street/Overlay;->mAspectRatio:F

    .line 451
    iput-boolean v4, p0, Lcom/google/android/street/Overlay;->mLabelsComputed:Z

    .line 452
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-virtual {v1, v3}, Lcom/google/android/street/Overlay$FadeAnimation;->reset(Z)V

    .line 453
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/street/Overlay;->mHighlight:I

    .line 454
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 455
    .local v0, resources:Landroid/content/res/Resources;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/google/android/street/Overlay;->mAddressBubble:[Landroid/graphics/drawable/Drawable;

    .line 456
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mAddressBubble:[Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x7f02

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 458
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mAddressBubble:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    .line 460
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mAddressBubble:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f020002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 462
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancake:Landroid/graphics/drawable/Drawable;

    .line 463
    return-void

    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_5d
    move v1, v4

    .line 445
    goto :goto_f
.end method

.method public setDirectionsArrowParams(FF)V
    .registers 4
    .parameter "incomingYaw"
    .parameter "outgoingYaw"

    .prologue
    .line 498
    iput p1, p0, Lcom/google/android/street/Overlay;->mIncomingYaw:F

    .line 499
    iput p2, p0, Lcom/google/android/street/Overlay;->mOutgoingYaw:F

    .line 500
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_b

    .line 501
    invoke-direct {p0}, Lcom/google/android/street/Overlay;->updateLinkInfo()V

    .line 503
    :cond_b
    return-void
.end method

.method public setHighlight(I)V
    .registers 2
    .parameter "highlight"

    .prologue
    .line 1214
    iput p1, p0, Lcom/google/android/street/Overlay;->mHighlight:I

    .line 1215
    return-void
.end method

.method public shutdown(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2
    .parameter "gl"

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->clearLabelMakers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 467
    return-void
.end method
