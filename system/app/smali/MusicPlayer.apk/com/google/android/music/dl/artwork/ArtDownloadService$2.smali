.class Lcom/google/android/music/dl/artwork/ArtDownloadService$2;
.super Ljava/lang/Thread;
.source "ArtDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFilesAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;->setPriority(I)V

    .line 307
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    #calls: Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFilesAndStartAsyncDownloads()V
    invoke-static {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$100(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    .line 308
    return-void
.end method
