.class public Lcom/google/android/finsky/exploreactivity/DrawingUtils;
.super Ljava/lang/Object;
.source "DrawingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/DrawingUtils$2;,
        Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;,
        Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;
    }
.end annotation


# static fields
.field private static final BASE_PLANE:Lcom/jme3/math/Plane;

.field public static final UNIT_QUAD:Lcom/jme3/scene/Mesh;

.field public static final UNIT_X:Lcom/jme3/math/Vector2f;

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final click3d:Lcom/jme3/math/Vector3f;

.field private final dir:Lcom/jme3/math/Vector3f;

.field private final intersectionPoint:Lcom/jme3/math/Vector3f;

.field private final inverseMatrix:Lcom/jme3/math/Matrix4f;

.field private mBitmapPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapPoolBytes:I

.field private final mEdgeLineGlowWidth:F

.field private final mEdgeLineWidth:F

.field private final mGlowBackgroundColor:I

.field private final mGlowForegroundColor:I

.field private final mGlowingLineMaterial:Lcom/jme3/material/Material;

.field private final mInvisibleTexture:Lcom/jme3/material/Material;

.field private final mLineForegroundColor:I

.field private final mMaxBitmapPoolBytes:I

.field public final mNodeBitmapSize:F

.field private final mNodeGlowMaterial:Lcom/jme3/material/Material;

.field private final mNodeGlowOutlineWidth:F

.field public final mNodeGlowWidth:F

.field private final mUnshadedMaterial:Lcom/jme3/material/Material;

.field private final quat:Lcom/jme3/math/Quaternion;

