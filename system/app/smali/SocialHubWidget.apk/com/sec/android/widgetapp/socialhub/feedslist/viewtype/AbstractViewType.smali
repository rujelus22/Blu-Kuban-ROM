.class public abstract Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;
.super Ljava/lang/Object;
.source "AbstractViewType.java"


# instance fields
.field protected mEventHandler:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

.field protected mNoteClickListener:Landroid/view/View$OnClickListener;

.field protected mPhotoClickListener:Landroid/view/View$OnClickListener;

.field protected mVideoClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 18
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mVideoClickListener:Landroid/view/View$OnClickListener;

    .line 19
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    .line 21
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mEventHandler:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
.end method

.method public abstract drawMedia(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
.end method

.method public getImageService(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 60
    invoke-static {p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    move-result-object v0

    return-object v0
.end method

.method public getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public setPhotoClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "photo"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method public setVideoClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "video"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mVideoClickListener:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method
