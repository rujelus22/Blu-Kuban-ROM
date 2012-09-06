.class public Lcom/google/android/music/athome/api/AtHomeModificationResult;
.super Ljava/lang/Object;
.source "AtHomeModificationResult.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mModificationStatus:I

.field private mSessionId:J

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 163
    new-instance v0, Lcom/google/android/music/athome/api/AtHomeModificationResult$1;

    invoke-direct {v0}, Lcom/google/android/music/athome/api/AtHomeModificationResult$1;-><init>()V

    sput-object v0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mSessionId:J

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mModificationStatus:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mVersion:I

    .line 41
    return-void
.end method

.method public constructor <init>(JII)V
    .registers 7
    .parameter "sessionId"
    .parameter "status"
    .parameter "version"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mSessionId:J

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mModificationStatus:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mVersion:I

    .line 44
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mSessionId:J

    .line 45
    iput p3, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mModificationStatus:I

    .line 46
    iput p4, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mVersion:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "tc"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mSessionId:J

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mModificationStatus:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mVersion:I

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getModificationStatus()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mModificationStatus:I

    return v0
.end method

.method public getSessionId()J
    .registers 3

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mSessionId:J

    return-wide v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mVersion:I

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mModificationStatus:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public modificationApplied()Z
    .registers 3

    .prologue
    .line 144
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mModificationStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 152
    const-string v0, "session"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->setSessionId(J)V

    .line 153
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->setModificationStatus(I)V

    .line 154
    const-string v0, "version"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->setVersion(I)V

    .line 155
    return-void
.end method

.method public setModificationStatus(I)V
    .registers 2
    .parameter "modificationStatus"

    .prologue
    .line 132
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mModificationStatus:I

    .line 133
    return-void
.end method

.method public setSessionId(J)V
    .registers 3
    .parameter "sessionId"

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mSessionId:J

    .line 125
    return-void
.end method

.method public setVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 140
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mVersion:I

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mModificationStatus:I

    packed-switch v1, :pswitch_data_50

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown modification status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mModificationStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :goto_22
    const-string v1, " sessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mSessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 110
    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/athome/api/AtHomeModificationResult;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    :pswitch_3d
    const-string v1, "Modification succeeded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 100
    :pswitch_43
    const-string v1, "Modification failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 103
    :pswitch_49
    const-string v1, "Modification succeeded. Resync is requested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 95
    nop

    :pswitch_data_50
    .packed-switch -0x2
        :pswitch_49
        :pswitch_43
        :pswitch_3d
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 175
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 176
    .local v1, tc:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v1}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 177
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 178
    .local v0, serial:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 180
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 158
    const-string v0, "session"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->getSessionId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 159
    const-string v0, "status"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->getModificationStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 160
    const-string v0, "version"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->getVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 161
    return-void
.end method
