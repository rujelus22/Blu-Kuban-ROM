.class public Landroid/support/place/connector/ConnectorInfo;
.super Ljava/lang/Object;
.source "ConnectorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static KEY_ENDPOINT:Ljava/lang/String;

.field private static KEY_EXTRAS:Ljava/lang/String;

.field private static KEY_TYPE:Ljava/lang/String;

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

.field private mExtras:Landroid/support/place/rpc/RpcData;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "endpoint"

    sput-object v0, Landroid/support/place/connector/ConnectorInfo;->KEY_ENDPOINT:Ljava/lang/String;

    .line 12
    const-string v0, "type"

    sput-object v0, Landroid/support/place/connector/ConnectorInfo;->KEY_TYPE:Ljava/lang/String;

    .line 13
    const-string v0, "extras"

    sput-object v0, Landroid/support/place/connector/ConnectorInfo;->KEY_EXTRAS:Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/support/place/connector/ConnectorInfo$1;

    invoke-direct {v0}, Landroid/support/place/connector/ConnectorInfo$1;-><init>()V

    sput-object v0, Landroid/support/place/connector/ConnectorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    new-instance v0, Landroid/support/place/connector/ConnectorInfo$2;

    invoke-direct {v0}, Landroid/support/place/connector/ConnectorInfo$2;-><init>()V

    sput-object v0, Landroid/support/place/connector/ConnectorInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorInfo;->mExtras:Landroid/support/place/rpc/RpcData;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    iput-object v3, p0, Landroid/support/place/connector/ConnectorInfo;->mExtras:Landroid/support/place/rpc/RpcData;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, len:I
    new-array v2, v1, [B

    .line 126
    .local v2, serialized:[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 127
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 128
    .local v0, data:Landroid/support/place/rpc/RpcData;
    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 129
    invoke-virtual {p0, v0}, Landroid/support/place/connector/ConnectorInfo;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/place/connector/ConnectorInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/support/place/connector/ConnectorInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;)V
    .registers 4
    .parameter "ei"
    .parameter "type"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorInfo;->mExtras:Landroid/support/place/rpc/RpcData;

    .line 27
    iput-object p1, p0, Landroid/support/place/connector/ConnectorInfo;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    .line 28
    iput-object p2, p0, Landroid/support/place/connector/ConnectorInfo;->mType:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorInfo;->mExtras:Landroid/support/place/rpc/RpcData;

    .line 20
    invoke-virtual {p0, p1}, Landroid/support/place/connector/ConnectorInfo;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    instance-of v4, p1, Landroid/support/place/connector/ConnectorInfo;

    if-nez v4, :cond_7

    .line 81
    .end local p1
    :goto_6
    return v2

    .restart local p1
    :cond_7
    move-object v1, p1

    .line 76
    check-cast v1, Landroid/support/place/connector/ConnectorInfo;

    .line 78
    .local v1, that:Landroid/support/place/connector/ConnectorInfo;
    iget-object v4, p0, Landroid/support/place/connector/ConnectorInfo;->mType:Ljava/lang/String;

    if-nez v4, :cond_14

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    :cond_14
    iget-object v4, p0, Landroid/support/place/connector/ConnectorInfo;->mType:Ljava/lang/String;

    if-eqz v4, :cond_37

    iget-object v4, p0, Landroid/support/place/connector/ConnectorInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    :cond_24
    move v0, v3

    .line 81
    .local v0, sameType:Z
    :goto_25
    check-cast p1, Landroid/support/place/connector/ConnectorInfo;

    .end local p1
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v4

    iget-object v5, p0, Landroid/support/place/connector/ConnectorInfo;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v4, v5}, Landroid/support/place/rpc/EndpointInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    if-eqz v0, :cond_39

    :goto_35
    move v2, v3

    goto :goto_6

    .end local v0           #sameType:Z
    .restart local p1
    :cond_37
    move v0, v2

    .line 78
    goto :goto_25

    .end local p1
    .restart local v0       #sameType:Z
    :cond_39
    move v3, v2

    .line 81
    goto :goto_35
.end method

.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/place/connector/ConnectorInfo;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public getExtras()Landroid/support/place/rpc/RpcData;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/place/connector/ConnectorInfo;->mExtras:Landroid/support/place/rpc/RpcData;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Landroid/support/place/connector/ConnectorInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 86
    const/16 v0, 0x11

    .line 87
    .local v0, result:I
    iget-object v1, p0, Landroid/support/place/connector/ConnectorInfo;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 88
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Landroid/support/place/connector/ConnectorInfo;->mType:Ljava/lang/String;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    :goto_11
    add-int v0, v2, v1

    .line 89
    return v0

    .line 88
    :cond_14
    iget-object v1, p0, Landroid/support/place/connector/ConnectorInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 60
    sget-object v0, Landroid/support/place/connector/ConnectorInfo;->KEY_ENDPOINT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 61
    new-instance v0, Landroid/support/place/rpc/EndpointInfo;

    sget-object v1, Landroid/support/place/connector/ConnectorInfo;->KEY_ENDPOINT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/place/rpc/EndpointInfo;-><init>(Landroid/support/place/rpc/RpcData;)V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorInfo;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    .line 66
    :goto_15
    sget-object v0, Landroid/support/place/connector/ConnectorInfo;->KEY_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/ConnectorInfo;->mType:Ljava/lang/String;

    .line 67
    sget-object v0, Landroid/support/place/connector/ConnectorInfo;->KEY_EXTRAS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/ConnectorInfo;->mExtras:Landroid/support/place/rpc/RpcData;

    .line 68
    return-void

    .line 63
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/connector/ConnectorInfo;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectorInfo(endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/ConnectorInfo;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/ConnectorInfo;->mType:Ljava/lang/String;

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
    .line 139
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 140
    .local v1, tc:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v1}, Landroid/support/place/connector/ConnectorInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 141
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 142
    .local v0, serial:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 144
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter "dest"

    .prologue
    .line 49
    iget-object v1, p0, Landroid/support/place/connector/ConnectorInfo;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    if-eqz v1, :cond_13

    .line 50
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 51
    .local v0, endpoint:Landroid/support/place/rpc/RpcData;
    iget-object v1, p0, Landroid/support/place/connector/ConnectorInfo;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v1, v0}, Landroid/support/place/rpc/EndpointInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 52
    sget-object v1, Landroid/support/place/connector/ConnectorInfo;->KEY_ENDPOINT:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 55
    .end local v0           #endpoint:Landroid/support/place/rpc/RpcData;
    :cond_13
    sget-object v1, Landroid/support/place/connector/ConnectorInfo;->KEY_TYPE:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/place/connector/ConnectorInfo;->mType:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v1, Landroid/support/place/connector/ConnectorInfo;->KEY_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/place/connector/ConnectorInfo;->mExtras:Landroid/support/place/rpc/RpcData;

    invoke-virtual {p1, v1, v2}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 57
    return-void
.end method
