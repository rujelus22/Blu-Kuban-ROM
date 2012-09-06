.class Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/OfflineMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeselectArtistsOfAlbumTask"
.end annotation


# instance fields
.field private final mAlbumId:J

.field private final mArtistId:J

.field private mNotify:Z

.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/OfflineMusicManager;JJ)V
    .registers 7
    .parameter
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mNotify:Z

    .line 205
    iput-wide p2, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mAlbumId:J

    .line 206
    iput-wide p4, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mArtistId:J

    .line 207
    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 6

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mAlbumId:J

    iget-wide v3, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mArtistId:J

    #calls: Lcom/google/android/music/OfflineMusicManager;->clearArtistsOfAlbum(JJ)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->access$500(Lcom/google/android/music/OfflineMusicManager;JJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mNotify:Z

    .line 211
    return-void
.end method

.method public taskCompleted()V
    .registers 4

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mNotify:Z

    if-eqz v0, :cond_13

    .line 220
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mArtistId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    #calls: Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/google/android/music/OfflineMusicManager;->access$300(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;)V

    .line 222
    :cond_13
    return-void
.end method
