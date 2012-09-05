.class Lcom/sec/android/app/music/TrackBrowserActivity$21$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity$21;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/music/TrackBrowserActivity$21;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity$21;)V
    .registers 2
    .parameter

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$21$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$21;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 1265
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$21$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$21;

    iget-object v6, v6, Lcom/sec/android/app/music/TrackBrowserActivity$21;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-wide v7, Lcom/sec/android/app/music/MusicUtils;->sReorderPlayListId:J

    iget-object v9, p0, Lcom/sec/android/app/music/TrackBrowserActivity$21$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$21;

    iget-object v9, v9, Lcom/sec/android/app/music/TrackBrowserActivity$21;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1300(Lcom/sec/android/app/music/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v6, v7, v8, v9, v10}, Lcom/sec/android/app/music/MusicUtils;->movePlayList(Landroid/content/Context;JJ)[J

    move-result-object v4

    .line 1267
    .local v4, list:[J
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$21$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$21;

    iget-object v6, v6, Lcom/sec/android/app/music/TrackBrowserActivity$21;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mIsCurrentPlayingList:Z
    invoke-static {v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1400(Lcom/sec/android/app/music/TrackBrowserActivity;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1269
    const-wide/16 v0, -0x1

    .line 1271
    .local v0, audioId:J
    :try_start_2a
    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v6}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_3f

    move-result-wide v0

    .line 1275
    :goto_30
    const/4 v5, -0x1

    .line 1276
    .local v5, position:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_32
    array-length v6, v4

    if-ge v3, v6, :cond_44

    .line 1277
    aget-wide v6, v4, v3

    cmp-long v6, v0, v6

    if-nez v6, :cond_3c

    .line 1278
    move v5, v3

    .line 1276
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1272
    .end local v3           #i:I
    .end local v5           #position:I
    :catch_3f
    move-exception v2

    .line 1273
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_30

    .line 1282
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #i:I
    .restart local v5       #position:I
    :cond_44
    :try_start_44
    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v6, v4, v5}, Lcom/sec/android/app/music/ICorePlayerService;->reorderQueueItem([JI)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_65

    .line 1287
    .end local v0           #audioId:J
    .end local v3           #i:I
    .end local v5           #position:I
    :cond_49
    :goto_49
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$21$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$21;

    iget-object v6, v6, Lcom/sec/android/app/music/TrackBrowserActivity$21;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1288
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$21$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$21;

    iget-object v6, v6, Lcom/sec/android/app/music/TrackBrowserActivity$21;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/TrackBrowserActivity;->setResult(I)V

    .line 1289
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$21$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$21;

    iget-object v6, v6, Lcom/sec/android/app/music/TrackBrowserActivity$21;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 1290
    return-void

    .line 1283
    .restart local v0       #audioId:J
    .restart local v3       #i:I
    .restart local v5       #position:I
    :catch_65
    move-exception v2

    .line 1284
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_49
.end method
