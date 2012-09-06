.class public Lcom/google/android/music/medialist/UriSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "UriSongList.java"


# instance fields
.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 19
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 20
    iput-object p1, p0, Lcom/google/android/music/medialist/UriSongList;->mUri:Landroid/net/Uri;

    .line 21
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, uriString:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/medialist/UriSongList;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_b

    .line 37
    iget-object v1, p0, Lcom/google/android/music/medialist/UriSongList;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_b
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/music/medialist/UriSongList;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getItemLayout()I
    .registers 2

    .prologue
    .line 53
    const v0, 0x7f04005e

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidSortOrders()Ljava/util/ArrayList;
    .registers 2
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
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for UriSongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
