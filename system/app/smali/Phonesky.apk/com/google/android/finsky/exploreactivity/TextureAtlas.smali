.class public Lcom/google/android/finsky/exploreactivity/TextureAtlas;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# instance fields
.field private mConfigArtifactBorderThickness:F

.field private mConfigBorderThickness:F

.field private mConfigDefaultImageTextureX:F

.field private mConfigDefaultImageTextureY:F

.field private mConfigDefaultTitleTextureX:F

.field private mConfigDefaultTitleTextureY:F

.field private mConfigImageTextureSize:F

.field private mConfigInfoboxDescriptionTextureHeight:F

.field private mConfigInfoboxDescriptionTextureWidth:F

.field private mConfigInfoboxDescriptionTextureX:F

.field private mConfigInfoboxDescriptionTextureY:F

.field private mConfigInfoboxMetadataTextureHeight:F

.field private mConfigInfoboxMetadataTexturePageHeight:F

.field private mConfigInfoboxMetadataTextureWidth:F

.field private mConfigInfoboxMetadataTextureX:F

.field private mConfigInfoboxMetadataTextureY:F

.field private mConfigInfoboxTextureHeight:F

.field private mConfigInfoboxTextureWidth:F

.field private mConfigInfoboxTextureX:F

.field private mConfigInfoboxTextureY:F

.field private mConfigInfoboxTitleTextureWidth:F

.field private mConfigInfoboxTitleTextureX:F

.field private mConfigInfoboxTitleTextureY:F

.field private mConfigLargeFontSize:F

.field private mConfigLine1TextureX:F

.field private mConfigLine1TextureY:F

.field private mConfigLine2TextureX:F

.field private mConfigLine2TextureY:F

.field private mConfigLineTextureSize:F

.field private mConfigMediumFontSize:F

.field private mConfigSmallFontSize:F

.field private mConfigTitleTextureHeight:F

.field private mConfigTitleTextureWidth:F

.field private mConfigTitleTextureY:F

.field private mConfigWhiteboxTextureHeight:F

.field private mConfigWhiteboxTextureWidth:F

.field private mConfigWhiteboxTextureX:F

.field private mConfigWhiteboxTextureY:F

.field private mConfigXSmallFontSize:F

.field private final mContext:Landroid/content/Context;

