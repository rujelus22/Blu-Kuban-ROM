.class public Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "FreeSongOfTheDayAlbumViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCookie:Ljava/lang/String;

.field private mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mReferrerUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->retryRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mReferrerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private attachToInternalRequest()V
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->prepareAndPopulateContent()V

    .line 117
    :goto_20
    return-void

    .line 111
    :cond_21
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->inErrorState()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeDetails;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_20

    .line 115
    :cond_3b
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingMode()V

    goto :goto_20
.end method

.method private bindImage()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f08001a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 157
    .local v7, iv:Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 158
    .local v4, width:I
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    .local v5, height:I
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v4, v3}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_3e

    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v3, Lcom/google/android/finsky/layout/ThumbnailListener;

    const/4 v8, 0x1

    invoke-direct {v3, v7, v2, v8}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;Landroid/view/View;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 165
    .local v6, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 166
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    .end local v6           #container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_3e
    return-void
.end method

.method private detachListeners()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_e

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 74
    :cond_e
    return-void
.end method

.method private prepareAndPopulateContent()V
    .registers 6

    .prologue
    .line 134
    iget-object v3, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    .line 137
    .local v1, doc:Lcom/google/android/finsky/api/model/Document;
    iget-object v3, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const v4, 0x7f08007b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 138
    .local v2, title:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const v4, 0x7f0800bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 142
    .local v0, creator:Lcom/google/android/finsky/layout/DecoratedTextView;
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->bindImage()V

    .line 146
    iget-object v3, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    new-instance v4, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;

    invoke-direct {v4, p0, v1}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;-><init>(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method private retryRequest()V
    .registers 5

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->detachListeners()V

    .line 178
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 179
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->attachToInternalRequest()V

    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingMode()V

    .line 181
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "view"
    .parameter "doc"
    .parameter "url"
    .parameter "referrerUrl"

    .prologue
    .line 62
    const v0, 0x7f070206

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 64
    iput-object p3, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mUrl:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mReferrerUrl:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->setupView()V

    .line 67
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "cookie"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 51
    iput-object p4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 52
    iput-object p5, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mCookie:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public onDataChanged()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 127
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->prepareAndPopulateContent()V

    .line 131
    :goto_1c
    return-void

    .line 129
    :cond_1d
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->detachListeners()V

    .line 174
    return-void
.end method

.method public setupView()V
    .registers 8

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800c6

    const v3, 0x7f080147

    const v4, 0x7f0800cf

    new-instance v5, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$1;-><init>(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)V

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;IIILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;I)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->detachListeners()V

    .line 96
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 97
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->attachToInternalRequest()V

    .line 101
    :goto_50
    return-void

    .line 99
    :cond_51
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50
.end method
