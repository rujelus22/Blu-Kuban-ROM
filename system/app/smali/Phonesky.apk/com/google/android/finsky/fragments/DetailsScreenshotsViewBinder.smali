.class public Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsScreenshotsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

.field private mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

.field private final mInFlightRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxImageHeight:I

.field private mNumImagesFailed:I

.field private mPreviewImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotsSpacing:I

.field private mVideoFrameWidth:I

.field private mVideoPreviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mMaxImageHeight:I

    .line 49
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mInFlightRequests:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mVideoPreviews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mInFlightRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$204(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mNumImagesFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mNumImagesFailed:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)Lcom/google/android/finsky/adapters/ImageStripAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    return-object v0
.end method

.method private clearPendingRequests()V
    .registers 4

    .prologue
    .line 190
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 191
    .local v0, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_6

    .line 192
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    goto :goto_6

    .line 195
    .end local v0           #container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_18
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 196
    return-void
.end method

.method private loadImages()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 125
    const/4 v7, 0x0

    .line 126
    .local v7, currIndex:I
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 127
    .local v11, numImagesToLoad:I
    iput v4, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mNumImagesFailed:I

    .line 130
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->clearPendingRequests()V

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 132
    .local v9, img:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)V

    .line 133
    move v10, v7

    .line 134
    .local v10, index:I
    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, url:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 136
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mMaxImageHeight:I

    invoke-static {v1, v4, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_3a
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v3, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;

    invoke-direct {v3, p0, v10, v11}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;-><init>(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;II)V

    iget v5, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mMaxImageHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 162
    .local v6, bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v10, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageAt(ILandroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v0, v10, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_65
    add-int/lit8 v7, v7, 0x1

    .line 173
    goto :goto_14

    .line 174
    .end local v1           #url:Ljava/lang/String;
    .end local v6           #bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v9           #img:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .end local v10           #index:I
    :cond_68
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V
    .registers 13
    .parameter "view"
    .parameter "doc"
    .parameter "hasDetailsLoaded"

    .prologue
    const v8, 0x7f0800d6

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    const v3, 0x7f07011f

    invoke-super {p0, p1, p2, v3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 65
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    if-ne v3, v4, :cond_41

    move v6, v1

    .line 66
    .local v6, assumeScreenshots:Z
    :goto_15
    if-nez v6, :cond_1f

    if-eqz p3, :cond_43

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->hasScreenshots()Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_1f
    move v7, v1

    .line 69
    .local v7, hasScreenshots:Z
    :goto_20
    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLayout:Landroid/view/View;

    if-eqz v7, :cond_45

    :goto_24
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasScreenshots()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    :goto_35
    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    if-nez v0, :cond_49

    .line 73
    if-eqz p3, :cond_40

    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_40
    :goto_40
    return-void

    .end local v6           #assumeScreenshots:Z
    .end local v7           #hasScreenshots:Z
    :cond_41
    move v6, v0

    .line 65
    goto :goto_15

    .restart local v6       #assumeScreenshots:Z
    :cond_43
    move v7, v0

    .line 66
    goto :goto_20

    .restart local v7       #hasScreenshots:Z
    :cond_45
    move v0, v2

    .line 69
    goto :goto_24

    .line 70
    :cond_47
    const/4 v0, 0x0

    goto :goto_35

    .line 79
    :cond_49
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasVideos()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-virtual {p2, v4}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    :goto_55
    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mVideoPreviews:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HorizontalStrip;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    iget v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mScreenshotsSpacing:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->setLayoutMargin(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v0, :cond_71

    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->unregisterAll()V

    .line 90
    :cond_71
    new-instance v0, Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget v5, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mVideoFrameWidth:I

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;-><init>(IILcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;I)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    new-instance v1, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->setImageChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    new-instance v1, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$2;-><init>(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->setVideoChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;)V

    .line 112
    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLayout:Landroid/view/View;

    invoke-direct {v0, v1, v8, p0}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 116
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->loadImages()V

    goto :goto_40

    .line 79
    :cond_b6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_55
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .registers 7
    .parameter "context"
    .parameter "bitmapLoader"
    .parameter "navigationManager"

    .prologue
    .line 53
    const/4 v1, 0x0

    invoke-super {p0, p1, v1, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 55
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 56
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mScreenshotsSpacing:I

    .line 58
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mMaxImageHeight:I

    .line 59
    const v1, 0x3f1eb852

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mMaxImageHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mVideoFrameWidth:I

    .line 60
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->clearPendingRequests()V

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v0, :cond_d

    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->unregisterAll()V

    .line 204
    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    if-eqz v0, :cond_16

    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->onDestroyView()V

    .line 207
    :cond_16
    iput-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    .line 208
    iput-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    .line 209
    return-void
.end method

.method public onRetry()V
    .registers 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->loadImages()V

    .line 184
    return-void
.end method
