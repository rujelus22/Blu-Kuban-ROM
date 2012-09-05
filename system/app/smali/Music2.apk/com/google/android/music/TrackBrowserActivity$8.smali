.class Lcom/google/android/music/TrackBrowserActivity$8;
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
    .line 955
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 959
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v4

    if-nez v4, :cond_9

    .line 1004
    :goto_8
    return-void

    .line 967
    :cond_9
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->updateIsNowPlaying()V
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1900(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 969
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.music.queuechanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 971
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 973
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2100(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 977
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v4, v5}, Lcom/google/android/music/TrackBrowserActivity;->access$2102(Lcom/google/android/music/TrackBrowserActivity;Z)Z

    .line 1003
    :cond_30
    :goto_30
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_8

    .line 979
    :cond_3a
    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 982
    .local v3, service:Lcom/google/android/music/IMusicPlaybackService;
    if-nez v3, :cond_44

    .line 983
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    goto :goto_8

    .line 988
    :cond_44
    :try_start_44
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-interface {v3}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v5

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4, v5}, Lcom/google/android/music/TrackBrowserActivity;->access$002(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;

    .line 989
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 990
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/TrackBrowserActivity;->access$2200(Lcom/google/android/music/TrackBrowserActivity;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/music/medialist/SongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    .line 991
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_7b

    .line 992
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_6f} :catch_70

    goto :goto_30

    .line 997
    .end local v1           #c:Landroid/database/Cursor;
    :catch_70
    move-exception v2

    .line 998
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "TrackBrowser"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 994
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #c:Landroid/database/Cursor;
    :cond_7b
    :try_start_7b
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$8;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_84} :catch_70

    goto :goto_30
.end method
