.class Lcom/google/android/music/dl/artwork/ArtDownloadService$1$1;
.super Ljava/lang/Object;
.source "ArtDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/dl/artwork/ArtDownloadService$1;

.field final synthetic val$watchList:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadService$1;Ljava/util/Set;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1$1;->this$1:Lcom/google/android/music/dl/artwork/ArtDownloadService$1;

    iput-object p2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1$1;->val$watchList:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1$1;->this$1:Lcom/google/android/music/dl/artwork/ArtDownloadService$1;

    iget-object v0, v0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1$1;->val$watchList:Ljava/util/Set;

    #calls: Lcom/google/android/music/dl/artwork/ArtDownloadService;->onWatchListReceived(Ljava/util/Set;)V
    invoke-static {v0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$000(Lcom/google/android/music/dl/artwork/ArtDownloadService;Ljava/util/Set;)V

    .line 296
    return-void
.end method
