.class Lcom/google/android/music/dl/DownloadExecutor$2;
.super Ljava/lang/Object;
.source "DownloadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/DownloadExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadExecutor;

.field final synthetic val$order:Lcom/google/android/music/dl/DownloadOrder;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadExecutor;Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadExecutor$2;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    iput-object p2, p0, Lcom/google/android/music/dl/DownloadExecutor$2;->val$order:Lcom/google/android/music/dl/DownloadOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor$2;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    #getter for: Lcom/google/android/music/dl/DownloadExecutor;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadExecutor;->access$100(Lcom/google/android/music/dl/DownloadExecutor;)Lcom/google/android/music/dl/BufferProgress;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor$2;->val$order:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/BufferProgress;->notifyBufferProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 207
    return-void
.end method
