.class Lcom/google/android/music/dl/artwork/ArtDownloadService$6$1;
.super Ljava/lang/Object;
.source "ArtDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadService$6;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/dl/artwork/ArtDownloadService$6;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadService$6;)V
    .registers 2
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$6$1;->this$1:Lcom/google/android/music/dl/artwork/ArtDownloadService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$6$1;->this$1:Lcom/google/android/music/dl/artwork/ArtDownloadService$6;

    iget-object v0, v0, Lcom/google/android/music/dl/artwork/ArtDownloadService$6;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-virtual {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->onDownloadQueueCompleted()V

    .line 628
    return-void
.end method
