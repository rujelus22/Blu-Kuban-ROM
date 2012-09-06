.class Lcom/google/android/music/PlaylistBrowserActivity$4;
.super Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/PlaylistBrowserActivity;->getAutoPlaylistCursor()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/content/Context;[Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;-><init>(Landroid/content/Context;[Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public createAutoPlaylistRow(J)[Ljava/lang/Object;
    .registers 8
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 528
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$300(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-static {p1, p2, v4, v2}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    .line 530
    .local v0, playlist:Lcom/google/android/music/medialist/AutoPlaylist;
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/Object;

    .line 531
    .local v1, row:[Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 532
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0, v3}, Lcom/google/android/music/medialist/AutoPlaylist;->getListingName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 534
    const/4 v2, 0x2

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 535
    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 536
    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 537
    const/4 v2, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 538
    return-object v1
.end method