.field private final mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private final mImageCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/exploreactivity/AppNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageVacancy:[[Z

.field private mImageVacancySize:I

.field private mMagFilter:I

.field private mMinFilter:I

.field private mNumFramesPassed:I

.field private final mSubTextureQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/exploreactivity/SubTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/exploreactivity/AppNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextVacancy:[[Z

.field private mTextVacancySize:I

.field private final mTextureId:I

.field private mTextureX1:F

.field private mTextureX2:F

.field private mTextureY1:F

.field private mTextureY2:F


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V
    .registers 16
    .parameter "gl"
    .parameter "context"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x5

    const/16 v10, 0xde1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/16 v5, 0x2600

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mMinFilter:I

    .line 178
    const/16 v5, 0x2600

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mMagFilter:I

    .line 193
    filled-new-array {v11, v12}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageVacancy:[[Z

    .line 196
    const/16 v5, 0x28

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageVacancySize:I

    .line 202
    filled-new-array {v11, v12}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextVacancy:[[Z

    .line 205
    const/16 v5, 0x28

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextVacancySize:I

    .line 208
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageCache:Ljava/util/LinkedList;

    .line 211
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextCache:Ljava/util/LinkedList;

    .line 214
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mSubTextureQueue:Ljava/util/LinkedList;

    .line 217
    iput v8, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mNumFramesPassed:I

    .line 227
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 228
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    .line 230
    new-array v4, v9, [I

    .line 231
    .local v4, textureIds:[I
    invoke-interface {p1, v9, v4, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 232
    aget v5, v4, v8

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureId:I

    .line 234
    iget v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureId:I

    invoke-interface {p1, v10, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 236
    const/16 v5, 0x2801

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mMinFilter:I

    int-to-float v6, v6

    invoke-interface {p1, v10, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 237
    const/16 v5, 0x2800

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mMagFilter:I

    int-to-float v6, v6

    invoke-interface {p1, v10, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 239
    const/16 v5, 0x400

    const/16 v6, 0x400

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 242
    .local v3, textureAtlas:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 244
    .local v0, canvas:Landroid/graphics/Canvas;
    const/16 v5, 0xff

    invoke-virtual {v0, v5, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 246
    invoke-static {v10, v8, v3, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 247
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8a
    if-ge v1, v11, :cond_a1

    .line 250
    const/4 v2, 0x0

    .local v2, j:I
    :goto_8d
    if-ge v2, v12, :cond_9e

    .line 251
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageVacancy:[[Z

    aget-object v5, v5, v1

    aput-boolean v9, v5, v2

    .line 252
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextVacancy:[[Z

    aget-object v5, v5, v1

    aput-boolean v9, v5, v2

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 249
    :cond_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 256
    .end local v2           #j:I
    :cond_a1
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->initConfigVariables()V

    .line 258
    return-void
.end method

.method private bindDefaultImageTexture()V
    .registers 3

    .prologue
    .line 1206
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultImageTextureX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1207
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultImageTextureY:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1208
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1209
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1211
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->normalizeTextureCoord()V

    .line 1212
    return-void
.end method

.method private bindDefaultTitleTexture()V
    .registers 3

    .prologue
    .line 1216
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultTitleTextureX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1217
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultTitleTextureY:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1218
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1219
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1221
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->normalizeTextureCoord()V

    .line 1222
    return-void
.end method

.method private drawPage0(Landroid/graphics/Canvas;Lcom/google/android/finsky/exploreactivity/AppNode;F)V
    .registers 21
    .parameter "canvas"
    .parameter "appNode"
    .parameter "offset"

    .prologue
    .line 729
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 730
    .local v11, textPaint:Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 732
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigMediumFontSize:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 733
    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 735
    const v12, 0x7f020044

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 736
    .local v9, starOn:Landroid/graphics/Bitmap;
    const v12, 0x7f020042

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 737
    .local v8, starOff:Landroid/graphics/Bitmap;
    const v12, 0x7f020043

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 741
    .local v6, starHalf:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v3, v12, Landroid/util/DisplayMetrics;->density:F

    .line 743
    .local v3, density:F
    float-to-double v12, v3

    const-wide/high16 v14, 0x3ff8

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_96

    .line 744
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v3

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff8

    div-double/2addr v12, v14

    double-to-int v12, v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-double v13, v13

    const-wide/high16 v15, 0x3ff8

    div-double/2addr v13, v15

    double-to-int v13, v13

    const/4 v14, 0x1

    invoke-static {v9, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 746
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v3

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff8

    div-double/2addr v12, v14

    double-to-int v12, v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-double v13, v13

    const-wide/high16 v15, 0x3ff8

    div-double/2addr v13, v15

    double-to-int v13, v13

    const/4 v14, 0x1

    invoke-static {v8, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 749
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v3

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff8

    div-double/2addr v12, v14

    double-to-int v12, v12

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-double v13, v13

    const-wide/high16 v15, 0x3ff8

    div-double/2addr v13, v15

    double-to-int v13, v13

    const/4 v14, 0x1

    invoke-static {v6, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 756
    :cond_96
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureWidth:F

    const/high16 v13, 0x4000

    div-float v1, v12, v13

    .line 759
    .local v1, canvasCursorX:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    const/high16 v13, 0x4040

    div-float/2addr v12, v13

    add-float v2, v12, p3

    .line 761
    .local v2, canvasCursorY:F
    const v12, -0xff0100

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1, v2, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v12

    if-eqz v12, :cond_14a

    .line 766
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v7

    .line 769
    .local v7, starIndex:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureWidth:F

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    mul-int/lit8 v13, v13, 0x5

    int-to-float v13, v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float v1, v12, v13

    .line 770
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    const/high16 v13, 0x4000

    mul-float/2addr v12, v13

    const/high16 v13, 0x4040

    div-float/2addr v12, v13

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    add-float v2, v12, p3

    .line 773
    const/4 v5, 0x0

    .line 775
    .local v5, numStarsTotal:I
    :goto_ef
    const/high16 v12, 0x3f80

    cmpl-float v12, v7, v12

    if-lez v12, :cond_107

    .line 776
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 777
    const/high16 v12, 0x3f80

    sub-float/2addr v7, v12

    .line 778
    add-int/lit8 v5, v5, 0x1

    .line 779
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v1, v12

    goto :goto_ef

    .line 782
    :cond_107
    const/high16 v12, 0x3f40

    cmpl-float v12, v7, v12

    if-lez v12, :cond_12d

    .line 783
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 790
    :goto_113
    add-int/lit8 v5, v5, 0x1

    .line 791
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v1, v12

    .line 793
    :goto_11b
    const/4 v12, 0x5

    if-ge v5, v12, :cond_141

    .line 794
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 795
    add-int/lit8 v5, v5, 0x1

    .line 796
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v1, v12

    goto :goto_11b

    .line 784
    :cond_12d
    const/high16 v12, 0x3e80

    cmpl-float v12, v7, v12

    if-lez v12, :cond_13a

    .line 785
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_113

    .line 787
    :cond_13a
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_113

    .line 799
    :cond_141
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 800
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 801
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 804
    .end local v5           #numStarsTotal:I
    .end local v7           #starIndex:F
    :cond_14a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v12

    if-eqz v12, :cond_1b7

    .line 805
    const v12, -0x777778

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 806
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigXSmallFontSize:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 808
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .local v10, stringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v4, v12, -0x3

    .local v4, i:I
    :goto_178
    if-lez v4, :cond_182

    .line 811
    const-string v12, ","

    invoke-virtual {v10, v4, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    add-int/lit8 v4, v4, -0x3

    goto :goto_178

    .line 814
    :cond_182
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureWidth:F

    const/high16 v13, 0x4000

    div-float v1, v12, v13

    .line 815
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigXSmallFontSize:F

    add-float/2addr v12, v13

    add-float/2addr v2, v12

    .line 817
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1, v2, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 820
    .end local v4           #i:I
    .end local v10           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_1b7
    return-void
.end method

.method private drawPage1(Landroid/graphics/Canvas;Lcom/google/android/finsky/exploreactivity/AppNode;F)V
    .registers 11
    .parameter "canvas"
    .parameter "appNode"
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x4000

    .line 831
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 832
    .local v3, textPaint:Landroid/graphics/Paint;
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 834
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigMediumFontSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 835
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 836
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 837
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDetailsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, detailsString:Ljava/lang/String;
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureWidth:F

    div-float v0, v4, v5

    .line 841
    .local v0, canvasCursorX:F
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    div-float/2addr v4, v5

    add-float v1, p3, v4

    .line 843
    .local v1, canvasCursorY:F
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 844
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigMediumFontSize:F

    add-float/2addr v1, v4

    .line 846
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4a

    .line 848
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 854
    :cond_49
    :goto_49
    return-void

    .line 850
    :cond_4a
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    if-ne v4, v6, :cond_49

    .line 851
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_49
.end method

.method private drawPage2(Landroid/graphics/Canvas;Lcom/google/android/finsky/exploreactivity/AppNode;F)V
    .registers 13
    .parameter "canvas"
    .parameter "appNode"
    .parameter "offset"

    .prologue
    const/high16 v8, 0x4000

    .line 866
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureWidth:F

    div-float v0, v6, v8

    .line 867
    .local v0, canvasCursorX:F
    move v1, p3

    .line 869
    .local v1, canvasCursorY:F
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 870
    .local v5, textPaint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 872
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigMediumFontSize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 873
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 874
    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 876
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, creator:Ljava/lang/String;
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureWidth:F

    invoke-direct {p0, v2, v5, v6}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->splitStringToLines(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/util/List;

    move-result-object v4

    .line 881
    .local v4, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_6a

    .line 890
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    div-float/2addr v6, v8

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigMediumFontSize:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 895
    :goto_41
    const/4 v3, 0x0

    .local v3, i:I
    :goto_42
    const/4 v6, 0x3

    if-ge v3, v6, :cond_68

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_68

    .line 896
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6, v0, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 897
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigMediumFontSize:F

    add-float/2addr v1, v6

    .line 895
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 883
    .end local v3           #i:I
    :pswitch_5a
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    div-float/2addr v6, v8

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigMediumFontSize:F

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 885
    goto :goto_41

    .line 887
    :pswitch_63
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    div-float/2addr v6, v8

    add-float/2addr v1, v6

    .line 888
    goto :goto_41

    .line 900
    .restart local v3       #i:I
    :cond_68
    return-void

    .line 881
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_63
    .end packed-switch
.end method

.method private findImageVacancy()I
    .registers 6

    .prologue
    .line 1325
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageVacancySize:I

    if-nez v3, :cond_19

    .line 1327
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1329
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    .line 1331
    .local v0, appNode:Lcom/google/android/finsky/exploreactivity/AppNode;
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getImageId()I

    move-result v3

    .line 1348
    .end local v0           #appNode:Lcom/google/android/finsky/exploreactivity/AppNode;
    :goto_18
    return v3

    .line 1337
    :cond_19
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    const/4 v3, 0x5

    if-ge v1, v3, :cond_42

    .line 1338
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1e
    const/16 v3, 0x8

    if-ge v2, v3, :cond_3f

    .line 1339
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageVacancy:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3c

    .line 1340
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageVacancy:[[Z

    aget-object v3, v3, v1

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    .line 1341
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageVacancySize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageVacancySize:I

    .line 1342
    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v2

    goto :goto_18

    .line 1338
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1337
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1348
    .end local v2           #j:I
    :cond_42
    const/4 v3, -0x1

    goto :goto_18
.end method

.method private findTextVacancy()I
    .registers 6

    .prologue
    .line 1359
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextVacancySize:I

    if-nez v3, :cond_19

    .line 1361
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1363
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    .line 1364
    .local v0, appNode:Lcom/google/android/finsky/exploreactivity/AppNode;
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getTextId()I

    move-result v3

    .line 1380
    .end local v0           #appNode:Lcom/google/android/finsky/exploreactivity/AppNode;
    :goto_18
    return v3

    .line 1369
    :cond_19
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    const/4 v3, 0x5

    if-ge v1, v3, :cond_42

    .line 1370
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1e
    const/16 v3, 0x8

    if-ge v2, v3, :cond_3f

    .line 1371
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextVacancy:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3c

    .line 1372
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextVacancy:[[Z

    aget-object v3, v3, v1

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    .line 1373
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextVacancySize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextVacancySize:I

    .line 1374
    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v2

    goto :goto_18

    .line 1370
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1369
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1380
    .end local v2           #j:I
    :cond_42
    const/4 v3, -0x1

    goto :goto_18
.end method

.method private loadBitmap(I)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "id"

    .prologue
    .line 1392
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1394
    .local v0, image:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private normalizeTextureCoord()V
    .registers 3

    .prologue
    const/high16 v1, 0x4480

    .line 1291
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1292
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1293
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1294
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1295
    return-void
.end method

.method private reverseFindSpaceChar(Ljava/lang/String;I)I
    .registers 6
    .parameter "string"
    .parameter "index"

    .prologue
    .line 940
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_f

    .line 941
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_c

    .line 945
    .end local v0           #i:I
    :goto_b
    return v0

    .line 940
    .restart local v0       #i:I
    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_f
    move v0, p2

    .line 945
    goto :goto_b
.end method

.method private splitStringToLines(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/util/List;
    .registers 12
    .parameter "string"
    .parameter "textPaint"
    .parameter "width"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            "F)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 912
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v3, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 915
    .local v4, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 917
    .local v2, endOfLineIndex:I
    :goto_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v5, v5, p3

    if-lez v5, :cond_3b

    .line 919
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, currString:Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2, v1, v5, p3, v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 921
    .local v0, breakTextIndex:I
    add-int/lit8 v5, v0, -0x1

    invoke-direct {p0, v1, v5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->reverseFindSpaceChar(Ljava/lang/String;I)I

    move-result v2

    .line 922
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 923
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 926
    .end local v0           #breakTextIndex:I
    .end local v1           #currString:Ljava/lang/String;
    :cond_3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    return-object v3
.end method


# virtual methods
.method public bind()V
    .registers 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureId:I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 417
    return-void
.end method

.method public bindImageTexture(Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 8
    .parameter "appNode"

    .prologue
    const/high16 v5, 0x4000

    .line 1157
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getImageState()Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    if-eq v2, v3, :cond_e

    .line 1158
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindDefaultImageTexture()V

    .line 1175
    :goto_d
    return-void

    .line 1164
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getImageId()I

    move-result v2

    div-int/lit8 v0, v2, 0x8

    .line 1165
    .local v0, i:I
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getImageId()I

    move-result v2

    rem-int/lit8 v1, v2, 0x8

    .line 1167
    .local v1, j:I
    int-to-float v2, v1

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1169
    int-to-float v2, v0

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1171
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1172
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1174
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->normalizeTextureCoord()V

    goto :goto_d
.end method

.method public bindInfoBoxDescriptionTexture()V
    .registers 3

    .prologue
    .line 1261
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1262
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureY:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1263
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1264
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1266
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->normalizeTextureCoord()V

    .line 1267
    return-void
.end method

.method public bindInfoBoxMetadataTexture(F)V
    .registers 4
    .parameter "scroll"

    .prologue
    .line 1250
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1251
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureY:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1253
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1254
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1256
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->normalizeTextureCoord()V

    .line 1257
    return-void
.end method

.method public bindInfoBoxTexture()V
    .registers 3

    .prologue
    .line 1226
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1227
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureY:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1228
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1229
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1231
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->normalizeTextureCoord()V

    .line 1232
    return-void
.end method

.method public bindInfoBoxTitleTexture()V
    .registers 3

    .prologue
    .line 1236
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1237
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureY:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1238
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1239
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1241
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->normalizeTextureCoord()V

    .line 1242
    return-void
.end method

.method public bindLineTexture(I)V
    .registers 4
    .parameter "lineNumber"

    .prologue
    .line 1135
    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 1136
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine1TextureX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1137
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine1TextureY:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1142
    :goto_11
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLineTextureSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1143
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLineTextureSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1145
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->normalizeTextureCoord()V

    .line 1146
    return-void

    .line 1139
    :cond_23
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine2TextureX:F

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1140
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine2TextureY:F

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    goto :goto_11
.end method

.method public bindNoTexture()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1281
    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1282
    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1283
    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1284
    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1285
    return-void
.end method

.method public bindTitleTexture(Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 9
    .parameter "appNode"

    .prologue
    const/high16 v6, 0x4000

    .line 1185
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getTextState()Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/exploreactivity/AppNode$TextState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    if-eq v2, v3, :cond_e

    .line 1186
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindDefaultTitleTexture()V

    .line 1202
    :goto_d
    return-void

    .line 1191
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getTextId()I

    move-result v2

    div-int/lit8 v0, v2, 0x8

    .line 1192
    .local v0, i:I
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getTextId()I

    move-result v2

    rem-int/lit8 v1, v2, 0x8

    .line 1194
    .local v1, j:I
    int-to-float v2, v1

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureWidth:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1196
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureY:F

    int-to-float v3, v0

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureHeight:F

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1198
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureWidth:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1199
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureHeight:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1201
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->normalizeTextureCoord()V

    goto :goto_d
.end method

.method public bindWhiteBoxTexture()V
    .registers 3

    .prologue
    .line 1271
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    .line 1272
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureY:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    .line 1273
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    .line 1274
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    .line 1276
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->normalizeTextureCoord()V

    .line 1277
    return-void
.end method

.method public getTextureBottomY()F
    .registers 2

    .prologue
    .line 1314
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY2:F

    return v0
.end method

.method public getTextureLeftX()F
    .registers 2

    .prologue
    .line 1299
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX1:F

    return v0
.end method

.method public getTextureRightX()F
    .registers 2

    .prologue
    .line 1304
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureX2:F

    return v0
.end method

.method public getTextureTopY()F
    .registers 2

    .prologue
    .line 1309
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureY1:F

    return v0
.end method

.method public initConfigVariables()V
    .registers 10

    .prologue
    const/high16 v8, 0x41a0

    const/high16 v7, 0x4080

    const/4 v6, 0x0

    const/high16 v5, 0x4000

    const v4, 0x44444000

    .line 274
    iput v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    .line 275
    iput v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    .line 276
    const/high16 v0, 0x42f8

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    .line 278
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_12c

    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureWidth:F

    .line 284
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureHeight:F

    .line 286
    const/high16 v0, 0x4420

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureY:F

    .line 288
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLineTextureSize:F

    .line 289
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine1TextureX:F

    .line 290
    const v0, 0x443f4000

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine1TextureY:F

    .line 291
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine2TextureX:F

    .line 292
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine2TextureY:F

    .line 294
    iput v8, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultImageTextureX:F

    .line 295
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultImageTextureY:F

    .line 297
    iput v8, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultTitleTextureX:F

    .line 298
    const v0, 0x44644000

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultTitleTextureY:F

    .line 300
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureHeight:F

    .line 302
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureHeight:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureWidth:F

    .line 303
    const/high16 v0, 0x4314

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureX:F

    .line 304
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureY:F

    .line 306
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureWidth:F

    .line 308
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureHeight:F

    .line 310
    const/high16 v0, 0x438a

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureX:F

    .line 311
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureY:F

    .line 313
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureWidth:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureWidth:F

    .line 315
    const/high16 v0, 0x438a

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureX:F

    .line 316
    const v0, 0x44634000

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureY:F

    .line 318
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureWidth:F

    .line 320
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    .line 322
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureHeight:F

    .line 323
    const/high16 v0, 0x4402

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureX:F

    .line 324
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureY:F

    .line 326
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureWidth:F

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureWidth:F

    .line 327
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureHeight:F

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureHeight:F

    .line 328
    const v0, 0x44228000

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureX:F

    .line 329
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureY:F

    .line 331
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLargeFontSize:F

    .line 334
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigMediumFontSize:F

    .line 337
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigSmallFontSize:F

    .line 340
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigXSmallFontSize:F

    .line 396
    :goto_12b
    return-void

    .line 344
    :cond_12c
    const/high16 v0, 0x42f0

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureWidth:F

    .line 346
    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureHeight:F

    .line 348
    const/high16 v0, 0x4420

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureY:F

    .line 350
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLineTextureSize:F

    .line 351
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine1TextureX:F

    .line 352
    const v0, 0x443f4000

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine1TextureY:F

    .line 353
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine2TextureX:F

    .line 354
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine2TextureY:F

    .line 356
    iput v8, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultImageTextureX:F

    .line 357
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultImageTextureY:F

    .line 359
    iput v8, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultTitleTextureX:F

    .line 360
    const v0, 0x44644000

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultTitleTextureY:F

    .line 362
    const/high16 v0, 0x42f0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureHeight:F

    .line 363
    const/high16 v0, 0x42f0

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureWidth:F

    .line 364
    const/high16 v0, 0x4314

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureX:F

    .line 365
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureY:F

    .line 367
    const/high16 v0, 0x4370

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureWidth:F

    .line 368
    const/high16 v0, 0x42f0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureHeight:F

    .line 369
    const/high16 v0, 0x438a

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureX:F

    .line 370
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureY:F

    .line 372
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureWidth:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureWidth:F

    .line 374
    const/high16 v0, 0x438a

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureX:F

    .line 375
    const v0, 0x44634000

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureY:F

    .line 377
    const/high16 v0, 0x42fc

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureWidth:F

    .line 378
    const/high16 v0, 0x429c

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    .line 379
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureHeight:F

    .line 380
    const/high16 v0, 0x4402

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureX:F

    .line 381
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureY:F

    .line 383
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureWidth:F

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureWidth:F

    .line 384
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureHeight:F

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureHeight:F

    .line 385
    const v0, 0x44228000

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureX:F

    .line 386
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureY:F

    .line 388
    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLargeFontSize:F

    .line 390
    const/high16 v0, 0x4198

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigMediumFontSize:F

    .line 392
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigSmallFontSize:F

    .line 394
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigXSmallFontSize:F

    goto/16 :goto_12b
.end method

.method public loadDefaultImage(I)V
    .registers 10
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 455
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 456
    .local v2, texture:Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    float-to-int v3, v3

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 460
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 461
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 463
    const/16 v3, 0xde1

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultImageTextureX:F

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultImageTextureY:F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3, v4, v5, v6, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 466
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 467
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 468
    return-void
.end method

.method public loadDefaultTitle(Ljava/lang/String;)V
    .registers 14
    .parameter "string"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xff

    .line 476
    iget v7, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureWidth:F

    float-to-int v7, v7

    iget v8, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureHeight:F

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 482
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v10, v11, v11, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 484
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 485
    .local v6, textPaint:Landroid/graphics/Paint;
    iget v7, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLargeFontSize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 486
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 487
    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 488
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 490
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v2, v7

    .line 491
    .local v2, canvasCursorX:F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v8

    sub-float v3, v7, v8

    .line 493
    .local v3, canvasCursorY:F
    invoke-virtual {v1, p1, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 495
    iget v7, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultTitleTextureX:F

    iget v8, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v4, v7, v8

    .line 496
    .local v4, offsetX:F
    iget v7, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigDefaultTitleTextureY:F

    iget v8, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v5, v7, v8

    .line 498
    .local v5, offsetY:F
    const/16 v7, 0xde1

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-static {v7, v11, v8, v9, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 500
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 502
    return-void
.end method

.method public loadInfoBox(Lcom/google/android/finsky/exploreactivity/AppNode;Z)V
    .registers 13
    .parameter "appNode"
    .parameter "highlightOn"

    .prologue
    .line 538
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureHeight:F

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 541
    .local v6, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 542
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz p2, :cond_4b

    .line 543
    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 548
    :goto_18
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 549
    .local v5, rectPaint:Landroid/graphics/Paint;
    const/high16 v1, -0x100

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureWidth:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureHeight:F

    iget v9, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    sub-float/2addr v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 555
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureX:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v7, v1, v2

    .line 556
    .local v7, offsetX:F
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureY:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v8, v1, v2

    .line 558
    .local v8, offsetY:F
    const/16 v1, 0xde1

    const/4 v2, 0x0

    float-to-int v3, v7

    float-to-int v4, v8

    invoke-static {v1, v2, v3, v4, v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 560
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 561
    return-void

    .line 545
    .end local v5           #rectPaint:Landroid/graphics/Paint;
    .end local v7           #offsetX:F
    .end local v8           #offsetY:F
    :cond_4b
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_18
.end method

.method public loadInfoBoxData(Lcom/google/android/finsky/exploreactivity/AppNode;I)V
    .registers 11
    .parameter "appNode"
    .parameter "page"

    .prologue
    const/4 v7, 0x0

    .line 614
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureWidth:F

    float-to-int v4, v4

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureHeight:F

    float-to-int v5, v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 616
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 617
    .local v1, canvas:Landroid/graphics/Canvas;
    const/high16 v4, -0x100

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 619
    packed-switch p2, :pswitch_data_4e

    .line 638
    :goto_1a
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureX:F

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v2, v4, v5

    .line 639
    .local v2, offsetX:F
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTextureY:F

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v3, v4, v5

    .line 641
    .local v3, offsetY:F
    const/16 v4, 0xde1

    const/4 v5, 0x0

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-static {v4, v5, v6, v7, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 643
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 645
    return-void

    .line 622
    .end local v2           #offsetX:F
    .end local v3           #offsetY:F
    :pswitch_32
    invoke-direct {p0, v1, p1, v7}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->drawPage0(Landroid/graphics/Canvas;Lcom/google/android/finsky/exploreactivity/AppNode;F)V

    .line 623
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    invoke-direct {p0, v1, p1, v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->drawPage1(Landroid/graphics/Canvas;Lcom/google/android/finsky/exploreactivity/AppNode;F)V

    goto :goto_1a

    .line 627
    :pswitch_3b
    invoke-direct {p0, v1, p1, v7}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->drawPage1(Landroid/graphics/Canvas;Lcom/google/android/finsky/exploreactivity/AppNode;F)V

    .line 628
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    invoke-direct {p0, v1, p1, v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->drawPage2(Landroid/graphics/Canvas;Lcom/google/android/finsky/exploreactivity/AppNode;F)V

    goto :goto_1a

    .line 632
    :pswitch_44
    invoke-direct {p0, v1, p1, v7}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->drawPage2(Landroid/graphics/Canvas;Lcom/google/android/finsky/exploreactivity/AppNode;F)V

    .line 633
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxMetadataTexturePageHeight:F

    invoke-direct {p0, v1, p1, v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->drawPage0(Landroid/graphics/Canvas;Lcom/google/android/finsky/exploreactivity/AppNode;F)V

    goto :goto_1a

    .line 619
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_32
        :pswitch_3b
        :pswitch_44
    .end packed-switch
.end method

.method public loadInfoBoxTitle(Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 15
    .parameter "appNode"

    .prologue
    .line 565
    iget v9, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureWidth:F

    float-to-int v9, v9

    iget v10, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureHeight:F

    float-to-int v10, v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 570
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 571
    .local v1, canvas:Landroid/graphics/Canvas;
    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 573
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 574
    .local v8, textPaint:Landroid/graphics/Paint;
    iget v9, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLargeFontSize:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 575
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 576
    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 579
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v10

    sub-float v3, v9, v10

    .line 581
    .local v3, canvasCursorY:F
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    iget v10, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureWidth:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7b

    .line 583
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 585
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v2, v9

    .line 587
    .local v2, canvasCursorX:F
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 599
    :goto_66
    iget v9, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureX:F

    iget v10, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v5, v9, v10

    .line 600
    .local v5, offsetX:F
    iget v9, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureY:F

    iget v10, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v6, v9, v10

    .line 602
    .local v6, offsetY:F
    const/16 v9, 0xde1

    const/4 v10, 0x0

    float-to-int v11, v5

    float-to-int v12, v6

    invoke-static {v9, v10, v11, v12, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 604
    return-void

    .line 589
    .end local v2           #canvasCursorX:F
    .end local v5           #offsetX:F
    .end local v6           #offsetY:F
    :cond_7b
    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 590
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    iget v11, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTitleTextureWidth:F

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 592
    .local v4, endOfStringIndex:I
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    add-int/lit8 v11, v4, -0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 594
    .local v7, stringToBeDrawn:Ljava/lang/String;
    const/4 v2, 0x0

    .line 596
    .restart local v2       #canvasCursorX:F
    const-string v9, "..."

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_66
.end method

.method public loadInfoDescription(Lcom/google/android/finsky/exploreactivity/AppNode;Z)V
    .registers 23
    .parameter "appNode"
    .parameter "highlightOn"

    .prologue
    .line 655
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureWidth:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureHeight:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 658
    .local v8, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 659
    .local v2, canvas:Landroid/graphics/Canvas;
    if-eqz p2, :cond_d5

    .line 660
    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 665
    :goto_1c
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 666
    .local v7, rectPaint:Landroid/graphics/Paint;
    const/high16 v3, -0x100

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 668
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    move/from16 v19, v0

    sub-float v6, v6, v19

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 672
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 673
    .local v18, textPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigSmallFontSize:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 674
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 675
    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 676
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 680
    .local v10, description:Ljava/lang/String;
    const/16 v3, 0xa

    const/16 v4, 0x20

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 682
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxTextureWidth:F

    const/high16 v4, 0x41c0

    div-float v17, v3, v4

    .line 683
    .local v17, textBorder:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureWidth:F

    const/high16 v4, 0x4000

    mul-float v4, v4, v17

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->splitStringToLines(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/util/List;

    move-result-object v11

    .line 686
    .local v11, descriptionLines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureHeight:F

    const/high16 v4, 0x4080

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a0

    div-float v9, v3, v4

    .line 689
    .local v9, canvasCursorY:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_aa
    const/4 v3, 0x4

    if-ge v12, v3, :cond_db

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v12, v3, :cond_db

    .line 690
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v3, v0, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 691
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureHeight:F

    const/high16 v4, 0x4080

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a0

    div-float/2addr v3, v4

    add-float/2addr v9, v3

    .line 689
    add-int/lit8 v12, v12, 0x1

    goto :goto_aa

    .line 662
    .end local v7           #rectPaint:Landroid/graphics/Paint;
    .end local v9           #canvasCursorY:F
    .end local v10           #description:Ljava/lang/String;
    .end local v11           #descriptionLines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #i:I
    .end local v17           #textBorder:F
    .end local v18           #textPaint:Landroid/graphics/Paint;
    :cond_d5
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1c

    .line 695
    .restart local v7       #rectPaint:Landroid/graphics/Paint;
    .restart local v9       #canvasCursorY:F
    .restart local v10       #description:Ljava/lang/String;
    .restart local v11       #descriptionLines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12       #i:I
    .restart local v17       #textBorder:F
    .restart local v18       #textPaint:Landroid/graphics/Paint;
    :cond_db
    const/4 v14, 0x4

    .line 697
    .local v14, lastStringLineNum:I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v3, v14, :cond_ea

    .line 698
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    .line 701
    :cond_ea
    const/4 v12, 0x0

    :goto_eb
    const/4 v3, 0x3

    if-ge v12, v3, :cond_12a

    .line 702
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 704
    .local v13, lastString:Ljava/lang/String;
    const-string v3, "..."

    invoke-virtual {v13, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureWidth:F

    const/high16 v5, 0x4000

    mul-float v5, v5, v17

    sub-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_14c

    .line 706
    const-string v3, "..."

    invoke-virtual {v13, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v3, v0, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 711
    .end local v13           #lastString:Ljava/lang/String;
    :cond_12a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v15, v3, v4

    .line 712
    .local v15, offsetX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigInfoboxDescriptionTextureY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v16, v3, v4

    .line 714
    .local v16, offsetY:F
    const/16 v3, 0xde1

    const/4 v4, 0x0

    float-to-int v5, v15

    move/from16 v0, v16

    float-to-int v6, v0

    invoke-static {v3, v4, v5, v6, v8}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 716
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 718
    return-void

    .line 701
    .end local v15           #offsetX:F
    .end local v16           #offsetY:F
    .restart local v13       #lastString:Ljava/lang/String;
    :cond_14c
    add-int/lit8 v12, v12, 0x1

    goto :goto_eb
.end method

.method public loadLineTexture(II)V
    .registers 12
    .parameter "id"
    .parameter "lineNumber"

    .prologue
    const/16 v8, 0xde1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 428
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 430
    .local v2, texture:Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLineTextureSize:F

    float-to-int v3, v3

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLineTextureSize:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 434
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 435
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 436
    const/4 v3, 0x1

    if-ne p2, v3, :cond_30

    .line 437
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine1TextureX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine1TextureY:F

    float-to-int v4, v4

    invoke-static {v8, v7, v3, v4, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 443
    :goto_29
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 444
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 446
    return-void

    .line 440
    :cond_30
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine2TextureX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLine2TextureY:F

    float-to-int v4, v4

    invoke-static {v8, v7, v3, v4, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    goto :goto_29
.end method

.method public loadQueuedTexture()V
    .registers 24

    .prologue
    .line 996
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mNumFramesPassed:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mNumFramesPassed:I

    .line 998
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mNumFramesPassed:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    .line 1125
    :cond_1c
    :goto_1c
    return-void

    .line 1002
    :cond_1d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mNumFramesPassed:I

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mSubTextureQueue:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/finsky/exploreactivity/SubTexture;

    .line 1009
    .local v18, textureSubImage:Lcom/google/android/finsky/exploreactivity/SubTexture;
    if-eqz v18, :cond_1c

    .line 1012
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->isImageTexture()Z

    move-result v19

    if-eqz v19, :cond_11c

    .line 1015
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->findImageVacancy()I

    move-result v11

    .line 1018
    .local v11, imageId:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_5a

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mSubTextureQueue:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1021
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/exploreactivity/AppNode;->setImageId(I)V

    goto :goto_1c

    .line 1025
    :cond_5a
    div-int/lit8 v10, v11, 0x8

    .line 1026
    .local v10, i:I
    rem-int/lit8 v12, v11, 0x8

    .line 1028
    .local v12, j:I
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v19

    sget-object v20, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/finsky/exploreactivity/AppNode;->setImageState(Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;)V

    .line 1029
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/exploreactivity/AppNode;->setImageId(I)V

    .line 1031
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    move/from16 v19, v0

    const/high16 v20, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    int-to-float v0, v12

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    move/from16 v20, v0

    add-float v13, v19, v20

    .line 1033
    .local v13, offsetX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    move/from16 v19, v0

    const/high16 v20, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    int-to-float v0, v10

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    move/from16 v20, v0

    add-float v14, v19, v20

    .line 1036
    .local v14, offsetY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigImageTextureSize:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1039
    .local v5, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1041
    .local v6, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v7, v0

    .line 1043
    .local v7, canvasCursorX:F
    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v8, v0

    .line 1046
    .local v8, canvasCursorY:F
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v7, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1048
    const/16 v19, 0xde1

    const/16 v20, 0x0

    float-to-int v0, v13

    move/from16 v21, v0

    float-to-int v0, v14

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v5}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 1051
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1c

    .line 1056
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v7           #canvasCursorX:F
    .end local v8           #canvasCursorY:F
    .end local v10           #i:I
    .end local v11           #imageId:I
    .end local v12           #j:I
    .end local v13           #offsetX:F
    .end local v14           #offsetY:F
    :cond_11c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->findTextVacancy()I

    move-result v16

    .line 1059
    .local v16, textId:I
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_137

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mSubTextureQueue:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 1065
    :cond_137
    div-int/lit8 v10, v16, 0x8

    .line 1066
    .restart local v10       #i:I
    rem-int/lit8 v12, v16, 0x8

    .line 1068
    .restart local v12       #j:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureWidth:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureHeight:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1072
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1073
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    const/16 v19, 0xff

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1075
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 1076
    .local v17, textPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigLargeFontSize:F

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1077
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1078
    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    const/16 v22, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1081
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v20

    sub-float v8, v19, v20

    .line 1083
    .restart local v8       #canvasCursorY:F
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureWidth:F

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_265

    .line 1086
    sget-object v19, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1088
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v7, v0

    .line 1090
    .restart local v7       #canvasCursorX:F
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v7, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1107
    :goto_1f1
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v19

    sget-object v20, Lcom/google/android/finsky/exploreactivity/AppNode$TextState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/finsky/exploreactivity/AppNode;->setTextState(Lcom/google/android/finsky/exploreactivity/AppNode$TextState;)V

    .line 1108
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->setTextId(I)V

    .line 1110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureWidth:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v20, v20, v21

    add-float v19, v19, v20

    int-to-float v0, v12

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    move/from16 v20, v0

    add-float v13, v19, v20

    .line 1113
    .restart local v13       #offsetX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureHeight:F

    move/from16 v20, v0

    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    move/from16 v20, v0

    add-float v14, v19, v20

    .line 1116
    .restart local v14       #offsetY:F
    const/16 v19, 0xde1

    const/16 v20, 0x0

    float-to-int v0, v13

    move/from16 v21, v0

    float-to-int v0, v14

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v5}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 1119
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1c

    .line 1094
    .end local v7           #canvasCursorX:F
    .end local v13           #offsetX:F
    .end local v14           #offsetY:F
    :cond_265
    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1095
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigTitleTextureWidth:F

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v9

    .line 1098
    .local v9, endOfStringIndex:I
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    add-int/lit8 v21, v9, -0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1101
    .local v15, stringToBeDrawn:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1103
    .restart local v7       #canvasCursorX:F
    const-string v19, "..."

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v7, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1f1
.end method

.method public loadWhiteBox()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/16 v4, 0xff

    .line 508
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureHeight:F

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 511
    .local v6, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 512
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 514
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 515
    .local v5, rectPaint:Landroid/graphics/Paint;
    invoke-virtual {v5, v4, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 517
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureWidth:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureHeight:F

    iget v9, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigBorderThickness:F

    sub-float/2addr v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 521
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureX:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v7, v1, v2

    .line 522
    .local v7, offsetX:F
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigWhiteboxTextureY:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mConfigArtifactBorderThickness:F

    add-float v8, v1, v2

    .line 524
    .local v8, offsetY:F
    const/16 v1, 0xde1

    float-to-int v2, v7

    float-to-int v3, v8

    invoke-static {v1, v10, v2, v3, v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 526
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 528
    return-void
.end method

.method public queueAppNodeImage(Landroid/graphics/Bitmap;Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 5
    .parameter "texture"
    .parameter "appNode"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 959
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 961
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    invoke-virtual {p2, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->setImageState(Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;)V

    .line 968
    :goto_12
    return-void

    .line 965
    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mSubTextureQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/finsky/exploreactivity/SubTexture;

    invoke-direct {v1, p1, p2}, Lcom/google/android/finsky/exploreactivity/SubTexture;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/finsky/exploreactivity/AppNode;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 966
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->QUEUED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    invoke-virtual {p2, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->setImageState(Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;)V

    goto :goto_12
.end method

.method public queueAppNodeTitle(Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 5
    .parameter "appNode"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 980
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 982
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$TextState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->setTextState(Lcom/google/android/finsky/exploreactivity/AppNode$TextState;)V

    .line 988
    :goto_12
    return-void

    .line 985
    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mSubTextureQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/finsky/exploreactivity/SubTexture;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/android/finsky/exploreactivity/SubTexture;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/finsky/exploreactivity/AppNode;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 986
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$TextState;->QUEUED:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->setTextState(Lcom/google/android/finsky/exploreactivity/AppNode$TextState;)V

    goto :goto_12
.end method

.method public removeTexture(Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 5
    .parameter "appNode"

    .prologue
    .line 1405
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getImageState()Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    if-ne v1, v2, :cond_d

    .line 1407
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mImageCache:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1411
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getTextState()Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/exploreactivity/AppNode$TextState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    if-ne v1, v2, :cond_1a

    .line 1413
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextCache:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1417
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getImageState()Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->QUEUED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    if-eq v1, v2, :cond_2a

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getTextState()Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/exploreactivity/AppNode$TextState;->QUEUED:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    if-ne v1, v2, :cond_4b

    .line 1420
    :cond_2a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2b
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mSubTextureQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 1421
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mSubTextureQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/SubTexture;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/SubTexture;->getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v1

    if-ne v1, p1, :cond_48

    .line 1422
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mSubTextureQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1423
    add-int/lit8 v0, v0, -0x1

    .line 1420
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1427
    .end local v0           #i:I
    :cond_4b
    return-void
.end method

.method public setFilters(II)V
    .registers 7
    .parameter "minFilter"
    .parameter "magFilter"

    .prologue
    const/16 v3, 0xde1

    .line 405
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mTextureId:I

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 406
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mMinFilter:I

    .line 407
    iput p2, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mMagFilter:I

    .line 408
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2801

    int-to-float v2, p1

    invoke-interface {v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 409
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2800

    int-to-float v2, p2

    invoke-interface {v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 410
    return-void
.end method
