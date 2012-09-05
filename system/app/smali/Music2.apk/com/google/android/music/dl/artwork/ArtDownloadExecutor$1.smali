.class Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$1;
.super Ljava/lang/Object;
.source "ArtDownloadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$1;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$1;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->notifyQueueComplete()V

    .line 123
    return-void
.end method
