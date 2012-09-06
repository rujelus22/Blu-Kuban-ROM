.class public Lcom/google/android/apps/plus/network/ApiaryVideoActivity;
.super Lcom/google/android/apps/plus/network/ApiaryActivity;
.source "ApiaryVideoActivity.java"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mImage:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;-><init>()V

    return-void
.end method

.method private processVideoAttachment(Lcom/google/api/services/plusi/model/MediaItem;)V
    .registers 4
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->mUrl:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/google/api/services/plusi/model/MediaItem;->thumbnailUrl:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing image object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/api/services/plusi/model/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->mImage:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->VIDEO:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

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

    .line 35
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->update()V

    .line 37
    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->mDisplayName:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->mImage:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->mUrl:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;

    move-result-object v1

    iget-object v0, v1, Lcom/google/api/services/plusi/model/MediaLayout;->media:Ljava/util/List;

    .line 43
    .local v0, mediaItemList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/MediaItem;>;"
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 44
    :cond_18
    new-instance v1, Ljava/io/IOException;

    const-string v2, "empty media item"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_20
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/MediaItem;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->processVideoAttachment(Lcom/google/api/services/plusi/model/MediaItem;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/google/api/services/plusi/model/MediaLayout;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->mDisplayName:Ljava/lang/String;

    .line 51
    return-void
.end method
