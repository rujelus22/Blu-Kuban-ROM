.class Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ArtDownloadServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumArtChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;


# direct methods
.method private constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    const-string v2, "albumId"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 73
    .local v0, albumId:J
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    #calls: Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->handleAlbumArtChanged(J)V
    invoke-static {v2, v0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->access$000(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;J)V

    .line 74
    return-void
.end method
