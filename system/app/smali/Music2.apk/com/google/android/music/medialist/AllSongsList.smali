.class public Lcom/google/android/music/medialist/AllSongsList;
.super Lcom/google/android/music/medialist/AutoPlaylist;
.source "AllSongsList.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "sortOrder"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AutoPlaylist;-><init>(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/medialist/AllSongsList;->getSortOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .parameter "context"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/music/medialist/AllSongsList;->getSortParam()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, sortParam:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioSorted(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    .line 76
    const/4 v1, 0x5

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p1

    move v5, p2

    move v6, p3

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemLayout()I
    .registers 2

    .prologue
    .line 82
    const v0, 0x7f04004c

    return v0
.end method

.method protected getListingNameResourceId()I
    .registers 2

    .prologue
    .line 33
    const v0, 0x7f0d005c

    return v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 68
    const-string v0, ""

    return-object v0
.end method

.method protected getTitleResourceId()I
    .registers 2

    .prologue
    .line 28
    const v0, 0x7f0d005d

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
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, orders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-object v0
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 49
    invoke-static {p1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 50
    .local v0, musicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    iget v1, p0, Lcom/google/android/music/medialist/AllSongsList;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setAllSongsSortOrder(I)V

    .line 51
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
