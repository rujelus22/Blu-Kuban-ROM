.class Lcom/google/android/music/athome/AtHomeDevicePlayback$12;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 2031
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$12;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 2

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$12;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSize()I

    move-result v0

    return v0
.end method

.method public getSong(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 4
    .parameter "id"

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$12;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

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
    .line 2034
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$12;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

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
    .line 2047
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$12;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSubmitter(J)Lcom/google/android/music/athome/api/SubmitterInfo;

    move-result-object v0

    return-object v0
.end method

.method public getToken(J)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 2039
    const/4 v0, 0x0

    return-object v0
.end method

.method public moveSong(JJ)Z
    .registers 6
    .parameter "songIdToMove"
    .parameter "desiredPreviousSongId"

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$12;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->moveSong(JJ)Z
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7300(Lcom/google/android/music/athome/AtHomeDevicePlayback;JJ)Z

    move-result v0

    return v0
.end method

.method public removeSong(J)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$12;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->removeSong(J)Z
    invoke-static {v0, p1, p2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7200(Lcom/google/android/music/athome/AtHomeDevicePlayback;J)Z

    move-result v0

    return v0
.end method
