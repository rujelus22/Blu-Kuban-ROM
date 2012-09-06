.class public Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;
.super Lcom/google/android/apps/plus/network/ApiaryActivity;
.source "ApiaryPhotoAlbumActivity.java"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mImageList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mImageList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mDisplayName:Ljava/lang/String;

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
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mImageList:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->PHOTOALBUM:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    return-object v0
.end method

.method protected update()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->update()V

    .line 38
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mDisplayName:Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mImageList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;

    move-result-object v3

    iget-object v2, v3, Lcom/google/api/services/plusi/model/MediaLayout;->media:Ljava/util/List;

    .line 43
    .local v2, mediaItemList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/MediaItem;>;"
    if-eqz v2, :cond_19

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 44
    :cond_19
    new-instance v3, Ljava/io/IOException;

    const-string v4, "empty media item"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/MediaItem;

    .line 48
    .local v1, mediaItem:Lcom/google/api/services/plusi/model/MediaItem;
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mImageList:Ljava/util/LinkedList;

    iget-object v4, v1, Lcom/google/api/services/plusi/model/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 51
    .end local v1           #mediaItem:Lcom/google/api/services/plusi/model/MediaItem;
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/google/api/services/plusi/model/MediaLayout;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mDisplayName:Ljava/lang/String;

    .line 52
    return-void
.end method
