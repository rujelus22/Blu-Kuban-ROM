.class public Lcom/google/android/music/athome/api/AtHomePlayState;
.super Ljava/lang/Object;
.source "AtHomePlayState.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Lcom/google/android/music/athome/api/AtHomePlayState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentSongQueueId:J

.field private mErrorType:I

.field private mIsInErrorState:Z

.field private mIsPlaying:Z

.field private mIsPreparing:Z

.field private mPlaybackPosition:J

.field private mSessionId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 181
    new-instance v0, Lcom/google/android/music/athome/api/AtHomePlayState$1;

    invoke-direct {v0}, Lcom/google/android/music/athome/api/AtHomePlayState$1;-><init>()V

    sput-object v0, Lcom/google/android/music/athome/api/AtHomePlayState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v2, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mSessionId:J

    .line 20
    iput-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPlaying:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPreparing:Z

    .line 22
    iput-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsInErrorState:Z

    .line 23
    iput v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mErrorType:I

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mCurrentSongQueueId:J

    .line 25
    iput-wide v2, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mPlaybackPosition:J

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 6
    .parameter "tc"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v2, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mSessionId:J

    .line 20
    iput-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPlaying:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPreparing:Z

    .line 22
    iput-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsInErrorState:Z

    .line 23
    iput v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mErrorType:I

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mCurrentSongQueueId:J

    .line 25
    iput-wide v2, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mPlaybackPosition:J

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/AtHomePlayState;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentSongQueueId()J
    .registers 3

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mCurrentSongQueueId:J

    return-wide v0
.end method

.method public getErrorType()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mErrorType:I

    return v0
.end method

.method public getPlaybackPosition()J
    .registers 3

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mPlaybackPosition:J

    return-wide v0
.end method

.method public getSessionId()J
    .registers 3

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mSessionId:J

    return-wide v0
.end method

.method public isInErrorState()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsInErrorState:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPlaying:Z

    return v0
.end method

.method public isPreparing()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPreparing:Z

    return v0
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 160
    const-string v0, "session"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomePlayState;->setSessionId(J)V

    .line 161
    const-string v0, "playing"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->setPlaying(Z)V

    .line 162
    const-string v0, "preparing"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->setPreparing(Z)V

    .line 163
    const-string v0, "err"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->setInErrorState(Z)V

    .line 166
    const-string v0, "errType"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mErrorType:I

    .line 167
    const-string v0, "queueId"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomePlayState;->setCurrentSongQueueId(J)V

    .line 168
    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomePlayState;->setPlaybackPosition(J)V

    .line 169
    return-void
.end method

.method public samePlayState(Lcom/google/android/music/athome/api/AtHomePlayState;)Z
    .registers 6
    .parameter "anotherState"

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mCurrentSongQueueId:J

    iget-wide v2, p1, Lcom/google/android/music/athome/api/AtHomePlayState;->mCurrentSongQueueId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPlaying:Z

    iget-boolean v1, p1, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPlaying:Z

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPreparing:Z

    iget-boolean v1, p1, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPreparing:Z

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsInErrorState:Z

    iget-boolean v1, p1, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsInErrorState:Z

    if-ne v0, v1, :cond_22

    iget v0, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mErrorType:I

    iget v1, p1, Lcom/google/android/music/athome/api/AtHomePlayState;->mErrorType:I

    if-ne v0, v1, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public setCurrentSongQueueId(J)V
    .registers 3
    .parameter "currentSongQueueId"

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mCurrentSongQueueId:J

    .line 143
    return-void
.end method

.method public setErrorType(I)V
    .registers 5
    .parameter "errorType"

    .prologue
    .line 120
    invoke-static {p1}, Lcom/google/android/music/athome/api/AtHomeErrorType;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to set unrecognized error type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, message:Ljava/lang/String;
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const v1, 0xbbfd1

    iput v1, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mErrorType:I

    .line 127
    .end local v0           #message:Ljava/lang/String;
    :goto_28
    return-void

    .line 125
    :cond_29
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mErrorType:I

    goto :goto_28
.end method

.method public setInErrorState(Z)V
    .registers 2
    .parameter "inErrorState"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsInErrorState:Z

    .line 99
    return-void
.end method

.method public setPlaybackPosition(J)V
    .registers 3
    .parameter "playbackPosition"

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mPlaybackPosition:J

    .line 157
    return-void
.end method

.method public setPlaying(Z)V
    .registers 2
    .parameter "playing"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPlaying:Z

    .line 76
    return-void
.end method

.method public setPreparing(Z)V
    .registers 2
    .parameter "preparing"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mIsPreparing:Z

    .line 84
    return-void
.end method

.method public setSessionId(J)V
    .registers 3
    .parameter "sessionId"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomePlayState;->mSessionId:J

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 45
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 46
    .local v0, data:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 47
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 193
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 194
    .local v1, tc:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v1}, Lcom/google/android/music/athome/api/AtHomePlayState;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 195
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 196
    .local v0, serial:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 198
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 172
    const-string v0, "session"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomePlayState;->getSessionId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 173
    const-string v0, "playing"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomePlayState;->isPlaying()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    const-string v0, "preparing"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomePlayState;->isPreparing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v0, "err"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomePlayState;->isInErrorState()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    const-string v0, "errType"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomePlayState;->getErrorType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 177
    const-string v0, "queueId"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomePlayState;->getCurrentSongQueueId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 178
    const-string v0, "pos"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomePlayState;->getPlaybackPosition()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 179
    return-void
.end method
