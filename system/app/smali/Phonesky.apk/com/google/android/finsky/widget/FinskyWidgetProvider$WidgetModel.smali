.class public Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;
.super Ljava/lang/Object;
.source "FinskyWidgetProvider.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/FinskyWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WidgetModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;,
        Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$RefreshListener;
    }
.end annotation


# instance fields
.field private final mDocumentTypes:[I

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/google/android/finsky/api/model/DfeList;

.field private mListener:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$RefreshListener;

.field private mLoadedImagesSoFar:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mSize:I

.field private mUpdatePending:Z


# direct methods
.method public constructor <init>([I)V
    .registers 3
    .parameter "validDocumentTypes"

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mItems:Ljava/util/List;

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mLoadedImagesSoFar:I

    .line 187
    iput-object p1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mDocumentTypes:[I

    .line 188
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method

.method private bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 5
    .parameter "document"
    .parameter "result"

    .prologue
    .line 284
    iget v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mLoadedImagesSoFar:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mLoadedImagesSoFar:I

    .line 285
    invoke-virtual {p2}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 286
    new-instance v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;-><init>(Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;)V

    .line 287
    .local v0, promo:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;->developer:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;->title:Ljava/lang/String;

    .line 289
    invoke-virtual {p2}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;->image:Landroid/graphics/Bitmap;

    .line 290
    iput-object p1, v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;->doc:Lcom/google/android/finsky/api/model/Document;

    .line 291
    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v0           #promo:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->loadViewsIfDone()V

    .line 294
    return-void
.end method

.method private isValidDocumentType(Lcom/google/android/finsky/api/model/Document;)Z
    .registers 7
    .parameter "document"

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasDocumentType()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mDocumentTypes:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v2, :cond_19

    aget v3, v0, v1

    .line 275
    .local v3, type:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    if-ne v3, v4, :cond_16

    .line 276
    const/4 v4, 0x1

    .line 280
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #type:I
    :goto_15
    return v4

    .line 274
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #type:I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 280
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #type:I
    :cond_19
    const/4 v4, 0x0

    goto :goto_15
.end method

.method private loadViewsIfDone()V
    .registers 3

    .prologue
    .line 297
    iget v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mLoadedImagesSoFar:I

    iget v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mSize:I

    if-ne v0, v1, :cond_b

    .line 298
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mListener:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$RefreshListener;

    invoke-interface {v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$RefreshListener;->onData()V

    .line 300
    :cond_b
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public onDataChanged()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    iput-boolean v10, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mUpdatePending:Z

    .line 247
    iput v10, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mLoadedImagesSoFar:I

    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 249
    .local v9, numItems:I
    iput v9, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mSize:I

    .line 250
    const/4 v7, 0x0

    .local v7, item:I
    :goto_19
    if-ge v7, v9, :cond_5d

    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v7}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    .line 252
    .local v6, document:Lcom/google/android/finsky/api/model/Document;
    iget v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mMaxWidth:I

    invoke-static {v6, v0, v10}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPromoBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, urlToLoad:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->isValidDocumentType(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-nez v1, :cond_3d

    .line 255
    :cond_31
    iget v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mSize:I

    .line 256
    invoke-direct {p0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->loadViewsIfDone()V

    .line 250
    :cond_3a
    :goto_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 259
    :cond_3d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$1;

    invoke-direct {v3, p0, v6}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$1;-><init>(Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;Lcom/google/android/finsky/api/model/Document;)V

    iget v4, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mMaxWidth:I

    iget v5, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mMaxHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v8

    .line 266
    .local v8, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 267
    invoke-direct {p0, v6, v8}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    goto :goto_3a

    .line 270
    .end local v1           #urlToLoad:Ljava/lang/String;
    .end local v6           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v8           #newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_5d
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mUpdatePending:Z

    .line 305
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mListener:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$RefreshListener;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$RefreshListener;->onError(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public refresh(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$RefreshListener;)V
    .registers 7
    .parameter "context"
    .parameter "dfeApi"
    .parameter "dfeUrl"
    .parameter "listener"

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mUpdatePending:Z

    if-eqz v0, :cond_5

    .line 232
    :goto_4
    return-void

    .line 218
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mUpdatePending:Z

    .line 219
    iput-object p4, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mListener:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$RefreshListener;

    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_18

    .line 221
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 224
    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mMaxWidth:I

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mMaxHeight:I

    .line 228
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    goto :goto_4
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mUpdatePending:Z

    .line 236
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    return-void
.end method
