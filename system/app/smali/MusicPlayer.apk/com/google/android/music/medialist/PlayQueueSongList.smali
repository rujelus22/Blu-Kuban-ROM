.class public Lcom/google/android/music/medialist/PlayQueueSongList;
.super Lcom/google/android/music/medialist/PlaylistSongList;
.source "PlayQueueSongList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/medialist/PlayQueueSongList$PlayQueueCursor;
    }
.end annotation


# direct methods
.method public constructor <init>(J)V
    .registers 5
    .parameter "playQueuePlaylistId"

    .prologue
    .line 52
    const-string v0, "<PlayQueue>"

    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 6
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/music/medialist/PlayQueueSongList$PlayQueueCursor;

    invoke-virtual {p0}, Lcom/google/android/music/medialist/PlayQueueSongList;->getPlaylistId()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/music/medialist/PlayQueueSongList$PlayQueueCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;J)V

    return-object v0
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/medialist/PlayQueueSongList;->getPlaylistId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hasStablePrimaryIds()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method
