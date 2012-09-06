.class public Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;
.super Lcom/google/android/apps/plus/network/ApiaryActivity;
.source "ApiarySkyjamActivity.java"


# instance fields
.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mImage:Ljava/lang/String;

.field private mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;-><init>()V

    return-void
.end method

.method private processAudioAttachment(Lcom/google/api/services/plusi/model/MediaItem;)V
    .registers 3
    .parameter "attachment"

    .prologue
    .line 53
    iget-object v0, p1, Lcom/google/api/services/plusi/model/MediaItem;->thumbnailUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;->mImage:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/google/api/services/plusi/model/MediaItem;->caption:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;->mTrackName:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/google/api/services/plusi/model/MediaItem;->albumHtml:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;->mAlbumName:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/google/api/services/plusi/model/MediaItem;->albumArtistHtml:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;->mArtistName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->AUDIO:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    return-object v0
.end method

.method protected update()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->update()V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;->getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;

    move-result-object v3

    iget-object v2, v3, Lcom/google/api/services/plusi/model/MediaLayout;->media:Ljava/util/List;

    .line 40
    .local v2, mediaItemList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/MediaItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/MediaItem;

    .line 41
    .local v1, mediaItem:Lcom/google/api/services/plusi/model/MediaItem;
    iget-object v3, v1, Lcom/google/api/services/plusi/model/MediaItem;->albumArtistHtml:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 42
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;->processAudioAttachment(Lcom/google/api/services/plusi/model/MediaItem;)V

    goto :goto_d

    .line 45
    .end local v1           #mediaItem:Lcom/google/api/services/plusi/model/MediaItem;
    :cond_21
    return-void
.end method
