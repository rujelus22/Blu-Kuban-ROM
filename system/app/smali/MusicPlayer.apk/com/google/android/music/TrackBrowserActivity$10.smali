.class Lcom/google/android/music/TrackBrowserActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1128
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v4

    if-nez v4, :cond_a

    .line 1177
    :goto_9
    return-void

    .line 1136
    :cond_a
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->updateIsNowPlaying()V
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2500(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 1138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.music.queuechanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1140
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2600(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1142
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2700(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1146
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v4, v5}, Lcom/google/android/music/TrackBrowserActivity;->access$2702(Lcom/google/android/music/TrackBrowserActivity;Z)Z

    .line 1176
    :cond_30
    :goto_30
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_9

    .line 1148
    :cond_3a
    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 1151
    .local v3, service:Lcom/google/android/music/IMusicPlaybackService;
    if-nez v3, :cond_44

    .line 1155
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    goto :goto_9

    .line 1160
    :cond_44
    :try_start_44
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->cleanMediaList()V
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2800(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 1161
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-interface {v3}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v5

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4, v5}, Lcom/google/android/music/TrackBrowserActivity;->access$002(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;

    .line 1162
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 1163
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/TrackBrowserActivity;->access$2900(Lcom/google/android/music/TrackBrowserActivity;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/google/android/music/medialist/SongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    .line 1164
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_81

    .line 1165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_75} :catch_76

    goto :goto_30

    .line 1170
    .end local v1           #c:Landroid/database/Cursor;
    :catch_76
    move-exception v2

    .line 1171
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "TrackBrowser"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 1167
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #c:Landroid/database/Cursor;
    :cond_81
    :try_start_81
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8a} :catch_76

    goto :goto_30
.end method
