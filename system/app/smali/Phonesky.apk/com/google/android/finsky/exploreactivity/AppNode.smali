.class public Lcom/google/android/finsky/exploreactivity/AppNode;
.super Ljava/lang/Object;
.source "AppNode.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;,
        Lcom/google/android/finsky/exploreactivity/AppNode$TextState;,
        Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;,
        Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# static fields
.field private static sConfigRadius:I

.field private static sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;


# instance fields
.field private drawLineWithPrimaryTexture:Z

.field private mAlpha:F

.field private mAlphaAnimationState:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/AppNode;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenCreated:Z

.field private mChildrenExpanded:Z

.field private mDataLoaded:Z

.field private mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDirection:Lcom/google/android/finsky/exploreactivity/Vector;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mHighlightOn:Z

.field private mIconImageBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

.field private mImageId:I

.field private volatile mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

.field private mInverseCenterScore:F

.field private mIsExpandingOrCollapsing:Z

.field private mMaxNumChildren:I

.field private mPageNum:I

.field private final mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

.field private mPushAnimationOffsetX:F

.field private mPushAnimationOffsetY:F

.field private mPushPercentage:F

.field private mRelatedAppDocs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mRelativeAngle:F

.field private mRotationSpeed:F

.field private mScale:F

.field private mTextId:I

.field private mTextState:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

.field private mTrueAlpha:F

.field private mTrueRelativeAngle:F

.field private mTrueX:F

.field private mTrueY:F

.field private mX:F

.field private mY:F


# direct methods
.method private constructor <init>(FLcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .registers 13
    .parameter "angle"
    .parameter "parent"
    .parameter "doc"
    .parameter "dfeApi"
    .parameter "bitmapLoader"

    .prologue
    .line 309
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/AppNode;-><init>(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;I)V

    .line 312
    const/high16 v0, 0x4334

    div-float v0, p1, v0

    const v1, 0x40490fdb

    mul-float v6, v0, v1

    .line 314
    .local v6, radians:F
    float-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sget v2, Lcom/google/android/finsky/exploreactivity/AppNode;->sConfigRadius:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    .line 315
    float-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sget v2, Lcom/google/android/finsky/exploreactivity/AppNode;->sConfigRadius:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    .line 317
    new-instance v0, Lcom/google/android/finsky/exploreactivity/Vector;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    iget v2, p2, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    iget v3, p2, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDirection:Lcom/google/android/finsky/exploreactivity/Vector;

    .line 319
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;I)V
    .registers 12
    .parameter "doc"
    .parameter "dfeApi"
    .parameter "bitmapLoader"
    .parameter "radius"

    .prologue
    const/4 v6, 0x0

    .line 286
    const/4 v1, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/AppNode;-><init>(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;I)V

    .line 288
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    .line 289
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenExpanded:Z

    .line 293
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    .line 295
    sput p4, Lcom/google/android/finsky/exploreactivity/AppNode;->sConfigRadius:I

    .line 296
    return-void
.end method

