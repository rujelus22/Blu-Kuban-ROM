.class public Lcom/google/android/finsky/exploreactivity/SpriteBatcher;
.super Ljava/lang/Object;
.source "SpriteBatcher.java"


# instance fields
.field private mBufferIndex:I

.field private mNumSprites:I

.field private mScale:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mVertices:Lcom/google/android/finsky/exploreactivity/Vertices;

.field private final mVerticesBuffer:[F


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;I)V
    .registers 14
    .parameter "gl"
    .parameter "maxSprites"

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    mul-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    .line 43
    new-instance v0, Lcom/google/android/finsky/exploreactivity/Vertices;

    mul-int/lit8 v2, p2, 0x4

    mul-int/lit8 v3, p2, 0x6

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/Vertices;-><init>(Ljavax/microedition/khronos/opengles/GL10;IIZZ)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVertices:Lcom/google/android/finsky/exploreactivity/Vertices;

    .line 44
    iput v10, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    .line 45
    iput v10, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mNumSprites:I

    .line 47
    mul-int/lit8 v0, p2, 0x6

    new-array v7, v0, [S

    .line 48
    .local v7, indices:[S
    array-length v9, v7

    .line 49
    .local v9, len:I
    const/4 v8, 0x0

    .line 50
    .local v8, j:S
    const/4 v6, 0x0

    .local v6, i:I
    :goto_25
    if-ge v6, v9, :cond_57

    .line 51
    add-int/lit8 v0, v6, 0x0

    add-int/lit8 v1, v8, 0x0

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 52
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v1, v8, 0x1

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 53
    add-int/lit8 v0, v6, 0x2

    add-int/lit8 v1, v8, 0x2

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 54
    add-int/lit8 v0, v6, 0x3

    add-int/lit8 v1, v8, 0x2

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 55
    add-int/lit8 v0, v6, 0x4

    add-int/lit8 v1, v8, 0x3

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 56
    add-int/lit8 v0, v6, 0x5

    add-int/lit8 v1, v8, 0x0

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 50
    add-int/lit8 v6, v6, 0x6

    add-int/lit8 v0, v8, 0x4

    int-to-short v8, v0

    goto :goto_25

    .line 58
    :cond_57
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVertices:Lcom/google/android/finsky/exploreactivity/Vertices;

    array-length v1, v7

    invoke-virtual {v0, v7, v10, v1}, Lcom/google/android/finsky/exploreactivity/Vertices;->setIndices([SII)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->clearTranslationAndScale()V

    .line 61
    return-void
.end method


# virtual methods
.method public beginBatch()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mNumSprites:I

    .line 66
    iput v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    .line 67
    return-void
.end method

.method public clearTranslationAndScale()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mTranslationX:F

    .line 80
    iput v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mTranslationY:F

    .line 81
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mScale:F

    .line 82
    return-void
.end method

.method public drawSprite(FFFFFFF)V
    .registers 17
    .parameter "width"
    .parameter "height"
    .parameter "textureX1"
    .parameter "textureY1"
    .parameter "textureX2"
    .parameter "textureY2"
    .parameter "alpha"

    .prologue
    .line 109
    const/high16 v6, 0x4000

    div-float v6, p1, v6

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mScale:F

    mul-float v1, v6, v7

    .line 110
    .local v1, halfWidth:F
    const/high16 v6, 0x4000

    div-float v6, p2, v6

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mScale:F

    mul-float v0, v6, v7

    .line 111
    .local v0, halfHeight:F
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mTranslationX:F

    sub-float v2, v6, v1

    .line 112
    .local v2, x1:F
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mTranslationY:F

    add-float v4, v6, v0

    .line 113
    .local v4, y1:F
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mTranslationX:F

    add-float v3, v6, v1

    .line 114
    .local v3, x2:F
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mTranslationY:F

    sub-float v5, v6, v0

    .line 119
    .local v5, y2:F
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput v2, v6, v7

    .line 120
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput v4, v6, v7

    .line 121
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 122
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 123
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 124
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p7, v6, v7

    .line 125
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p3, v6, v7

    .line 126
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p4, v6, v7

    .line 127
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput v3, v6, v7

    .line 128
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput v4, v6, v7

    .line 129
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 130
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 131
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 132
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p7, v6, v7

    .line 133
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p5, v6, v7

    .line 134
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p4, v6, v7

    .line 135
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput v3, v6, v7

    .line 136
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput v5, v6, v7

    .line 137
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 138
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 139
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 140
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p7, v6, v7

    .line 141
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p5, v6, v7

    .line 142
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p6, v6, v7

    .line 143
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput v2, v6, v7

    .line 144
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput v5, v6, v7

    .line 145
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 146
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 147
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    .line 148
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p7, v6, v7

    .line 149
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p3, v6, v7

    .line 150
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p6, v6, v7

    .line 151
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mNumSprites:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mNumSprites:I

    .line 152
    return-void
.end method

.method public drawSpriteDirectly(FFFFFFFFFFFFF)V
    .registers 17
    .parameter "topLeftX"
    .parameter "topLeftY"
    .parameter "topRightX"
    .parameter "topRightY"
    .parameter "bottomRightX"
    .parameter "bottomRightY"
    .parameter "bottomLeftX"
    .parameter "bottomLeftY"
    .parameter "textureX1"
    .parameter "textureY1"
    .parameter "textureX2"
    .parameter "textureY2"
    .parameter "alpha"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p1, v0, v1

    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p13, v0, v1

    .line 183
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p9, v0, v1

    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p10, v0, v1

    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p3, v0, v1

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p4, v0, v1

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p13, v0, v1

    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p11, v0, v1

    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p10, v0, v1

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p5, v0, v1

    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p6, v0, v1

    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p13, v0, v1

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p11, v0, v1

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p12, v0, v1

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p7, v0, v1

    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p8, v0, v1

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p13, v0, v1

    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p9, v0, v1

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    aput p12, v0, v1

    .line 209
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mNumSprites:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mNumSprites:I

    .line 210
    return-void
.end method

.method public endBatch()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVertices:Lcom/google/android/finsky/exploreactivity/Vertices;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVerticesBuffer:[F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mBufferIndex:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/finsky/exploreactivity/Vertices;->setVertices([FII)V

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVertices:Lcom/google/android/finsky/exploreactivity/Vertices;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/Vertices;->bind()V

    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVertices:Lcom/google/android/finsky/exploreactivity/Vertices;

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mNumSprites:I

    mul-int/lit8 v2, v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/finsky/exploreactivity/Vertices;->draw(III)V

    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mVertices:Lcom/google/android/finsky/exploreactivity/Vertices;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/Vertices;->unbind()V

    .line 75
    return-void
.end method

.method public scale(F)V
    .registers 2
    .parameter "scale"

    .prologue
    .line 92
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mScale:F

    .line 93
    return-void
.end method

.method public translate(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mTranslationX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mScale:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mTranslationX:F

    .line 87
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mTranslationY:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mScale:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->mTranslationY:F

    .line 88
    return-void
.end method
