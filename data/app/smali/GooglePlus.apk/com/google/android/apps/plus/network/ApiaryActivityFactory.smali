.class public Lcom/google/android/apps/plus/network/ApiaryActivityFactory;
.super Ljava/lang/Object;
.source "ApiaryActivityFactory.java"


# direct methods
.method public static getApiaryActivity(Lcom/google/api/services/plusi/model/LinkPreviewResponse;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 5
    .parameter "linkPreview"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    if-nez p0, :cond_b

    .line 37
    new-instance v2, Ljava/io/IOException;

    const-string v3, "link preview is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_b
    const-string v2, "ApiaryActivityFactory"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 41
    const-string v2, "ApiaryActivityFactory"

    invoke-static {}, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->getInstance()Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_21
    iget-object v2, p0, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->mediaLayout:Ljava/util/List;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->mediaLayout:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 45
    :cond_2d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "empty media layout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_35
    iget-object v2, p0, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->mediaLayout:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/MediaLayout;

    .line 50
    .local v1, mediaLayout:Lcom/google/api/services/plusi/model/MediaLayout;
    const-string v2, "WEBPAGE"

    iget-object v3, v1, Lcom/google/api/services/plusi/model/MediaLayout;->layoutType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 51
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;-><init>()V

    .line 64
    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    :goto_4d
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->setLinkPreview(Lcom/google/api/services/plusi/model/LinkPreviewResponse;)V

    .line 66
    return-object v0

    .line 52
    :cond_51
    const-string v2, "VIDEO"

    iget-object v3, v1, Lcom/google/api/services/plusi/model/MediaLayout;->layoutType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 53
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;-><init>()V

    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    goto :goto_4d

    .line 54
    :cond_61
    const-string v2, "SKYJAM_PREVIEW"

    iget-object v3, v1, Lcom/google/api/services/plusi/model/MediaLayout;->layoutType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 55
    new-instance v0, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;-><init>()V

    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    goto :goto_4d

    .line 56
    :cond_71
    const-string v2, "SKYJAM_PREVIEW_ALBUM"

    iget-object v3, v1, Lcom/google/api/services/plusi/model/MediaLayout;->layoutType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 57
    new-instance v0, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiarySkyjamActivity;-><init>()V

    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    goto :goto_4d

    .line 58
    :cond_81
    const-string v2, "IMAGE"

    iget-object v3, v1, Lcom/google/api/services/plusi/model/MediaLayout;->layoutType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 59
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;-><init>()V

    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    goto :goto_4d

    .line 61
    :cond_91
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unsupported attachment type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
