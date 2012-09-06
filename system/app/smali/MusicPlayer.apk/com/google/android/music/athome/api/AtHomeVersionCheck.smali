.class public Lcom/google/android/music/athome/api/AtHomeVersionCheck;
.super Ljava/lang/Object;
.source "AtHomeVersionCheck.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeVersionCheck;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApkBuildNumber:I

.field private mCheckStatus:I

.field private mMaxSupportedApiVersion:I

.field private mMinSupportedApiVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/music/athome/api/AtHomeVersionCheck$1;

    invoke-direct {v0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck$1;-><init>()V

    sput-object v0, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter "tc"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 87
    return-void
.end method

.method public static getCurrentApiVersion()I
    .registers 1

    .prologue
    .line 74
    const/16 v0, 0x1d

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getApkBuildNumber()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->mApkBuildNumber:I

    return v0
.end method

.method public getCheckStatus()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->mCheckStatus:I

    return v0
.end method

.method public getDebugString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getCheckStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_56

    .line 197
    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getCheckStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 200
    :goto_18
    const-string v1, " min version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getMinSupportedApiVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 201
    const-string v1, " max version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getMaxSupportedApiVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 202
    const-string v1, " build: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getApkBuildNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 188
    :pswitch_44
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 191
    :pswitch_4a
    const-string v1, "OLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 194
    :pswitch_50
    const-string v1, "NEW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 186
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_44
        :pswitch_4a
        :pswitch_50
    .end packed-switch
.end method

.method public getMaxSupportedApiVersion()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->mMaxSupportedApiVersion:I

    return v0
.end method

.method public getMinSupportedApiVersion()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->mMinSupportedApiVersion:I

    return v0
.end method

.method public hasPreshuffleSupport()Z
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->mMinSupportedApiVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 151
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->setCheckStatus(I)V

    .line 152
    const-string v0, "minVers"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->setMinSupportedApiVersion(I)V

    .line 153
    const-string v0, "maxVers"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->setMaxSupportedApiVersion(I)V

    .line 154
    const-string v0, "build"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->setApkBuildNumber(I)V

    .line 155
    return-void
.end method

.method public setApkBuildNumber(I)V
    .registers 2
    .parameter "buildNumber"

    .prologue
    .line 146
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->mApkBuildNumber:I

    .line 147
    return-void
.end method

.method public setCheckStatus(I)V
    .registers 2
    .parameter "mCheckStatus"

    .prologue
    .line 101
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->mCheckStatus:I

    .line 102
    return-void
.end method

.method public setMaxSupportedApiVersion(I)V
    .registers 2
    .parameter "maxSupportedVersion"

    .prologue
    .line 133
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->mMaxSupportedApiVersion:I

    .line 134
    return-void
.end method

.method public setMinSupportedApiVersion(I)V
    .registers 2
    .parameter "minSupportedVersion"

    .prologue
    .line 117
    iput p1, p0, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->mMinSupportedApiVersion:I

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 176
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 177
    .local v1, tc:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v1}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 178
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 179
    .local v0, serial:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 181
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 158
    const-string v0, "status"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getCheckStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 159
    const-string v0, "minVers"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getMinSupportedApiVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 160
    const-string v0, "maxVers"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getMaxSupportedApiVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 161
    const-string v0, "build"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getApkBuildNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 162
    return-void
.end method
