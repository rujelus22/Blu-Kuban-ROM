.class public abstract Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;
.super Ljava/lang/Object;
.source "AbstractViewType.java"


# instance fields
.field protected mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

.field protected mNoteClickListener:Landroid/view/View$OnClickListener;

.field protected mPhotoClickListener:Landroid/view/View$OnClickListener;

.field protected mVideoClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 16
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mVideoClickListener:Landroid/view/View$OnClickListener;

    .line 17
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    .line 19
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    .line 29
    return-void
.end method


# virtual methods
.method public abstract drawAttachment(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
.end method

.method public abstract drawMedia(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
.end method

.method public getImageService(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    return-object v0
.end method

.method public getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public setEventHandler(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    .line 34
    return-void
.end method

.method public setNoteClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "note"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method public setPhotoClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "photo"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method

.method public setVideoClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "video"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mVideoClickListener:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method
