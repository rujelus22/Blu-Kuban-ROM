.class public Lcom/google/android/apps/books/widget/RemoteImageView;
.super Landroid/widget/RelativeLayout;
.source "RemoteImageView.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/RemoteImageView$Mode;,
        Lcom/google/android/apps/books/widget/RemoteImageView$ExceptionConsumer;
    }
.end annotation


# instance fields
.field private mAttachedToWindow:Z

.field private final mBannerId:I

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContentObserverIsRegistered:Z

.field private final mDimmedCoverId:I

.field private mEnsurer:Lcom/google/android/apps/books/common/ImageManager$Ensurer;

.field private final mErrorId:I

.field private mExceptionConsumer:Lcom/google/android/apps/books/widget/RemoteImageView$ExceptionConsumer;

.field private mFuture:Lcom/google/android/apps/books/common/ImageFuture;

.field private mImageManager:Lcom/google/android/apps/books/common/ImageManager;

.field private final mImageViewContainerId:I

.field private final mImageViewId:I

.field private mMode:I

.field private final mSpinnerId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/widget/RemoteImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/RemoteImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "set"
    .parameter "defaultStyle"

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v2, Lcom/google/android/apps/books/widget/RemoteImageView$1;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/books/widget/RemoteImageView$1;-><init>(Lcom/google/android/apps/books/widget/RemoteImageView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mContentObserver:Landroid/database/ContentObserver;

    .line 106
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->RemoteImageView:[I

    .line 107
    .local v1, attrs:[I
    invoke-virtual {p1, p2, v1, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mSpinnerId:I

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mImageViewId:I

    .line 110
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mImageViewId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mImageViewContainerId:I

    .line 112
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mBannerId:I

    .line 113
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mDimmedCoverId:I

    .line 114
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mErrorId:I

    .line 115
    invoke-direct {p0, v5}, Lcom/google/android/apps/books/widget/RemoteImageView;->setMode(I)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/widget/RemoteImageView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/RemoteImageView;->setMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/widget/RemoteImageView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->loadImage()V

    return-void
.end method

.method private cancelActiveRemoteImageRequest()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mFuture:Lcom/google/android/apps/books/common/ImageFuture;

    if-eqz v0, :cond_c

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mFuture:Lcom/google/android/apps/books/common/ImageFuture;

    invoke-interface {v0}, Lcom/google/android/apps/books/common/ImageFuture;->cancel()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mFuture:Lcom/google/android/apps/books/common/ImageFuture;

    .line 191
    :cond_c
    return-void
.end method

.method private findDimmedCoverView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mDimmedCoverId:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private findErrorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mErrorId:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mImageViewId:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private findImageViewContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mImageViewContainerId:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findProgressView()Landroid/view/View;
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mSpinnerId:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getImageManager()Lcom/google/android/apps/books/common/ImageManager;
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mImageManager:Lcom/google/android/apps/books/common/ImageManager;

    .line 132
    .local v0, result:Lcom/google/android/apps/books/common/ImageManager;
    if-nez v0, :cond_12

    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/common/BooksContext;

    invoke-interface {v1}, Lcom/google/android/apps/books/common/BooksContext;->getImageManager()Lcom/google/android/apps/books/common/ImageManager;

    move-result-object v0

    .line 135
    :cond_12
    return-object v0
.end method

.method private static isContentUri(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 261
    if-eqz p0, :cond_d

    .line 262
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, scheme:Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 267
    .end local v1           #scheme:Ljava/lang/String;
    .local v0, result:Z
    :goto_c
    return v0

    .line 265
    .end local v0           #result:Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #result:Z
    goto :goto_c
.end method

.method private loadImage()V
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mFuture:Lcom/google/android/apps/books/common/ImageFuture;

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mFuture:Lcom/google/android/apps/books/common/ImageFuture;

    invoke-interface {v0}, Lcom/google/android/apps/books/common/ImageFuture;->cancel()V

    .line 283
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->getImageManager()Lcom/google/android/apps/books/common/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mEnsurer:Lcom/google/android/apps/books/common/ImageManager$Ensurer;

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/apps/books/common/ImageManager;->getImage(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageManager$Ensurer;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mFuture:Lcom/google/android/apps/books/common/ImageFuture;

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mFuture:Lcom/google/android/apps/books/common/ImageFuture;

    invoke-interface {v0}, Lcom/google/android/apps/books/common/ImageFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mFuture:Lcom/google/android/apps/books/common/ImageFuture;

    .line 291
    :goto_22
    return-void

    .line 289
    :cond_23
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/RemoteImageView;->setMode(I)V

    goto :goto_22
.end method

.method private registerContentObserver()V
    .registers 5

    .prologue
    .line 229
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mContentObserverIsRegistered:Z

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mAttachedToWindow:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_23

    .line 231
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mContentObserverIsRegistered:Z

    .line 235
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_23
    return-void
.end method

.method private setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 338
    iput p1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mMode:I

    .line 339
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->updateViews()V

    .line 340
    return-void
.end method

.method private unregisterContentObserver()V
    .registers 3

    .prologue
    .line 238
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mContentObserverIsRegistered:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_18

    .line 239
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mContentObserverIsRegistered:Z

    .line 243
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_18
    return-void
.end method

.method private updateViews()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 345
    iget v6, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mMode:I

    packed-switch v6, :pswitch_data_58

    .line 355
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findErrorView()Landroid/view/View;

    move-result-object v4

    .line 356
    .local v4, viewToShow:Landroid/view/View;
    new-array v5, v9, [Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findProgressView()Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findImageViewContainer()Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v8

    .line 358
    .local v5, viewsToHide:[Landroid/view/View;
    :goto_1a
    if-eqz v4, :cond_1f

    .line 359
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :cond_1f
    move-object v0, v5

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_22
    if-ge v1, v2, :cond_56

    aget-object v3, v0, v1

    .line 362
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_2d

    .line 363
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 347
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #view:Landroid/view/View;
    .end local v4           #viewToShow:Landroid/view/View;
    .end local v5           #viewsToHide:[Landroid/view/View;
    :pswitch_30
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findProgressView()Landroid/view/View;

    move-result-object v4

    .line 348
    .restart local v4       #viewToShow:Landroid/view/View;
    new-array v5, v9, [Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findErrorView()Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findImageViewContainer()Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v8

    .line 349
    .restart local v5       #viewsToHide:[Landroid/view/View;
    goto :goto_1a

    .line 351
    .end local v4           #viewToShow:Landroid/view/View;
    .end local v5           #viewsToHide:[Landroid/view/View;
    :pswitch_43
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findImageViewContainer()Landroid/view/View;

    move-result-object v4

    .line 352
    .restart local v4       #viewToShow:Landroid/view/View;
    new-array v5, v9, [Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findErrorView()Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findProgressView()Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v8

    .line 353
    .restart local v5       #viewsToHide:[Landroid/view/View;
    goto :goto_1a

    .line 366
    .restart local v0       #arr$:[Landroid/view/View;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_56
    return-void

    .line 345
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_30
        :pswitch_43
    .end packed-switch
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .registers 6

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 172
    .local v3, parent:Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/widget/AdapterView;

    if-eqz v4, :cond_19

    move-object v1, v3

    .line 173
    check-cast v1, Landroid/widget/AdapterView;

    .line 174
    .local v1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 175
    .local v0, adapter:Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_19

    move-object v2, v0

    .line 176
    check-cast v2, Landroid/widget/BaseAdapter;

    .line 177
    .local v2, baseAdapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 180
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v1           #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .end local v2           #baseAdapter:Landroid/widget/BaseAdapter;
    :cond_19
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 247
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mAttachedToWindow:Z

    .line 249
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->registerContentObserver()V

    .line 250
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mAttachedToWindow:Z

    .line 256
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->unregisterContentObserver()V

    .line 257
    return-void
.end method

.method public onImage(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "result"
    .parameter "exception"

    .prologue
    const/4 v1, 0x1

    .line 144
    if-eqz p1, :cond_1c

    .line 145
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/RemoteImageView;->setMode(I)V

    .line 146
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 147
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    iget-object v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mFuture:Lcom/google/android/apps/books/common/ImageFuture;

    if-eqz v2, :cond_1a

    .line 153
    .local v1, isAsynchronousCallback:Z
    :goto_11
    if-eqz v1, :cond_16

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->notifyDataSetChanged()V

    .line 164
    .end local v0           #imageView:Landroid/widget/ImageView;
    .end local v1           #isAsynchronousCallback:Z
    :cond_16
    :goto_16
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mFuture:Lcom/google/android/apps/books/common/ImageFuture;

    .line 165
    return-void

    .line 152
    .restart local v0       #imageView:Landroid/widget/ImageView;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11

    .line 159
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_1c
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/widget/RemoteImageView;->setMode(I)V

    .line 160
    iget-object v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mExceptionConsumer:Lcom/google/android/apps/books/widget/RemoteImageView$ExceptionConsumer;

    if-eqz v2, :cond_16

    if-eqz p2, :cond_16

    .line 161
    iget-object v2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mExceptionConsumer:Lcom/google/android/apps/books/widget/RemoteImageView$ExceptionConsumer;

    invoke-interface {v2, p2}, Lcom/google/android/apps/books/widget/RemoteImageView$ExceptionConsumer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bm"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->cancelActiveRemoteImageRequest()V

    .line 216
    return-void
.end method

.method public setImageManager(Lcom/google/android/apps/books/common/ImageManager;)V
    .registers 2
    .parameter "im"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mImageManager:Lcom/google/android/apps/books/common/ImageManager;

    .line 128
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageManager$Ensurer;)V
    .registers 5
    .parameter "uri"
    .parameter "ensurer"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mUri:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v0, 0x1

    .line 314
    .local v0, uriChanged:Z
    :goto_9
    if-eqz v0, :cond_28

    .line 316
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/widget/RemoteImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    iget-object v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/RemoteImageView;->isContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 319
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->unregisterContentObserver()V

    .line 322
    :cond_1e
    iput-object p1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mUri:Landroid/net/Uri;

    .line 323
    iput-object p2, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mEnsurer:Lcom/google/android/apps/books/common/ImageManager$Ensurer;

    .line 325
    if-nez p1, :cond_2b

    .line 326
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/RemoteImageView;->setMode(I)V

    .line 335
    :cond_28
    :goto_28
    return-void

    .line 313
    .end local v0           #uriChanged:Z
    :cond_29
    const/4 v0, 0x0

    goto :goto_9

    .line 328
    .restart local v0       #uriChanged:Z
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->loadImage()V

    .line 330
    invoke-static {p1}, Lcom/google/android/apps/books/widget/RemoteImageView;->isContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 331
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->registerContentObserver()V

    goto :goto_28
.end method

.method public setShowBanner(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 369
    iget v1, p0, Lcom/google/android/apps/books/widget/RemoteImageView;->mBannerId:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/widget/RemoteImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_e

    .line 371
    if-eqz p1, :cond_f

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :cond_e
    return-void

    .line 371
    :cond_f
    const/16 v1, 0x8

    goto :goto_b
.end method

.method public setShowDimmedCover(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/RemoteImageView;->findDimmedCoverView()Landroid/widget/TextView;

    move-result-object v0

    .line 377
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_c

    .line 378
    if-eqz p1, :cond_d

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    :cond_c
    return-void

    .line 378
    :cond_d
    const/16 v1, 0x8

    goto :goto_9
.end method
