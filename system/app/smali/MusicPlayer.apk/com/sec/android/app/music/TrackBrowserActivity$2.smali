.class Lcom/sec/android/app/music/TrackBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFinishApp:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$2;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 199
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$2;->mFinishApp:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 227
    :cond_c
    :goto_c
    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$2;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/MusicContentListView;->reQueryListCursor(Z)V

    .line 228
    :goto_16
    return-void

    .line 206
    :cond_17
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 208
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 210
    :cond_2f
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$2;->mFinishApp:Ljava/lang/Boolean;

    monitor-enter v4

    .line 211
    :try_start_32
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 212
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_61

    .line 217
    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$2;->mFinishApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 218
    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$2;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 219
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$2;->mFinishApp:Ljava/lang/Boolean;

    .line 221
    :cond_5c
    monitor-exit v4

    goto :goto_16

    .line 224
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :catchall_5e
    move-exception v3

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_32 .. :try_end_60} :catchall_5e

    throw v3

    .line 223
    .restart local v1       #path:Ljava/lang/String;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_61
    :try_start_61
    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$2;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #calls: Lcom/sec/android/app/music/TrackBrowserActivity;->updateNowPlayingView()V
    invoke-static {v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$200(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    .line 224
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_5e

    .line 225
    invoke-static {}, Lcom/sec/android/app/music/MusicUtils;->clearAlbumArtCache()V

    goto :goto_c
.end method
