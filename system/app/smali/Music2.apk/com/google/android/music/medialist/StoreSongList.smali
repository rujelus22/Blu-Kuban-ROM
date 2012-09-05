.class public Lcom/google/android/music/medialist/StoreSongList;
.super Lcom/google/android/music/medialist/AutoPlaylist;
.source "StoreSongList.java"


# instance fields
.field private final mHasStore:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3
    .parameter "sortOrder"
    .parameter "hasStore"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AutoPlaylist;-><init>(I)V

    .line 20
    iput-boolean p2, p0, Lcom/google/android/music/medialist/StoreSongList;->mHasStore:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/medialist/StoreSongList;->getSortOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/music/medialist/StoreSongList;->mHasStore:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/android/music/medialist/StoreSongList;->getSortParam()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getStoreAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected getListingNameResourceId()I
    .registers 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/music/medialist/StoreSongList;->mHasStore:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d005e

    :goto_7
    return v0

    :cond_8
    const v0, 0x7f0d0060

    goto :goto_7
.end method

.method protected getTitleResourceId()I
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/android/music/medialist/StoreSongList;->mHasStore:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d005f

    :goto_7
    return v0

    :cond_8
    const v0, 0x7f0d0061

    goto :goto_7
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
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, orders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-object v0
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 48
    invoke-static {p1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 50
    .local v0, musicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_4
    iget v1, p0, Lcom/google/android/music/medialist/StoreSongList;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setStoreSongsSortOrder(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 52
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 54
    return-void

    .line 52
    :catchall_d
    move-exception v1

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v1
.end method
