.class public Lcom/google/android/music/athome/api/SubmitterInfo;
.super Ljava/lang/Object;
.source "SubmitterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Lcom/google/android/music/athome/api/SubmitterInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFamilyName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mPictureUrl:Ljava/lang/String;

.field private mSubmitterId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    new-instance v0, Lcom/google/android/music/athome/api/SubmitterInfo$1;

    invoke-direct {v0}, Lcom/google/android/music/athome/api/SubmitterInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/music/athome/api/SubmitterInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter "tc"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/SubmitterInfo;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-ne p0, p1, :cond_5

    .line 57
    :cond_4
    :goto_4
    return v1

    .line 47
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 48
    goto :goto_4

    .line 50
    :cond_9
    instance-of v3, p1, Lcom/google/android/music/athome/api/SubmitterInfo;

    if-nez v3, :cond_f

    move v1, v2

    .line 51
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 53
    check-cast v0, Lcom/google/android/music/athome/api/SubmitterInfo;

    .line 54
    .local v0, other:Lcom/google/android/music/athome/api/SubmitterInfo;
    iget-wide v3, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mSubmitterId:J

    iget-wide v5, v0, Lcom/google/android/music/athome/api/SubmitterInfo;->mSubmitterId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 55
    goto :goto_4
.end method

.method public getFamilyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mPictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitterId()J
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mSubmitterId:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 36
    const/16 v0, 0x1f

    .line 37
    .local v0, prime:I
    iget-wide v1, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mSubmitterId:J

    iget-wide v3, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mSubmitterId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 93
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/SubmitterInfo;->setSubmitterId(J)V

    .line 94
    const-string v0, "givenName"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/SubmitterInfo;->setGivenName(Ljava/lang/String;)V

    .line 95
    const-string v0, "familyName"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/SubmitterInfo;->setFamilyName(Ljava/lang/String;)V

    .line 96
    const-string v0, "pictureUrl"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/SubmitterInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .registers 2
    .parameter "familyName"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mFamilyName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setGivenName(Ljava/lang/String;)V
    .registers 2
    .parameter "givenName"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mGivenName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPictureUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "pictureUrl"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mPictureUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSubmitterId(J)V
    .registers 3
    .parameter "submitterId"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/google/android/music/athome/api/SubmitterInfo;->mSubmitterId:J

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 118
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 119
    .local v1, tc:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v1}, Lcom/google/android/music/athome/api/SubmitterInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 120
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 121
    .local v0, serial:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 123
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 100
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/SubmitterInfo;->getSubmitterId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 101
    const-string v0, "givenName"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/SubmitterInfo;->getGivenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "familyName"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/SubmitterInfo;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "pictureUrl"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/SubmitterInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
