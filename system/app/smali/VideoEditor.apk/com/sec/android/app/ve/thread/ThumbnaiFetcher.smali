.class public Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;
.super Ljava/lang/Thread;
.source "ThumbnaiFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;,
        Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;
    }
.end annotation


# static fields
.field private static _instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;


# instance fields
.field private mJobList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminate:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;
    .registers 2

    .prologue
    .line 24
    const-class v1, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    if-nez v0, :cond_e

    .line 25
    new-instance v0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    .line 26
    :cond_e
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addOperation(Ljava/lang/String;FLandroid/view/View;Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;)V
    .registers 12
    .parameter "filePath"
    .parameter "time"
    .parameter "targetView"
    .parameter "callback"

    .prologue
    .line 57
    iget-object v6, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mJobList:Ljava/util/Vector;

    new-instance v0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;-><init>(Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;Ljava/lang/String;FLandroid/view/View;Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    monitor-enter v1

    .line 60
    :try_start_12
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 59
    monitor-exit v1

    .line 62
    return-void

    .line 59
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mJobList:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mJobList:Ljava/util/Vector;

    .line 36
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->isAlive()Z

    move-result v0

    if-nez v0, :cond_14

    .line 37
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->start()V

    .line 38
    :cond_14
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 65
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mTerminate:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mJobList:Ljava/util/Vector;

    if-nez v3, :cond_3a

    .line 87
    :cond_9
    const-string v3, " ~~~~~~~~ ThumbnailFetcher thread is terminated ~~~~~~~~~"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 88
    return-void

    .line 68
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;

    .line 70
    .local v2, info:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;
    #getter for: Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->access$0(Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;)Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->targetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->access$1(Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;->isTargetViewExist(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, bitmap:Landroid/graphics/Bitmap;
    #getter for: Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->access$0(Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;)Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->targetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->access$1(Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;)Landroid/view/View;

    move-result-object v4

    #getter for: Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->time:F
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->access$2(Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;)F

    move-result v5

    invoke-interface {v3, v4, v0, v5}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;->bitmapCreated(Landroid/view/View;Landroid/graphics/Bitmap;F)V

    .line 75
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_35
    iget-object v3, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 66
    .end local v2           #info:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;
    :cond_3a
    iget-object v3, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_f

    .line 77
    const-string v3, " ~~~~~~~~ ThumbnailFetcher thread is waiting for the job ~~~~~~~~~"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 78
    sget-object v4, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    monitor-enter v4

    .line 80
    :try_start_4a
    sget-object v3, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_51
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4f} :catch_54

    .line 78
    :goto_4f
    :try_start_4f
    monitor-exit v4

    goto :goto_1

    :catchall_51
    move-exception v3

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_51

    throw v3

    .line 81
    :catch_54
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_55
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_51

    goto :goto_4f
.end method

.method public terminate()V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mJobList:Ljava/util/Vector;

    if-eqz v0, :cond_9

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 46
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->mTerminate:Z

    .line 47
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    if-eqz v0, :cond_19

    .line 48
    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    monitor-enter v1

    .line 49
    :try_start_13
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 48
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    .line 52
    :cond_19
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->_instance:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    .line 53
    return-void

    .line 48
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method
