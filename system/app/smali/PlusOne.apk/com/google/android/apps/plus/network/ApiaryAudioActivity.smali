.class public Lcom/google/android/apps/plus/network/ApiaryAudioActivity;
.super Lcom/google/android/apps/plus/network/ApiaryActivity;
.source "ApiaryAudioActivity.java"


# instance fields
.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mImage:Ljava/lang/String;

.field private mMarketUrl:Ljava/lang/String;

.field private mMusicUrl:Ljava/lang/String;

.field private mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;-><init>()V

    return-void
.end method

.method private processAudioAttachment(Lcom/google/api/services/plus/model/ActivityObjectAttachments;)V
    .registers 7
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getImage()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;

    move-result-object v3

    if-nez v3, :cond_e

    .line 64
    new-instance v3, Ljava/io/IOException;

    const-string v4, "missing image object"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_e
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getImage()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mImage:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getEmbed()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsEmbed;

    move-result-object v3

    if-nez v3, :cond_5b

    .line 70
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getContentsource()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsContentsource;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 71
    new-instance v3, Ljava/io/IOException;

    const-string v4, "missing music link"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_2c
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getContentsource()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsContentsource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsContentsource;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mMusicUrl:Ljava/lang/String;

    .line 78
    :goto_36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, categories:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getCategories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsCategories;

    .line 81
    .local v1, category:Lcom/google/api/services/plus/model/ActivityObjectAttachmentsCategories;
    invoke-virtual {v1}, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsCategories;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsCategories;->getTerm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 75
    .end local v0           #categories:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #category:Lcom/google/api/services/plus/model/ActivityObjectAttachmentsCategories;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5b
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getEmbed()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsEmbed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsEmbed;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mMusicUrl:Ljava/lang/String;

    goto :goto_36

    .line 84
    .restart local v0       #categories:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_66
    const-string v3, "track_title"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mTrackName:Ljava/lang/String;

    .line 85
    const-string v3, "album"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mAlbumName:Ljava/lang/String;

    .line 86
    const-string v3, "album_artist"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mArtistName:Ljava/lang/String;

    .line 87
    const-string v3, "album_url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mMarketUrl:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->AUDIO:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    return-object v0
.end method

.method protected updateActivity()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->updateActivity()V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->getPlusActivity()Lcom/google/api/services/plus/model/Activity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, attachmentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plus/model/ActivityObjectAttachments;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 48
    .local v0, attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    const-string v3, "audio"

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 49
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->processAudioAttachment(Lcom/google/api/services/plus/model/ActivityObjectAttachments;)V

    goto :goto_13

    .line 51
    :cond_2f
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected attachment type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    .end local v0           #attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    :cond_4c
    return-void
.end method
