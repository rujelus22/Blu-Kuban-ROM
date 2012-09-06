.class public Landroid/support/place/rpc/EndpointInfo;
.super Ljava/lang/Object;
.source "EndpointInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/place/rpc/EndpointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Landroid/support/place/rpc/EndpointInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:Ljava/lang/String;

.field private mIpAddress:Ljava/lang/String;

.field private mPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Landroid/support/place/rpc/EndpointInfo$1;

    invoke-direct {v0}, Landroid/support/place/rpc/EndpointInfo$1;-><init>()V

    sput-object v0, Landroid/support/place/rpc/EndpointInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    .line 102
    new-instance v0, Landroid/support/place/rpc/EndpointInfo$2;

    invoke-direct {v0}, Landroid/support/place/rpc/EndpointInfo$2;-><init>()V

    sput-object v0, Landroid/support/place/rpc/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .local v1, len:I
    new-array v2, v1, [B

    .line 118
    .local v2, serialized:[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 119
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 120
    .local v0, data:Landroid/support/place/rpc/RpcData;
    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 121
    invoke-virtual {p0, v0}, Landroid/support/place/rpc/EndpointInfo;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/place/rpc/EndpointInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Landroid/support/place/rpc/EndpointInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter "tc"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/EndpointInfo;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "id"
    .parameter "ipAddress"
    .parameter "port"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/support/place/rpc/EndpointInfo;->mId:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Landroid/support/place/rpc/EndpointInfo;->mIpAddress:Ljava/lang/String;

    .line 27
    iput p3, p0, Landroid/support/place/rpc/EndpointInfo;->mPort:I

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 75
    instance-of v2, p1, Landroid/support/place/rpc/EndpointInfo;

    if-nez v2, :cond_6

    .line 79
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 78
    check-cast v0, Landroid/support/place/rpc/EndpointInfo;

    .line 79
    .local v0, that:Landroid/support/place/rpc/EndpointInfo;
    iget-object v2, p0, Landroid/support/place/rpc/EndpointInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/place/rpc/EndpointInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/support/place/rpc/EndpointInfo;->mPort:I

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Landroid/support/place/rpc/EndpointInfo;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/place/rpc/EndpointInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Landroid/support/place/rpc/EndpointInfo;->mPort:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 85
    const/16 v0, 0x11

    .line 86
    .local v0, result:I
    iget-object v1, p0, Landroid/support/place/rpc/EndpointInfo;->mIpAddress:Ljava/lang/String;

    if-nez v1, :cond_19

    move v1, v2

    :goto_8
    add-int/lit16 v0, v1, 0x20f

    .line 87
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/support/place/rpc/EndpointInfo;->mPort:I

    add-int v0, v1, v3

    .line 88
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/support/place/rpc/EndpointInfo;->mId:Ljava/lang/String;

    if-nez v3, :cond_20

    :goto_16
    add-int v0, v1, v2

    .line 89
    return v0

    .line 86
    :cond_19
    iget-object v1, p0, Landroid/support/place/rpc/EndpointInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    .line 88
    :cond_20
    iget-object v2, p0, Landroid/support/place/rpc/EndpointInfo;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_16
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 55
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/place/rpc/EndpointInfo;->setAddress(Ljava/lang/String;)V

    .line 56
    const-string v0, "port"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/place/rpc/EndpointInfo;->setPort(I)V

    .line 57
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/place/rpc/EndpointInfo;->setId(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/support/place/rpc/EndpointInfo;->mIpAddress:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/support/place/rpc/EndpointInfo;->mId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 43
    iput p1, p0, Landroid/support/place/rpc/EndpointInfo;->mPort:I

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EndpointInfo(address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/rpc/EndpointInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/place/rpc/EndpointInfo;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/rpc/EndpointInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 131
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 132
    .local v1, tc:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v1}, Landroid/support/place/rpc/EndpointInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 133
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 134
    .local v0, serial:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 61
    const-string v0, "address"

    invoke-virtual {p0}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "port"

    invoke-virtual {p0}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 63
    const-string v0, "id"

    invoke-virtual {p0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
