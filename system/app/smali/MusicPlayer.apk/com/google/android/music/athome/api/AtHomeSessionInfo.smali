.class public Lcom/google/android/music/athome/api/AtHomeSessionInfo;
.super Ljava/lang/Object;
.source "AtHomeSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAtHomeDeviceAccount:Ljava/lang/String;

.field private mCreateTime:J

.field private mIsPlaying:Z

.field private mLastPlayTime:J

.field private mMaxQueueSize:I

.field private mMode:I

.field private mRepeatMode:I

.field private mSessionId:J

.field private mSessionVariables:Landroid/support/place/rpc/RpcData;

.field private mShuffle:Z

.field private mSubmitterId:J

.field private mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 218
    new-instance v0, Lcom/google/android/music/athome/api/AtHomeSessionInfo$1;

    invoke-direct {v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mRepeatMode:I

    .line 33
    iput-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mShuffle:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 3
    .parameter "tc"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mRepeatMode:I

    .line 33
    iput-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mShuffle:Z

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getAtHomeDeviceAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mAtHomeDeviceAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mCreateTime:J

    return-wide v0
.end method

.method public getLastPlayTime()J
    .registers 3

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mLastPlayTime:J

    return-wide v0
.end method

.method public getMaxQueueSize()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mMaxQueueSize:I

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mMode:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mRepeatMode:I

    return v0
.end method

.method public getSessionId()J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionId:J

    return-wide v0
.end method

.method public getSessionVariable(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;
    .registers 3
    .parameter "name"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionVariables:Landroid/support/place/rpc/RpcData;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionVariables:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 124
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionVariables:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 126
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getSessionVariables()Landroid/support/place/rpc/RpcData;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionVariables:Landroid/support/place/rpc/RpcData;

    return-object v0
.end method

.method public getSubmitterId()J
    .registers 3

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSubmitterId:J

    return-wide v0
.end method

.method public getUpdateTime()J
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mUpdateTime:J

    return-wide v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mIsPlaying:Z

    return v0
.end method

.method public isShuffle()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mShuffle:Z

    return v0
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 189
    const-string v0, "session"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setSessionId(J)V

    .line 190
    const-string v0, "atHomeAccount"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setAtHomeDeviceAccount(Ljava/lang/String;)V

    .line 191
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setMode(I)V

    .line 192
    const-string v0, "submitter"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setSubmitterId(J)V

    .line 193
    const-string v0, "createTime"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setCreateTime(J)V

    .line 194
    const-string v0, "updateTime"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setUpdateTime(J)V

    .line 195
    const-string v0, "qmax"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setMaxQueueSize(I)V

    .line 196
    const-string v0, "playing"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setIsPlaying(Z)V

    .line 197
    const-string v0, "playTime"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setLastPlayTime(J)V

    .line 198
    const-string v0, "repeat"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setRepeatMode(I)V

    .line 199
    const-string v0, "shuffle"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setShuffle(Z)V

    .line 200
    const-string v0, "vars"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setSessionVariables(Landroid/support/place/rpc/RpcData;)V

    .line 201
    return-void
.end method

.method public setAtHomeDeviceAccount(Ljava/lang/String;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mAtHomeDeviceAccount:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCreateTime(J)V
    .registers 3
    .parameter "createTime"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mCreateTime:J

    .line 94
    return-void
.end method

.method public setIsPlaying(Z)V
    .registers 2
    .parameter "isPlaying"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mIsPlaying:Z

    .line 162
    return-void
.end method

.method public setLastPlayTime(J)V
    .registers 3
    .parameter "lastPlayTime"

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mLastPlayTime:J

    .line 170
    return-void
.end method

.method public setMaxQueueSize(I)V
    .registers 2
    .parameter "maxQueueSize"

    .prologue
    .line 153
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mMaxQueueSize:I

    .line 154
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 85
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mMode:I

    .line 86
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2
    .parameter "repeatMode"

    .prologue
    .line 177
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mRepeatMode:I

    .line 178
    return-void
.end method

.method public setSessionId(J)V
    .registers 3
    .parameter "sessionId"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionId:J

    .line 70
    return-void
.end method

.method public setSessionVariable(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionVariables:Landroid/support/place/rpc/RpcData;

    if-nez v0, :cond_e

    .line 138
    if-nez p2, :cond_7

    .line 150
    :cond_6
    :goto_6
    return-void

    .line 141
    :cond_7
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionVariables:Landroid/support/place/rpc/RpcData;

    .line 143
    :cond_e
    if-nez p2, :cond_1e

    .line 144
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionVariables:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionVariables:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1}, Landroid/support/place/rpc/RpcData;->remove(Ljava/lang/String;)V

    goto :goto_6

    .line 148
    :cond_1e
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionVariables:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto :goto_6
.end method

.method public setSessionVariables(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter "vars"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSessionVariables:Landroid/support/place/rpc/RpcData;

    .line 110
    return-void
.end method

.method public setShuffle(Z)V
    .registers 2
    .parameter "shuffle"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mShuffle:Z

    .line 186
    return-void
.end method

.method public setSubmitterId(J)V
    .registers 3
    .parameter "submitter"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mSubmitterId:J

    .line 78
    return-void
.end method

.method public setUpdateTime(J)V
    .registers 3
    .parameter "updateTime"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->mUpdateTime:J

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 239
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 240
    .local v0, data:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 241
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 230
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 231
    .local v1, tc:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 232
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 233
    .local v0, serial:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 235
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 204
    const-string v0, "session"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 205
    const-string v0, "atHomeAccount"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getAtHomeDeviceAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "mode"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 207
    const-string v0, "submitter"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSubmitterId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 208
    const-string v0, "createTime"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 209
    const-string v0, "updateTime"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 210
    const-string v0, "qmax"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getMaxQueueSize()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 211
    const-string v0, "playing"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->isPlaying()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    const-string v0, "playTime"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getLastPlayTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 213
    const-string v0, "repeat"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getRepeatMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 214
    const-string v0, "shuffle"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->isShuffle()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    const-string v0, "vars"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionVariables()Landroid/support/place/rpc/RpcData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 216
    return-void
.end method
