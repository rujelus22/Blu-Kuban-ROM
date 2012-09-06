.class Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ArtDownloadServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumArtWatchedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;


# direct methods
.method private constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "albumIdList"

    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-virtual {v2}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->getWatchedAlbums()[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;->setResultExtras(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method
