.class Lcom/google/android/music/dl/artwork/ArtDownloadService$4;
.super Ljava/lang/Object;
.source "ArtDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadService;->queueAlbumArtRequest(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

.field final synthetic val$albumId:J


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$4;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    iput-wide p2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$4;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$4;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    iget-wide v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$4;->val$albumId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->queueAlbumArtRequest(J)V

    .line 489
    return-void
.end method
