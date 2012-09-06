.class public Lcom/google/android/apps/plus/network/ApiaryArticleActivity;
.super Lcom/google/android/apps/plus/network/ApiaryActivity;
.source "ApiaryArticleActivity.java"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mFavIconUrl:Ljava/lang/String;

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageList:Ljava/util/List;

    return-void
.end method

.method private processArticleAttachment(Lcom/google/api/services/plusi/model/MediaItem;)V
    .registers 5
    .parameter "attachment"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFavIconUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mFavIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->ARTICLE:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    return-object v0
.end method

.method protected update()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->update()V

    .line 43
    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mDisplayName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mContent:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;

    move-result-object v1

    iget-object v0, v1, Lcom/google/api/services/plusi/model/MediaLayout;->media:Ljava/util/List;

    .line 49
    .local v0, mediaItemList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/MediaItem;>;"
    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 50
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/MediaItem;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->processArticleAttachment(Lcom/google/api/services/plusi/model/MediaItem;)V

    .line 53
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/google/api/services/plusi/model/MediaLayout;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mDisplayName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/google/api/services/plusi/model/MediaLayout;->contentUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mUrl:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/google/api/services/plusi/model/MediaLayout;->faviconUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mFavIconUrl:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mFavIconUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mFavIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mFavIconUrl:Ljava/lang/String;

    .line 59
    :cond_60
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/google/api/services/plusi/model/MediaLayout;->description:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mContent:Ljava/lang/String;

    .line 60
    return-void
.end method
