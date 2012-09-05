.class public Lcom/google/android/finsky/exploreactivity/PolygonLineHelper;
.super Ljava/lang/Object;
.source "PolygonLineHelper.java"


# static fields
.field private static sThickness:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/high16 v0, 0x4000

    sput v0, Lcom/google/android/finsky/exploreactivity/PolygonLineHelper;->sThickness:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawLine(FFFFFLcom/google/android/finsky/exploreactivity/TextureAtlas;Lcom/google/android/finsky/exploreactivity/SpriteBatcher;)V
    .registers 22
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"
    .parameter "alpha"
    .parameter "textureAtlas"
    .parameter "spriteBatcher"

    .prologue
    .line 33
    new-instance v14, Lcom/google/android/finsky/exploreactivity/Vector;

    sub-float v0, p0, p2

    sub-float v9, p1, p3

    invoke-direct {v14, v0, v9}, Lcom/google/android/finsky/exploreactivity/Vector;-><init>(FF)V

    .line 36
    .local v14, direction:Lcom/google/android/finsky/exploreactivity/Vector;
    const/high16 v0, 0x42b4

    invoke-virtual {v14, v0}, Lcom/google/android/finsky/exploreactivity/Vector;->rotate(F)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 39
    const/high16 v0, 0x3f80

    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/Vector;->len()F

    move-result v9

    div-float/2addr v0, v9

    sget v9, Lcom/google/android/finsky/exploreactivity/PolygonLineHelper;->sThickness:F

    mul-float/2addr v0, v9

    invoke-virtual {v14, v0}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 42
    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v0

    add-float v1, p0, v0

    .line 43
    .local v1, topLeftX:F
    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v0

    add-float v2, p1, v0

    .line 45
    .local v2, topLeftY:F
    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v0

    sub-float v7, p0, v0

    .line 46
    .local v7, bottomLeftX:F
    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v0

    sub-float v8, p1, v0

    .line 48
    .local v8, bottomLeftY:F
    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v0

    add-float v3, p2, v0

    .line 49
    .local v3, topRightX:F
    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v0

    add-float v4, p3, v0

    .line 51
    .local v4, topRightY:F
    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v0

    sub-float v5, p2, v0

    .line 52
    .local v5, bottomRightX:F
    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v0

    sub-float v6, p3, v0

    .line 54
    .local v6, bottomRightY:F
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureLeftX()F

    move-result v9

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureTopY()F

    move-result v10

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureRightX()F

    move-result v11

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureBottomY()F

    move-result v12

    move-object/from16 v0, p6

    move/from16 v13, p4

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSpriteDirectly(FFFFFFFFFFFFF)V

    .line 58
    return-void
.end method
