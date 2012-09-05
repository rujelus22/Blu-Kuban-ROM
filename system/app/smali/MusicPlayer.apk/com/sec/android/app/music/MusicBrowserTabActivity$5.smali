.class Lcom/sec/android/app/music/MusicBrowserTabActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "MusicBrowserTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFinishApp:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 274
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;->mFinishApp:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 308
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->reQueryCurrentListView()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$800(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    .line 309
    :goto_11
    return-void

    .line 284
    :cond_12
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 286
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 288
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;->mFinishApp:Ljava/lang/Boolean;

    monitor-enter v1

    .line 289
    :try_start_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6a

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;->mFinishApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_65

    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const-class v3, Lcom/sec/android/app/music/MusicFileEmptyActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->finish()V

    .line 300
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;->mFinishApp:Ljava/lang/Boolean;

    .line 302
    :cond_65
    monitor-exit v1

    goto :goto_11

    .line 305
    :catchall_67
    move-exception v0

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_2d .. :try_end_69} :catchall_67

    throw v0

    .line 304
    :cond_6a
    :try_start_6a
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->updateNowPlayingView()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$100(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    .line 305
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_67

    .line 306
    invoke-static {}, Lcom/sec/android/app/music/MusicUtils;->clearAlbumArtCache()V

    goto :goto_c
.end method