.method private constructor <init>(Lcom/google/android/finsky/exploreactivity/AppNode;FLcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .registers 13
    .parameter "parent"
    .parameter "relativeAngle"
    .parameter "doc"
    .parameter "dfeApi"
    .parameter "bitmapLoader"

    .prologue
    .line 333
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/AppNode;-><init>(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;I)V

    .line 335
    iput p2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    .line 336
    iput p2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    .line 337
    iget-object v0, p1, Lcom/google/android/finsky/exploreactivity/AppNode;->mDirection:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/Vector;->cpy()Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/exploreactivity/Vector;->rotate(F)Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v6

    .line 339
    .local v6, newDirection:Lcom/google/android/finsky/exploreactivity/Vector;
    iget v0, p1, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    .line 340
    iget v0, p1, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    .line 342
    iput-object v6, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDirection:Lcom/google/android/finsky/exploreactivity/Vector;

    .line 344
    return-void
.end method

.method private constructor <init>(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;I)V
    .registers 10
    .parameter "parent"
    .parameter "doc"
    .parameter "dfeApi"
    .parameter "bitmapLoader"
    .parameter "maxNumChildren"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenCreated:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    .line 91
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushAnimationOffsetX:F

    .line 92
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushAnimationOffsetY:F

    .line 98
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    .line 118
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRotationSpeed:F

    .line 124
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIsExpandingOrCollapsing:Z

    .line 130
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenExpanded:Z

    .line 147
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    .line 153
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    .line 156
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mScale:F

    .line 167
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDataLoaded:Z

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    .line 206
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    .line 212
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$TextState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTextState:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    .line 214
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    .line 244
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mHighlightOn:Z

    .line 357
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    .line 358
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 359
    iput-object p3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 360
    iput-object p4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 361
    iput p5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mMaxNumChildren:I

    .line 363
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_69

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rec?c=3&rt=1&doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getList(Ljava/lang/String;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 371
    :cond_68
    :goto_68
    return-void

    .line 365
    :cond_69
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8f

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rec?c=4&rt=1&doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getList(Ljava/lang/String;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_68

    .line 367
    :cond_8f
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_68

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rec?c=1&rt=1&doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getList(Ljava/lang/String;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_68
.end method

.method static synthetic access$000(Lcom/google/android/finsky/exploreactivity/AppNode;)Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;)Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIconImageBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;)Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    return-object p1
.end method

.method private createChildren(IFF)V
    .registers 12
    .parameter "numberOfChildren"
    .parameter "offset"
    .parameter "halfRange"

    .prologue
    .line 590
    sub-float v2, p2, p3

    .line 591
    .local v2, relativeAngle:F
    const/high16 v0, 0x4000

    mul-float/2addr v0, p3

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 593
    .local v6, angleBetweenNodes:F
    const/4 v7, 0x0

    .local v7, i:I
    :goto_b
    if-ge v7, p1, :cond_26

    .line 594
    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/AppNode;-><init>(Lcom/google/android/finsky/exploreactivity/AppNode;FLcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->addChild(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 596
    add-float/2addr v2, v6

    .line 593
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 599
    :cond_26
    return-void
.end method

.method private getSecondLevelAppNodeAngles(II)F
    .registers 11
    .parameter "appNum"
    .parameter "totalAppNum"

    .prologue
    const/high16 v7, 0x43b4

    .line 384
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 388
    .local v2, randomNumGen:Ljava/util/Random;
    int-to-float v5, p1

    mul-float/2addr v5, v7

    int-to-float v6, p2

    div-float v4, v5, v6

    .line 389
    .local v4, rangeStart:F
    int-to-float v5, p2

    div-float v3, v7, v5

    .line 395
    .local v3, range:F
    const v1, 0x3dcccccd

    .line 397
    .local v1, percentageVariance:F
    const/high16 v5, 0x3f80

    sub-float/2addr v5, v1

    mul-float/2addr v5, v3

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v6, v3

    mul-float/2addr v6, v1

    add-float v0, v5, v6

    .line 400
    .local v0, angle:F
    return v0
.end method

.method private pushIn(FLcom/google/android/finsky/exploreactivity/Vector;)Z
    .registers 7
    .parameter "deltaTime"
    .parameter "direction"

    .prologue
    const/4 v3, 0x0

    .line 932
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_9

    .line 933
    const/4 v1, 0x1

    .line 946
    :goto_8
    return v1

    .line 935
    :cond_9
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    const v2, 0x3eb33333

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    .line 936
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1a

    .line 937
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    .line 941
    :cond_1a
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/Vector;->cpy()Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v0

    .line 943
    .local v0, tempDirection:Lcom/google/android/finsky/exploreactivity/Vector;
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushAnimationOffsetX:F

    .line 944
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushAnimationOffsetY:F

    .line 946
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private pushOut(FLcom/google/android/finsky/exploreactivity/Vector;)Z
    .registers 7
    .parameter "deltaTime"
    .parameter "direction"

    .prologue
    const v3, 0x3e1eb852

    .line 905
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_b

    .line 906
    const/4 v1, 0x1

    .line 919
    :goto_a
    return v1

    .line 908
    :cond_b
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    const v2, 0x3eb33333

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    .line 909
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1c

    .line 910
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    .line 914
    :cond_1c
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/Vector;->cpy()Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushPercentage:F

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v0

    .line 916
    .local v0, tempDirection:Lcom/google/android/finsky/exploreactivity/Vector;
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushAnimationOffsetX:F

    .line 917
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushAnimationOffsetY:F

    .line 919
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static setTextureAtlas(Lcom/google/android/finsky/exploreactivity/TextureAtlas;)V
    .registers 1
    .parameter "textureAtlas"

    .prologue
    .line 1037
    sput-object p0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    .line 1038
    return-void
.end method

.method private square(F)F
    .registers 3
    .parameter "number"

    .prologue
    .line 758
    mul-float v0, p1, p1

    return v0
.end method


# virtual methods
.method public addChild(Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    return-void
.end method

.method public collapseChildren()V
    .registers 7

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasParent()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 822
    iget-boolean v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenExpanded:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_52

    .line 824
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 825
    .local v3, numberOfChildrenPerSide:I
    const/high16 v4, 0x4220

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 827
    .local v2, increaseInDegreesBetweenNodes:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    if-ge v1, v3, :cond_4f

    .line 828
    const/high16 v4, 0x41a0

    int-to-float v5, v1

    mul-float/2addr v5, v2

    sub-float v0, v4, v5

    .line 829
    .local v0, degreesToRotate:F
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget v5, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    add-float/2addr v5, v0

    iput v5, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    .line 830
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget v5, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    sub-float/2addr v5, v0

    iput v5, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    .line 827
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 832
    .end local v0           #degreesToRotate:F
    :cond_4f
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenExpanded:Z

    .line 834
    .end local v1           #i:I
    .end local v2           #increaseInDegreesBetweenNodes:F
    .end local v3           #numberOfChildrenPerSide:I
    :cond_52
    return-void
.end method

.method public createChildren(Ljava/util/Set;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, existingNodes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/high16 v2, 0x4220

    const v1, 0x3dcccccd

    const/4 v12, 0x1

    .line 477
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDataLoaded:Z

    if-eqz v0, :cond_3a

    .line 480
    const/4 v7, 0x0

    .local v7, i:I
    :goto_c
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_30

    .line 481
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 482
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 483
    add-int/lit8 v7, v7, -0x1

    .line 480
    :cond_2d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 488
    :cond_30
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3b

    .line 489
    iput-boolean v12, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenCreated:Z

    .line 576
    .end local v7           #i:I
    :cond_3a
    :goto_3a
    return-void

    .line 494
    .restart local v7       #i:I
    :cond_3b
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-nez v0, :cond_8b

    .line 496
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mMaxNumChildren:I

    if-ge v0, v1, :cond_51

    .line 497
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mMaxNumChildren:I

    .line 500
    :cond_51
    const/4 v7, 0x0

    :goto_52
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_e2

    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mMaxNumChildren:I

    if-ge v7, v0, :cond_e2

    .line 502
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mMaxNumChildren:I

    invoke-direct {p0, v7, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getSecondLevelAppNodeAngles(II)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/AppNode;-><init>(FLcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->addChild(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 500
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 509
    :cond_8b
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    .line 511
    .local v10, randomNumGen:Ljava/util/Random;
    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v9

    .line 518
    .local v9, randomNum:F
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_ee

    .line 520
    const v11, 0x3ee66666

    .line 527
    .local v11, threshold:F
    :goto_a1
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-eqz v0, :cond_b4

    .line 529
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_f2

    .line 531
    add-float/2addr v11, v1

    .line 541
    :cond_b4
    :goto_b4
    const/high16 v0, 0x3f00

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float v8, v0, v2

    .line 546
    .local v8, offset:F
    cmpg-float v0, v9, v11

    if-lez v0, :cond_cf

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v12, :cond_f4

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-eqz v0, :cond_f4

    .line 550
    :cond_cf
    const/4 v0, 0x0

    invoke-direct {p0, v12, v8, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->createChildren(IFF)V

    .line 551
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v8           #offset:F
    .end local v9           #randomNum:F
    .end local v10           #randomNumGen:Ljava/util/Random;
    .end local v11           #threshold:F
    :cond_e2
    :goto_e2
    iput-boolean v12, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenCreated:Z

    .line 573
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    goto/16 :goto_3a

    .line 524
    .restart local v9       #randomNum:F
    .restart local v10       #randomNumGen:Ljava/util/Random;
    :cond_ee
    const v11, 0x3e19999a

    .restart local v11       #threshold:F
    goto :goto_a1

    .line 535
    :cond_f2
    sub-float/2addr v11, v1

    goto :goto_b4

    .line 556
    .restart local v8       #offset:F
    :cond_f4
    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float v6, v0, v2

    .line 559
    .local v6, halfRange:F
    const/high16 v0, 0x41a0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_102

    .line 560
    const/high16 v6, 0x41a0

    .line 563
    :cond_102
    const/high16 v0, 0x41f0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_10a

    .line 564
    const/high16 v6, 0x41f0

    .line 567
    :cond_10a
    const/4 v0, 0x2

    invoke-direct {p0, v0, v8, v6}, Lcom/google/android/finsky/exploreactivity/AppNode;->createChildren(IFF)V

    .line 568
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e2
.end method

.method public disposeTexture()V
    .registers 3

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    if-ne v0, v1, :cond_b

    .line 1091
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIconImageBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 1095
    :cond_b
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->removeTexture(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 1096
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIconImageBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 1098
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    .line 1099
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$TextState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTextState:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    .line 1100
    return-void
.end method

.method public expandChildren()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x41a0

    .line 778
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-eqz v4, :cond_9c

    iget-boolean v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenExpanded:Z

    if-nez v4, :cond_9c

    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasCreatedChildren()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 781
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_9a

    .line 782
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 783
    .local v3, numberOfChildrenPerSide:I
    const/high16 v4, 0x4220

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 785
    .local v2, increaseInDegreesBetweenNodes:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f
    if-ge v1, v3, :cond_9a

    .line 787
    int-to-float v4, v1

    mul-float/2addr v4, v2

    sub-float v0, v7, v4

    .line 791
    .local v0, degreesToRotate:F
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget v5, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    sub-float/2addr v5, v0

    iput v5, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    .line 794
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget v5, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    add-float/2addr v5, v0

    iput v5, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    .line 797
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget v4, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mRotationSpeed:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_97

    .line 798
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/exploreactivity/AppNode;

    div-float v5, v0, v7

    const/high16 v6, 0x41f0

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mRotationSpeed:F

    .line 800
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget v5, v5, Lcom/google/android/finsky/exploreactivity/AppNode;->mRotationSpeed:F

    iput v5, v4, Lcom/google/android/finsky/exploreactivity/AppNode;->mRotationSpeed:F

    .line 785
    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 809
    .end local v0           #degreesToRotate:F
    .end local v1           #i:I
    .end local v2           #increaseInDegreesBetweenNodes:F
    .end local v3           #numberOfChildrenPerSide:I
    :cond_9a
    iput-boolean v8, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenExpanded:Z

    .line 811
    :cond_9c
    return-void
.end method

.method public fadeIn()V
    .registers 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlphaAnimationState:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;->FADE_NONE:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    if-ne v0, v1, :cond_9

    .line 666
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    .line 670
    :cond_9
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;->FADE_IN:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlphaAnimationState:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    .line 672
    return-void
.end method

.method public fadeOut()V
    .registers 2

    .prologue
    .line 682
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    .line 684
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;->FADE_OUT:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlphaAnimationState:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    .line 685
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/AppNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1237
    :cond_1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1239
    :goto_27
    return-object v0

    :cond_28
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method public getDetailsString(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    if-ne v0, v1, :cond_18

    .line 1250
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1259
    :goto_17
    return-object v0

    .line 1252
    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 1253
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1254
    :cond_2c
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_40

    .line 1255
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1256
    :cond_40
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    .line 1257
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1259
    :cond_5d
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getDoc()Lcom/google/android/finsky/api/model/Document;
    .registers 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getImageId()I
    .registers 2

    .prologue
    .line 1123
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageId:I

    return v0
.end method

.method public getImageState()Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;
    .registers 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    return-object v0
.end method

.method public getInverseCenterScore()F
    .registers 2

    .prologue
    .line 655
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mInverseCenterScore:F

    return v0
.end method

.method public getParent()Lcom/google/android/finsky/exploreactivity/AppNode;
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 647
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mScale:F

    return v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 1107
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTextId:I

    return v0
.end method

.method public getTextState()Lcom/google/android/finsky/exploreactivity/AppNode$TextState;
    .registers 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTextState:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    return-object v0
.end method

.method public getX()F
    .registers 2

    .prologue
    .line 431
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mX:F

    return v0
.end method

.method public getY()F
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mY:F

    return v0
.end method

.method public hasCreatedChildren()Z
    .registers 2

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenCreated:Z

    return v0
.end method

.method public hasExpandedChildren()Z
    .registers 2

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildrenExpanded:Z

    return v0
.end method

.method public hasParent()Z
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-nez v0, :cond_6

    .line 628
    const/4 v0, 0x0

    .line 630
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isExpandingOrCollapsing()Z
    .registers 2

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIsExpandingOrCollapsing:Z

    return v0
.end method

.method public isFading()Z
    .registers 3

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlphaAnimationState:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;->FADE_NONE:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    if-ne v0, v1, :cond_8

    .line 699
    const/4 v0, 0x0

    .line 701
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isInBoundaries(FFFF)Z
    .registers 6
    .parameter "x1"
    .parameter "x2"
    .parameter "y1"
    .parameter "y2"

    .prologue
    .line 449
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1a

    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1a

    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1a

    iget v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_1a

    .line 450
    const/4 v0, 0x1

    .line 452
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public loadButtonHighlight()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1175
    iput-boolean v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mHighlightOn:Z

    .line 1176
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoBox(Lcom/google/android/finsky/exploreactivity/AppNode;Z)V

    .line 1177
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoDescription(Lcom/google/android/finsky/exploreactivity/AppNode;Z)V

    .line 1178
    return-void
.end method

.method public loadDescription()V
    .registers 5

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    if-ne v0, v1, :cond_1f

    .line 1198
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/exploreactivity/AppNode$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/exploreactivity/AppNode$2;-><init>(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    new-instance v3, Lcom/google/android/finsky/exploreactivity/AppNode$3;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/exploreactivity/AppNode$3;-><init>(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 1219
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    .line 1222
    :cond_1f
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->RECIEVED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    if-ne v0, v1, :cond_37

    .line 1223
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    iget-boolean v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mHighlightOn:Z

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoDescription(Lcom/google/android/finsky/exploreactivity/AppNode;Z)V

    .line 1224
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPageNum:I

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoBoxData(Lcom/google/android/finsky/exploreactivity/AppNode;I)V

    .line 1225
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    .line 1227
    :cond_37
    return-void
.end method

.method public loadInfoBox()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1156
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoBox(Lcom/google/android/finsky/exploreactivity/AppNode;Z)V

    .line 1157
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoBoxTitle(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 1158
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoBoxData(Lcom/google/android/finsky/exploreactivity/AppNode;I)V

    .line 1159
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoDescription(Lcom/google/android/finsky/exploreactivity/AppNode;Z)V

    .line 1160
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPageNum:I

    .line 1161
    return-void
.end method

.method public loadPage(I)V
    .registers 3
    .parameter "pageNum"

    .prologue
    .line 1169
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPageNum:I

    .line 1170
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoBoxData(Lcom/google/android/finsky/exploreactivity/AppNode;I)V

    .line 1171
    return-void
.end method

.method public loadTexture()V
    .registers 7

    .prologue
    const/16 v4, 0x7c

    .line 1044
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    if-ne v0, v1, :cond_2f

    .line 1047
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->queueAppNodeTitle(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 1050
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/exploreactivity/AppNode$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/exploreactivity/AppNode$1;-><init>(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIconImageBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 1067
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIconImageBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_41

    .line 1069
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    .line 1079
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->RECIEVED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    if-ne v0, v1, :cond_40

    .line 1081
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIconImageBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->queueAppNodeImage(Landroid/graphics/Bitmap;Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 1084
    :cond_40
    return-void

    .line 1073
    :cond_41
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIconImageBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->queueAppNodeImage(Landroid/graphics/Bitmap;Lcom/google/android/finsky/exploreactivity/AppNode;)V

    goto :goto_2f
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 427
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)V
    .registers 8
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    .line 411
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocCount()I

    move-result v4

    if-lez v4, :cond_35

    invoke-virtual {p1, v5}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildCount()I

    move-result v4

    if-lez v4, :cond_35

    .line 412
    invoke-virtual {p1, v5}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v1

    .line 415
    .local v1, childList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 416
    .local v0, child:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    .line 417
    .local v2, doc:Lcom/google/android/finsky/api/model/Document;
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelatedAppDocs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 421
    .end local v0           #child:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .end local v1           #childList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;>;"
    .end local v2           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_35
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDataLoaded:Z

    .line 422
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->onResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)V

    return-void
.end method

.method public pushInSurroundingNodes(F)Z
    .registers 7
    .parameter "deltaTime"

    .prologue
    .line 878
    const/4 v1, 0x1

    .line 880
    .local v1, isPushDone:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 881
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v3, v3, Lcom/google/android/finsky/exploreactivity/AppNode;->mDirection:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-direct {v2, p1, v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->pushIn(FLcom/google/android/finsky/exploreactivity/Vector;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 882
    const/4 v1, 0x0

    .line 880
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 886
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasParent()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 887
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDirection:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->cpy()Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v3

    const/high16 v4, -0x4080

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->pushIn(FLcom/google/android/finsky/exploreactivity/Vector;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 888
    const/4 v1, 0x0

    .line 892
    :cond_41
    return v1
.end method

.method public pushOutSurroundingNodes(F)Z
    .registers 7
    .parameter "deltaTime"

    .prologue
    .line 853
    const/4 v1, 0x1

    .line 855
    .local v1, isPushDone:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 856
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mChildren:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v3, v3, Lcom/google/android/finsky/exploreactivity/AppNode;->mDirection:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-direct {v2, p1, v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->pushOut(FLcom/google/android/finsky/exploreactivity/Vector;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 857
    const/4 v1, 0x0

    .line 855
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 861
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasParent()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 862
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDirection:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->cpy()Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v3

    const/high16 v4, -0x4080

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->pushOut(FLcom/google/android/finsky/exploreactivity/Vector;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 863
    const/4 v1, 0x0

    .line 867
    :cond_41
    return v1
.end method

.method public removeButtonHighlight()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1182
    iput-boolean v1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mHighlightOn:Z

    .line 1183
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoBox(Lcom/google/android/finsky/exploreactivity/AppNode;Z)V

    .line 1184
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode;->sTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadInfoDescription(Lcom/google/android/finsky/exploreactivity/AppNode;Z)V

    .line 1185
    return-void
.end method

.method public repositionAndAnimate(F)V
    .registers 11
    .parameter "deltaTime"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3fc0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 960
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlphaAnimationState:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    sget-object v4, Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;->FADE_IN:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    if-ne v3, v4, :cond_26

    .line 965
    mul-float v3, p1, v7

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    mul-float v1, v3, v4

    .line 967
    .local v1, alphaIncrease:F
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    .line 969
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_26

    .line 970
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    .line 972
    sget-object v3, Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;->FADE_NONE:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlphaAnimationState:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    .line 976
    .end local v1           #alphaIncrease:F
    :cond_26
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlphaAnimationState:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    sget-object v4, Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;->FADE_OUT:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    if-ne v3, v4, :cond_43

    .line 978
    mul-float v3, p1, v7

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    mul-float v0, v3, v4

    .line 979
    .local v0, alphaDecrease:F
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    sub-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    .line 982
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_43

    .line 983
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    .line 985
    sget-object v3, Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;->FADE_NONE:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlphaAnimationState:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    .line 990
    .end local v0           #alphaDecrease:F
    :cond_43
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v3, v3, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-nez v3, :cond_5c

    .line 992
    :cond_4d
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushAnimationOffsetX:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mX:F

    .line 993
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushAnimationOffsetY:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mY:F

    .line 1033
    :goto_5b
    return-void

    .line 1003
    :cond_5c
    iput-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIsExpandingOrCollapsing:Z

    .line 1005
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7e

    .line 1006
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRotationSpeed:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    .line 1007
    iput-boolean v8, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIsExpandingOrCollapsing:Z

    .line 1008
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7e

    .line 1009
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    .line 1010
    iput-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIsExpandingOrCollapsing:Z

    .line 1014
    :cond_7e
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9e

    .line 1015
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRotationSpeed:F

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    .line 1016
    iput-boolean v8, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIsExpandingOrCollapsing:Z

    .line 1017
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9e

    .line 1018
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueRelativeAngle:F

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    .line 1019
    iput-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mIsExpandingOrCollapsing:Z

    .line 1025
    :cond_9e
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v3, v3, Lcom/google/android/finsky/exploreactivity/AppNode;->mDirection:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->cpy()Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v3

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mRelativeAngle:F

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->rotate(F)Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v2

    .line 1026
    .local v2, newDirection:Lcom/google/android/finsky/exploreactivity/Vector;
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget v3, v3, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    .line 1027
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mParent:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget v3, v3, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    .line 1028
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueX:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushAnimationOffsetX:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mX:F

    .line 1029
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueY:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mPushAnimationOffsetY:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mY:F

    .line 1031
    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mDirection:Lcom/google/android/finsky/exploreactivity/Vector;

    goto :goto_5b
.end method

.method public setAlphaScaleAndScore(FF)V
    .registers 10
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const v6, 0x3f23d70a

    const v5, 0x37fba882

    const/high16 v4, 0x3f80

    .line 716
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getX()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/google/android/finsky/exploreactivity/AppNode;->square(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getY()F

    move-result v3

    sub-float/2addr v3, p2

    invoke-direct {p0, v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->square(F)F

    move-result v3

    add-float v0, v2, v3

    .line 719
    .local v0, dSquared:F
    iput v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mInverseCenterScore:F

    .line 722
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_28

    .line 723
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    .line 724
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mScale:F

    .line 749
    :cond_27
    :goto_27
    return-void

    .line 731
    :cond_28
    div-float v1, v4, v0

    .line 733
    .local v1, score:F
    div-float v2, v1, v5

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    .line 734
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    div-float/2addr v2, v4

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mScale:F

    .line 736
    cmpl-float v2, v1, v5

    if-lez v2, :cond_3c

    .line 737
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    .line 738
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mScale:F

    .line 741
    :cond_3c
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mScale:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_44

    .line 742
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mScale:F

    .line 746
    :cond_44
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlphaAnimationState:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    sget-object v3, Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;->FADE_NONE:Lcom/google/android/finsky/exploreactivity/AppNode$AlphaAnimationState;

    if-ne v2, v3, :cond_27

    .line 747
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTrueAlpha:F

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mAlpha:F

    goto :goto_27
.end method

.method public setImageId(I)V
    .registers 2
    .parameter "imageId"

    .prologue
    .line 1131
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageId:I

    .line 1132
    return-void
.end method

.method public setImageState(Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;)V
    .registers 2
    .parameter "imageState"

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    .line 1152
    return-void
.end method

.method public setTextId(I)V
    .registers 2
    .parameter "textId"

    .prologue
    .line 1115
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTextId:I

    .line 1116
    return-void
.end method

.method public setTextState(Lcom/google/android/finsky/exploreactivity/AppNode$TextState;)V
    .registers 2
    .parameter "textState"

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->mTextState:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    .line 1147
    return-void
.end method

.method public shouldUsePrimaryLineTexture()Z
    .registers 2

    .prologue
    .line 1275
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->drawLineWithPrimaryTexture:Z

    return v0
.end method

.method public usePrimaryLineTexture(Z)V
    .registers 2
    .parameter "usePrimary"

    .prologue
    .line 1268
    iput-boolean p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode;->drawLineWithPrimaryTexture:Z

    .line 1269
    return-void
.end method
