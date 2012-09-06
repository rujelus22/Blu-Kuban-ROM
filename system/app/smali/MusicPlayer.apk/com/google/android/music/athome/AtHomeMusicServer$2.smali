.class Lcom/google/android/music/athome/AtHomeMusicServer$2;
.super Ljava/lang/Object;
.source "AtHomeMusicServer.java"

# interfaces
.implements Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeMusicServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeMusicServer;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeMusicServer;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$2;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$2;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$400(Lcom/google/android/music/athome/AtHomeMusicServer;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSize()I

    move-result v0

    return v0
.end method

.method public getSong(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 4
    .parameter "id"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$2;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$400(Lcom/google/android/music/athome/AtHomeMusicServer;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->findSong(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSongs()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$2;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$400(Lcom/google/android/music/athome/AtHomeMusicServer;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getContent()Lcom/google/android/music/athome/api/AtHomePlayQueueContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->getSongs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitter(J)Lcom/google/android/music/athome/api/SubmitterInfo;
    .registers 4
    .parameter "submitterId"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$2;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$400(Lcom/google/android/music/athome/AtHomeMusicServer;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSubmitter(J)Lcom/google/android/music/athome/api/SubmitterInfo;

    move-result-object v0

    return-object v0
.end method

.method public getToken(J)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$2;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$400(Lcom/google/android/music/athome/AtHomeMusicServer;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v1

    monitor-enter v1

    .line 117
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$2;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mSongQueueIdToTokenMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$500(Lcom/google/android/music/athome/AtHomeMusicServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public moveSong(JJ)Z
    .registers 7
    .parameter "songIdToMove"
    .parameter "desiredPreviousSongId"

    .prologue
    .line 139
    const-string v0, "aah.Music"

    const-string v1, "moveSong requested on tungsten side"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public removeSong(J)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 134
    const-string v0, "aah.Music"

    const-string v1, "RemoveSong requested on tungsten side"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    return v0
.end method
