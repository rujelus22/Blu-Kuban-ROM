.class Lcom/google/android/music/dl/artwork/ArtDownloadService$2;
.super Ljava/lang/Object;
.source "ArtDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadService;->startAsyncDownloads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-virtual {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->onDownloadQueueCompleted()V

    .line 205
    return-void
.end method
