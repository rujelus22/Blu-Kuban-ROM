.class Lcom/google/android/music/TrackBrowserActivity$13;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHasRemote:Z

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$13;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2091
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$13;->mHasRemote:Z

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2094
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$13;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$13;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$13;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "hasRemote"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2099
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2f

    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2100
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_33

    move v0, v7

    :goto_2d
    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$13;->mHasRemote:Z
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_35

    .line 2103
    :cond_2f
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 2105
    return-void

    :cond_33
    move v0, v8

    .line 2100
    goto :goto_2d

    .line 2103
    :catchall_35
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public taskCompleted()V
    .registers 6

    .prologue
    .line 2107
    iget-boolean v1, p0, Lcom/google/android/music/TrackBrowserActivity$13;->mHasRemote:Z

    if-nez v1, :cond_12

    .line 2109
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$13;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const v2, 0x7f0d003a

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2111
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2116
    .end local v0           #t:Landroid/widget/Toast;
    :goto_11
    return-void

    .line 2114
    :cond_12
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$13;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$13;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_11
.end method