.field private final ray:Lcom/jme3/math/Ray;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 66
    new-instance v0, Lcom/jme3/math/Plane;

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v3}, Lcom/jme3/math/Plane;-><init>(Lcom/jme3/math/Vector3f;F)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->BASE_PLANE:Lcom/jme3/math/Plane;

    .line 72
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0, v2, v3}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_X:Lcom/jme3/math/Vector2f;

    .line 74
    new-instance v0, Lcom/jme3/scene/shape/Quad;

    invoke-direct {v0, v2, v2}, Lcom/jme3/scene/shape/Quad;-><init>(FF)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Landroid/content/res/Resources;I)V
    .registers 8
    .parameter "assetManager"
    .parameter "res"
    .parameter "maxBitmapPoolBytes"

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    .line 136
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    .line 141
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    .line 142
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    .line 143
    new-instance v0, Lcom/jme3/math/Ray;

    invoke-direct {v0}, Lcom/jme3/math/Ray;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->ray:Lcom/jme3/math/Ray;

    .line 144
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->intersectionPoint:Lcom/jme3/math/Vector3f;

    .line 145
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->quat:Lcom/jme3/math/Quaternion;

    .line 146
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->inverseMatrix:Lcom/jme3/math/Matrix4f;

    .line 149
    const v0, 0x7f0c001a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeBitmapSize:F

    .line 150
    const v0, 0x7f0c001c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowWidth:F

    .line 151
    const v0, 0x7f0a0041

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowBackgroundColor:I

    .line 152
    const v0, 0x7f0a0042

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowForegroundColor:I

    .line 153
    const v0, 0x7f0a0043

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mLineForegroundColor:I

    .line 154
    const v0, 0x7f0c001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowOutlineWidth:F

    .line 155
    const v0, 0x7f0c001d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    .line 156
    const v0, 0x7f0c001e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineWidth:F

    .line 157
    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mUnshadedMaterial:Lcom/jme3/material/Material;

    .line 158
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->createLineBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowingLineMaterial:Lcom/jme3/material/Material;

    .line 159
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowingLineMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 160
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getUnshadedMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mInvisibleTexture:Lcom/jme3/material/Material;

    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mInvisibleTexture:Lcom/jme3/material/Material;

    const-string v1, "Color"

    sget-object v2, Lcom/jme3/math/ColorRGBA;->BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mInvisibleTexture:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 163
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->createGlowBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowMaterial:Lcom/jme3/material/Material;

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 165
    iput p3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mMaxBitmapPoolBytes:I

    .line 166
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->sDecodeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/exploreactivity/DrawingUtils;II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private convertBlueToAlpha(Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "bitmap"

    .prologue
    .line 487
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v2, v4, :cond_24

    .line 488
    const/4 v3, 0x0

    .local v3, y:I
    :goto_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 489
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 490
    .local v0, pix:I
    and-int/lit16 v1, v0, 0xff

    .line 491
    .local v1, v:I
    shl-int/lit8 v4, v1, 0x18

    const v5, 0xffffff

    or-int v0, v4, v5

    .line 492
    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 487
    .end local v0           #pix:I
    .end local v1           #v:I
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 495
    .end local v3           #y:I
    :cond_24
    return-void
.end method

.method private createGlowBitmap()Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/high16 v7, 0x4000

    .line 437
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeBitmapSize:F

    div-float v3, v6, v7

    .line 438
    .local v3, innerRadius:F
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowWidth:F

    add-float v4, v3, v6

    .line 439
    .local v4, outerRadius:F
    mul-float v6, v4, v7

    float-to-int v1, v6

    .line 440
    .local v1, bitmapSize:I
    invoke-direct {p0, v1, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 441
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowBackgroundColor:I

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 442
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 443
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 444
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 445
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 446
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowOutlineWidth:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 447
    new-instance v6, Landroid/graphics/BlurMaskFilter;

    sub-float v7, v4, v3

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v6, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 448
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowForegroundColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    invoke-virtual {v2, v4, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 450
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 451
    invoke-virtual {v2, v4, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 452
    invoke-direct {p0, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBlueToAlpha(Landroid/graphics/Bitmap;)V

    .line 453
    return-object v0
.end method

.method private getAngle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 502
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->x:F

    .line 503
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v2, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->y:F

    .line 504
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v2, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->z:F

    .line 505
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 506
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->angleBetween(Lcom/jme3/math/Vector3f;)F

    move-result v0

    .line 507
    .local v0, ang:F
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_32

    .line 508
    neg-float v0, v0

    .line 510
    :cond_32
    return v0
.end method

.method private getBitmap(II)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "w"
    .parameter "h"

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    monitor-enter v5

    .line 274
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    :try_start_5
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 275
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 276
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 277
    invoke-direct {p0, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->removeBitmapFromPool(I)Landroid/graphics/Bitmap;

    .line 278
    const-string v4, "recycled"

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 279
    add-int/lit8 v3, v3, -0x1

    .line 274
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 280
    :cond_2a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, p1, :cond_47

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, p2, :cond_47

    .line 281
    invoke-direct {p0, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->removeBitmapFromPool(I)Landroid/graphics/Bitmap;

    .line 282
    const-string v4, "hit"

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 288
    :cond_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_49

    .line 289
    if-eqz v1, :cond_4c

    .line 290
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object v2, v1

    .line 295
    .end local v1           #b:Landroid/graphics/Bitmap;
    .local v2, b:Landroid/graphics/Bitmap;
    :goto_46
    return-object v2

    .line 285
    .end local v2           #b:Landroid/graphics/Bitmap;
    .restart local v1       #b:Landroid/graphics/Bitmap;
    :cond_47
    const/4 v1, 0x0

    goto :goto_27

    .line 288
    :catchall_49
    move-exception v4

    :try_start_4a
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v4

    .line 293
    :cond_4c
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 294
    const-string v4, "miss"

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    move-object v2, v1

    .line 295
    .end local v1           #b:Landroid/graphics/Bitmap;
    .restart local v2       #b:Landroid/graphics/Bitmap;
    goto :goto_46
.end method

.method public static getPolyCenter([Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V
    .registers 11
    .parameter "poly"
    .parameter "center"

    .prologue
    const/high16 v8, 0x4000

    .line 581
    const/high16 v4, 0x7f80

    .line 582
    .local v4, minX:F
    const/high16 v2, -0x80

    .line 583
    .local v2, maxX:F
    const/high16 v5, 0x7f80

    .line 584
    .local v5, minY:F
    const/high16 v3, -0x80

    .line 585
    .local v3, maxY:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v7, p0

    if-ge v1, v7, :cond_31

    .line 586
    aget-object v7, p0, v1

    iget v7, v7, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 587
    aget-object v7, p0, v1

    iget v7, v7, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 588
    aget-object v7, p0, v1

    iget v7, v7, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 589
    aget-object v7, p0, v1

    iget v7, v7, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 591
    :cond_31
    sub-float v6, v2, v4

    .line 592
    .local v6, width:F
    sub-float v0, v3, v5

    .line 593
    .local v0, height:F
    div-float v7, v6, v8

    add-float/2addr v7, v4

    iput v7, p1, Lcom/jme3/math/Vector2f;->x:F

    .line 594
    div-float v7, v0, v8

    add-float/2addr v7, v5

    iput v7, p1, Lcom/jme3/math/Vector2f;->y:F

    .line 595
    return-void
.end method

.method public static getPolySize([Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V
    .registers 8
    .parameter "poly"
    .parameter "size"

    .prologue
    .line 602
    const v3, 0x7f7fffff

    .line 603
    .local v3, minX:F
    const/4 v1, 0x1

    .line 604
    .local v1, maxX:F
    const v4, 0x7f7fffff

    .line 605
    .local v4, minY:F
    const/4 v2, 0x1

    .line 606
    .local v2, maxY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    array-length v5, p0

    if-ge v0, v5, :cond_2f

    .line 607
    aget-object v5, p0, v0

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 608
    aget-object v5, p0, v0

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 609
    aget-object v5, p0, v0

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 610
    aget-object v5, p0, v0

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 612
    :cond_2f
    sub-float v5, v1, v3

    iput v5, p1, Lcom/jme3/math/Vector2f;->x:F

    .line 613
    sub-float v5, v2, v4

    iput v5, p1, Lcom/jme3/math/Vector2f;->y:F

    .line 614
    return-void
.end method

.method private getUnshadedMaterial()Lcom/jme3/material/Material;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mUnshadedMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0
.end method

.method private getWorldCoordinates(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)V
    .registers 12
    .parameter "cam"
    .parameter "screenPosition"
    .parameter "zPos"
    .parameter "worldPosition"

    .prologue
    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    .line 530
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->inverseMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 531
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->inverseMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 533
    iget v1, p2, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    mul-float/2addr v1, v6

    sub-float/2addr v1, v5

    iget v2, p2, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortTop()F

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    mul-float v3, p3, v6

    sub-float/2addr v3, v5

    invoke-virtual {p4, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 539
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->inverseMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, p4, p4}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v0

    .line 540
    .local v0, w:F
    div-float v1, v5, v0

    invoke-virtual {p4, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 541
    return-void
.end method

.method private poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 14
    .parameter "b"
    .parameter "action"

    .prologue
    .line 359
    sget-boolean v6, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-nez v6, :cond_5

    .line 382
    :goto_4
    return-void

    .line 362
    :cond_5
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    monitor-enter v7

    .line 363
    :try_start_8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v2, histogram:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 365
    .local v0, bb:Landroid/graphics/Bitmap;
    const-string v6, "%dx%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, size:Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 367
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 381
    .end local v0           #bb:Landroid/graphics/Bitmap;
    .end local v2           #histogram:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #size:Ljava/lang/String;
    :catchall_58
    move-exception v6

    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_58

    throw v6

    .line 369
    .restart local v0       #bb:Landroid/graphics/Bitmap;
    .restart local v2       #histogram:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #size:Ljava/lang/String;
    :cond_5b
    const/4 v6, 0x1

    :try_start_5c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 372
    .end local v0           #bb:Landroid/graphics/Bitmap;
    .end local v5           #size:Ljava/lang/String;
    :cond_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v4, s:Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 374
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 379
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_9e
    const-string v6, "Pool %10s: %3dx%3d, now %2s/%8s: %s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    monitor-exit v7
    :try_end_dd
    .catchall {:try_start_5c .. :try_end_dd} :catchall_58

    goto/16 :goto_4
.end method

.method private removeBitmapFromPool(I)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "pos"

    .prologue
    .line 389
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 390
    .local v0, b:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    .line 391
    return-object v0
.end method


# virtual methods
.method convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;
    .registers 10
    .parameter "inBitmap"
    .parameter "flipVertical"

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 199
    .local v4, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 202
    .local v1, height:I
    sget-object v5, Lcom/google/android/finsky/exploreactivity/DrawingUtils$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_5c

    .line 227
    :goto_18
    return-object v3

    .line 204
    :pswitch_19
    sget-object v0, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    .line 219
    .local v0, fmt:Lcom/jme3/texture/Image$Format;
    :goto_1b
    new-instance v2, Lcom/jme3/texture/Image;

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;)V

    .line 220
    .local v2, image:Lcom/jme3/texture/Image;
    new-instance v5, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;

    invoke-direct {v5, p0, p1, p2, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;-><init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/graphics/Bitmap;ZLcom/google/android/finsky/exploreactivity/DrawingUtils$1;)V

    invoke-virtual {v2, v5}, Lcom/jme3/texture/Image;->setEfficentData(Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getUnshadedMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    .line 223
    .local v3, material:Lcom/jme3/material/Material;
    const-string v5, "ColorMap"

    new-instance v6, Lcom/jme3/texture/Texture2D;

    invoke-direct {v6, v2}, Lcom/jme3/texture/Texture2D;-><init>(Lcom/jme3/texture/Image;)V

    invoke-virtual {v3, v5, v6}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 224
    invoke-virtual {v3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v5

    sget-object v6, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v5, v6}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 225
    invoke-virtual {v3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jme3/material/RenderState;->setAlphaTest(Z)V

    .line 226
    invoke-virtual {v3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v5

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Lcom/jme3/material/RenderState;->setAlphaFallOff(F)V

    goto :goto_18

    .line 207
    .end local v0           #fmt:Lcom/jme3/texture/Image$Format;
    .end local v2           #image:Lcom/jme3/texture/Image;
    .end local v3           #material:Lcom/jme3/material/Material;
    :pswitch_52
    sget-object v0, Lcom/jme3/texture/Image$Format;->ARGB4444:Lcom/jme3/texture/Image$Format;

    .line 208
    .restart local v0       #fmt:Lcom/jme3/texture/Image$Format;
    goto :goto_1b

    .line 210
    .end local v0           #fmt:Lcom/jme3/texture/Image$Format;
    :pswitch_55
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    .line 211
    .restart local v0       #fmt:Lcom/jme3/texture/Image$Format;
    goto :goto_1b

    .line 213
    .end local v0           #fmt:Lcom/jme3/texture/Image$Format;
    :pswitch_58
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    .line 214
    .restart local v0       #fmt:Lcom/jme3/texture/Image$Format;
    goto :goto_1b

    .line 202
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_52
        :pswitch_55
        :pswitch_58
    .end packed-switch
.end method

.method createLineBitmap()Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/high16 v8, 0x3f00

    .line 461
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineWidth:F

    add-float/2addr v2, v3

    float-to-int v7, v2

    .line 462
    .local v7, bitmapSize:I
    invoke-direct {p0, v7, v7}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 463
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowBackgroundColor:I

    invoke-virtual {v6, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 464
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 465
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 466
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 467
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 468
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineWidth:F

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 469
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 470
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowForegroundColor:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    sub-float/2addr v2, v8

    int-to-float v3, v7

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    add-float/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 473
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 474
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mLineForegroundColor:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    sub-float/2addr v2, v8

    int-to-float v3, v7

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    add-float/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 477
    invoke-direct {p0, v6}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBlueToAlpha(Landroid/graphics/Bitmap;)V

    .line 478
    return-object v6
.end method

.method public createNodeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "bitmap"

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 406
    .local v13, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 407
    .local v8, height:I
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 409
    .local v4, size:I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 410
    .local v6, flipMat:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 411
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeBitmapSize:F

    int-to-float v1, v4

    div-float v12, v0, v1

    .line 412
    .local v12, scale:F
    invoke-virtual {v6, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 413
    sub-int v0, v13, v4

    div-int/lit8 v2, v0, 0x2

    sub-int v0, v8, v4

    div-int/lit8 v3, v0, 0x2

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->transformBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 416
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 417
    .local v9, paint:Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 419
    .local v7, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 420
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 421
    int-to-float v0, v4

    const/high16 v1, 0x4000

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v10, v0, v1

    .line 422
    .local v10, r1:F
    int-to-float v0, v4

    const/high16 v1, 0x4000

    div-float v11, v0, v1

    .line 423
    .local v11, r2:F
    sub-float v0, v10, v11

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 424
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 425
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 427
    int-to-float v0, v4

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    int-to-float v1, v4

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float v2, v10, v11

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v7, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 429
    return-object p1
.end method

.method public createViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "view"

    .prologue
    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 570
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 571
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 572
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 573
    return-object v0
.end method

.method public getBasePlaneCoords(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V
    .registers 7
    .parameter "cam"
    .parameter "screenCoords"
    .parameter "worldCoords"

    .prologue
    .line 554
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getWorldCoordinates(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)V

    .line 555
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getWorldCoordinates(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)V

    .line 556
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->x:F

    .line 557
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->y:F

    .line 558
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->z:F

    .line 560
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->ray:Lcom/jme3/math/Ray;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Ray;->setOrigin(Lcom/jme3/math/Vector3f;)V

    .line 561
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->ray:Lcom/jme3/math/Ray;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Ray;->setDirection(Lcom/jme3/math/Vector3f;)V

    .line 562
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->ray:Lcom/jme3/math/Ray;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->BASE_PLANE:Lcom/jme3/math/Plane;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->intersectionPoint:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Ray;->intersectsWherePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;)Z

    .line 563
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->intersectionPoint:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p3, Lcom/jme3/math/Vector2f;->x:F

    .line 564
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->intersectionPoint:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p3, Lcom/jme3/math/Vector2f;->y:F

    .line 565
    return-void
.end method

.method public getGlowingLineMaterial()Lcom/jme3/material/Material;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowingLineMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0
.end method

.method public getInvisibleMaterial()Lcom/jme3/material/Material;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mInvisibleTexture:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getNodeGlowMaterial()Lcom/jme3/material/Material;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailRequest(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter "docWrapper"
    .parameter "priority"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/exploreactivity/DocWrapper;",
            "Lcom/android/volley/Request$Priority;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    const/4 v1, 0x0

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeBitmapSize:F

    float-to-int v3, v3

    invoke-static {v0, v1, v3}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, url:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;

    new-instance v4, Lcom/google/android/finsky/exploreactivity/DrawingUtils$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils$1;-><init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Lcom/google/android/finsky/exploreactivity/DocWrapper;)V

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;-><init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Ljava/lang/String;Lcom/android/volley/Request$Priority;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method

.method public hasBitmapTexture(Lcom/jme3/scene/Geometry;)Z
    .registers 4
    .parameter "g"

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    const-string v1, "ColorMap"

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "b"

    .prologue
    .line 345
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 346
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    monitor-enter v1

    .line 347
    :try_start_11
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    .line 349
    const-string v0, "return"

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 350
    :goto_29
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mMaxBitmapPoolBytes:I

    if-le v0, v2, :cond_3d

    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->removeBitmapFromPool(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 352
    const-string v0, "overrun"

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_29

    .line 354
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3a

    .line 356
    :cond_3e
    return-void
.end method

.method public recycleMaterial(Lcom/jme3/scene/Geometry;)V
    .registers 9
    .parameter "g"

    .prologue
    .line 315
    if-nez p1, :cond_3

    .line 342
    :cond_2
    :goto_2
    return-void

    .line 318
    :cond_3
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v2

    .line 319
    .local v2, mat:Lcom/jme3/material/Material;
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mInvisibleTexture:Lcom/jme3/material/Material;

    invoke-virtual {p1, v6}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 321
    if-eqz v2, :cond_2

    .line 324
    const-string v6, "ColorMap"

    invoke-virtual {v2, v6}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v3

    .line 325
    .local v3, mp:Lcom/jme3/material/MatParam;
    if-eqz v3, :cond_2

    .line 328
    invoke-virtual {v3}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 329
    .local v4, o:Ljava/lang/Object;
    instance-of v6, v4, Lcom/jme3/texture/Texture;

    if-eqz v6, :cond_2

    .line 332
    check-cast v4, Lcom/jme3/texture/Texture;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    .line 333
    .local v1, i:Lcom/jme3/texture/Image;
    if-eqz v1, :cond_2

    .line 336
    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getEfficentData()Ljava/lang/Object;

    move-result-object v5

    .line 337
    .local v5, oo:Ljava/lang/Object;
    instance-of v6, v5, Lcom/jme3/asset/AndroidImageInfo;

    if-eqz v6, :cond_2

    .line 340
    check-cast v5, Lcom/jme3/asset/AndroidImageInfo;

    .end local v5           #oo:Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/jme3/asset/AndroidImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 341
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public setupLine(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .registers 8
    .parameter "geom"
    .parameter "start"
    .parameter "end"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->quat:Lcom/jme3/math/Quaternion;

    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getAngle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/jme3/math/Quaternion;->fromAngles(FFF)Lcom/jme3/math/Quaternion;

    .line 519
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->quat:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    .line 520
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    .line 521
    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result v0

    invoke-virtual {p1, v0, v3, v3}, Lcom/jme3/scene/Spatial;->setLocalScale(FFF)V

    .line 522
    return-void
.end method

.method transformBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .registers 20
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"

    .prologue
    .line 236
    move/from16 v6, p4

    .line 237
    .local v6, neww:I
    move/from16 v5, p5

    .line 238
    .local v5, newh:I
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 242
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, p2, p4

    add-int v10, p3, p5

    move/from16 v0, p3

    invoke-direct {v8, p2, v0, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 243
    .local v8, srcR:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p4

    int-to-float v11, v0

    move/from16 v0, p5

    int-to-float v12, v0

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 245
    .local v4, dstR:Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 246
    .local v3, deviceR:Landroid/graphics/RectF;
    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 248
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 249
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 251
    invoke-direct {p0, v6, v5}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 253
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget v9, v3, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    iget v10, v3, Landroid/graphics/RectF;->top:F

    neg-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 256
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 260
    .local v7, paint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 262
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    invoke-virtual {v2, p1, v8, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 265
    return-object v1
.end method

.method public unloadCache()V
    .registers 3

    .prologue
    .line 303
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    monitor-enter v1

    .line 304
    :try_start_3
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method
