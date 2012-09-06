.class public Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
.super Ljava/lang/Object;
.source "PrefetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PrefetchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrefetchContext"
.end annotation


# instance fields
.field private mCacheListener:Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;

.field private mDownloadFailCount:I

.field private mLastVersion:I

.field private volatile mStopSync:Z

.field private mThread:Ljava/lang/Thread;

.field public result:Landroid/content/SyncResult;

.field final synthetic this$0:Lcom/google/android/picasasync/PrefetchHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PrefetchHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V
    .registers 5
    .parameter
    .parameter "syncResult"
    .parameter "thread"

    .prologue
    .line 720
    iput-object p1, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->this$0:Lcom/google/android/picasasync/PrefetchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncResult;

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->result:Landroid/content/SyncResult;

    .line 722
    iput-object p3, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mThread:Ljava/lang/Thread;

    .line 723
    return-void
.end method


# virtual methods
.method public checkCacheConfigVersion()Z
    .registers 3

    .prologue
    .line 730
    iget v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mLastVersion:I

    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->this$0:Lcom/google/android/picasasync/PrefetchHelper;

    #getter for: Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/picasasync/PrefetchHelper;->access$000(Lcom/google/android/picasasync/PrefetchHelper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getDownloadFailCount()I
    .registers 2

    .prologue
    .line 743
    iget v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mDownloadFailCount:I

    return v0
.end method

.method public onDownloadFinish(JZ)V
    .registers 5
    .parameter "photoId"
    .parameter "success"

    .prologue
    .line 752
    if-eqz p3, :cond_f

    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mDownloadFailCount:I

    .line 753
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mCacheListener:Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;

    if-eqz v0, :cond_e

    .line 754
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mCacheListener:Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;->onDownloadFinish(JZ)V

    .line 756
    :cond_e
    return-void

    .line 752
    :cond_f
    iget v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mDownloadFailCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public setCacheDownloadListener(Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 734
    iput-object p1, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mCacheListener:Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;

    .line 735
    return-void
.end method

.method public stopSync()V
    .registers 2

    .prologue
    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mStopSync:Z

    .line 739
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 740
    return-void
.end method

.method public syncInterrupted()Z
    .registers 2

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mStopSync:Z

    return v0
.end method

.method public updateCacheConfigVersion()V
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->this$0:Lcom/google/android/picasasync/PrefetchHelper;

    #getter for: Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/picasasync/PrefetchHelper;->access$000(Lcom/google/android/picasasync/PrefetchHelper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mLastVersion:I

    .line 727
    return-void
.end method
