.class Lcom/google/android/music/dl/DownloadExecutor$3;
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


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadExecutor;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadExecutor$3;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor$3;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    #calls: Lcom/google/android/music/dl/DownloadExecutor;->notifyQueueFailed()V
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadExecutor;->access$200(Lcom/google/android/music/dl/DownloadExecutor;)V

    .line 231
    return-void
.end method
