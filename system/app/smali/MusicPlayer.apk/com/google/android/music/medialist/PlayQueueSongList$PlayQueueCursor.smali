.class Lcom/google/android/music/medialist/PlayQueueSongList$PlayQueueCursor;
.super Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;
.source "PlayQueueSongList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/PlayQueueSongList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayQueueCursor"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;J)V
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;J)V

    .line 26
    return-void
.end method

.method private disableGroupPlay()V
    .registers 4

    .prologue
    .line 41
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_9

    .line 43
    :try_start_4
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->disableGroupPlay()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 48
    :cond_9
    :goto_9
    return-void

    .line 44
    :catch_a
    move-exception v0

    .line 45
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PlayQueueSongList"

    const-string v2, "disableGroupPlay() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method


# virtual methods
.method public moveItem(II)V
    .registers 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/music/medialist/PlayQueueSongList$PlayQueueCursor;->disableGroupPlay()V

    .line 31
    invoke-super {p0, p1, p2}, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->moveItem(II)V

    .line 32
    return-void
.end method

.method public removeItem(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/music/medialist/PlayQueueSongList$PlayQueueCursor;->disableGroupPlay()V

    .line 37
    invoke-super {p0, p1}, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->removeItem(I)V

    .line 38
    return-void
.end method
