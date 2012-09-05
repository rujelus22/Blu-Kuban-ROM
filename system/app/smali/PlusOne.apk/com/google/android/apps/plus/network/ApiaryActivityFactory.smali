.class public Lcom/google/android/apps/plus/network/ApiaryActivityFactory;
.super Ljava/lang/Object;
.source "ApiaryActivityFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiaryActivity(Lcom/google/api/services/plus/model/Activity;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 6
    .parameter "plusActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    if-nez p0, :cond_b

    .line 35
    new-instance v3, Ljava/io/IOException;

    const-string v4, "activity is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 37
    :cond_b
    invoke-virtual {p0}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v3

    if-nez v3, :cond_19

    .line 38
    new-instance v3, Ljava/io/IOException;

    const-string v4, "missing activity object"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 40
    :cond_19
    invoke-virtual {p0}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2b

    .line 41
    new-instance v3, Ljava/io/IOException;

    const-string v4, "missing attachments"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_2b
    invoke-virtual {p0}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 44
    new-instance v3, Ljava/io/IOException;

    const-string v4, "too few attachments"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_41
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;-><init>()V

    .line 50
    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-virtual {p0}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 55
    .local v1, attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    const-string v3, "article"

    invoke-virtual {v1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 56
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;-><init>()V

    .line 74
    .end local v1           #attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    :cond_6f
    :goto_6f
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->setPlusActivity(Lcom/google/api/services/plus/model/Activity;)V

    .line 76
    return-object v0

    .line 58
    .restart local v1       #attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    :cond_73
    const-string v3, "video"

    invoke-virtual {v1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 59
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;-><init>()V

    .line 60
    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    goto :goto_6f

    .line 61
    :cond_85
    const-string v3, "audio"

    invoke-virtual {v1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 62
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;-><init>()V

    .line 63
    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    goto :goto_6f

    .line 64
    :cond_97
    const-string v3, "photo-album"

    invoke-virtual {v1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 65
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;-><init>()V

    .line 66
    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    goto :goto_6f

    .line 67
    :cond_a9
    const-string v3, "photo"

    invoke-virtual {v1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 70
    new-instance v3, Ljava/io/IOException;

    const-string v4, "unsupported attachment type"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getApiaryActivity(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    .line 91
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    .line 92
    const-string v1, "{\"kind\":\"plus#activity\",\"object\":{\"attachments\":[{\"displayName\":\"\",\"objectType\":\"article\",\"url\":\"\"}]}}\""

    const-class v2, Lcom/google/api/services/plus/model/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/JsonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plus/model/Activity;

    .line 93
    invoke-virtual {v0}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 94
    invoke-virtual {v1, p0}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->setUrl(Ljava/lang/String;)Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 95
    invoke-virtual {v1, p0}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->setDisplayName(Ljava/lang/String;)Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 98
    :try_start_24
    invoke-static {v0}, Lcom/google/android/apps/plus/network/ApiaryActivityFactory;->getApiaryActivity(Lcom/google/api/services/plus/model/Activity;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_29

    move-result-object v0

    .line 103
    return-object v0

    .line 99
    :catch_29
    move-exception v0

    .line 100
    new-instance v1, Ljava/io/IOException;

    const-string v2, "failed to create from string"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
