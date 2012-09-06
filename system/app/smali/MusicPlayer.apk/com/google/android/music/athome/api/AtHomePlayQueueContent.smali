.class public Lcom/google/android/music/athome/api/AtHomePlayQueueContent;
.super Ljava/lang/Object;
.source "AtHomePlayQueueContent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Lcom/google/android/music/athome/api/AtHomePlayQueueContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMaxSize:I

.field private mSessionId:J

.field private mSongs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubmitters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/SubmitterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 139
    new-instance v0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent$1;

    invoke-direct {v0}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent$1;-><init>()V

    sput-object v0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(JIILjava/util/List;Ljava/util/List;)V
    .registers 7
    .parameter "sessionId"
    .parameter "version"
    .parameter "maxSize"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/SubmitterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p5, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .local p6, submitters:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/SubmitterInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSessionId:J

    .line 45
    iput p3, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mVersion:I

    .line 46
    iput p4, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mMaxSize:I

    .line 47
    iput-object p5, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSongs:Ljava/util/List;

    .line 48
    iput-object p6, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSubmitters:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter "tc"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    if-ne p0, p1, :cond_5

    .line 79
    :cond_4
    :goto_4
    return v1

    .line 69
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 70
    goto :goto_4

    .line 72
    :cond_9
    instance-of v3, p1, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;

    if-nez v3, :cond_f

    move v1, v2

    .line 73
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 75
    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;

    .line 76
    .local v0, other:Lcom/google/android/music/athome/api/AtHomePlayQueueContent;
    iget v3, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mVersion:I

    iget v4, v0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mVersion:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 77
    goto :goto_4
.end method

.method public getMaxSize()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mMaxSize:I

    return v0
.end method

.method public getSessionId()J
    .registers 3

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSessionId:J

    return-wide v0
.end method

.method public getSongs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSongs:Ljava/util/List;

    return-object v0
.end method

.method public getSubmitters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/SubmitterInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSubmitters:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mVersion:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 58
    const/16 v0, 0x1f

    .line 59
    .local v0, prime:I
    iget v1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mVersion:I

    iget v2, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mVersion:I

    ushr-int/lit8 v2, v2, 0x20

    xor-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 124
    const-string v0, "session"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->setSessionId(J)V

    .line 125
    const-string v0, "version"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->setVersion(I)V

    .line 126
    const-string v0, "maxSize"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->setMaxSize(I)V

    .line 127
    const-string v0, "songs"

    sget-object v1, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->setSongs(Ljava/util/List;)V

    .line 128
    const-string v0, "submitters"

    sget-object v1, Lcom/google/android/music/athome/api/SubmitterInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->setSubmitters(Ljava/util/List;)V

    .line 129
    return-void
.end method

.method public setMaxSize(I)V
    .registers 2
    .parameter "maxSize"

    .prologue
    .line 103
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mMaxSize:I

    .line 104
    return-void
.end method

.method public setSessionId(J)V
    .registers 3
    .parameter "sessionId"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSessionId:J

    .line 88
    return-void
.end method

.method public setSongs(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSongs:Ljava/util/List;

    .line 112
    return-void
.end method

.method public setSubmitters(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/SubmitterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, submitters:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/SubmitterInfo;>;"
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSubmitters:Ljava/util/List;

    .line 120
    return-void
.end method

.method public setVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 95
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mVersion:I

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 160
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 161
    .local v0, data:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 162
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 151
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 152
    .local v1, tc:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v1}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 153
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 154
    .local v0, serial:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 156
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 132
    const-string v0, "session"

    iget-wide v1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSessionId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 133
    const-string v0, "version"

    iget v1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mVersion:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 134
    const-string v0, "maxSize"

    iget v1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mMaxSize:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 135
    const-string v0, "songs"

    iget-object v1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSongs:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 136
    const-string v0, "submitters"

    iget-object v1, p0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->mSubmitters:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 137
    return-void
.end method
