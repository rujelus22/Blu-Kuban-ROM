.class public Lcom/google/android/music/medialist/ThumbsUpList;
.super Lcom/google/android/music/medialist/AutoPlaylist;
.source "ThumbsUpList.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "sortOrder"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AutoPlaylist;-><init>(I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/medialist/ThumbsUpList;->getSortOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/music/medialist/ThumbsUpList;->getSortParam()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getThumbsUpAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected getListingNameResourceId()I
    .registers 2

    .prologue
    .line 27
    const v0, 0x7f0d0072

    return v0
.end method

.method protected getTitleResourceId()I
    .registers 2

    .prologue
    .line 22
    const v0, 0x7f0d0073

    return v0
.end method

.method public getValidSortOrders()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, orders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-object v0
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 45
    invoke-static {p1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 47
    .local v0, musicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_4
    iget v1, p0, Lcom/google/android/music/medialist/ThumbsUpList;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setThumbsUpSongsSortOrder(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 49
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 51
    return-void

    .line 49
    :catchall_d
    move-exception v1

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v1
.end method
