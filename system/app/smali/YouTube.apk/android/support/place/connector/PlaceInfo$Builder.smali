.class public Landroid/support/place/connector/PlaceInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private extras:Landroid/support/place/rpc/RpcData;

.field private master:Landroid/support/place/rpc/EndpointInfo;

.field private masterSessionId:Ljava/lang/String;

.field private placeId:Ljava/lang/String;

.field private placeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    #getter for: Landroid/support/place/connector/PlaceInfo;->mPlaceId:Ljava/lang/String;
    invoke-static {p1}, Landroid/support/place/connector/PlaceInfo;->access$500(Landroid/support/place/connector/PlaceInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->placeId:Ljava/lang/String;

    .line 169
    #getter for: Landroid/support/place/connector/PlaceInfo;->mPlaceName:Ljava/lang/String;
    invoke-static {p1}, Landroid/support/place/connector/PlaceInfo;->access$600(Landroid/support/place/connector/PlaceInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->placeName:Ljava/lang/String;

    .line 170
    invoke-virtual {p0, p1}, Landroid/support/place/connector/PlaceInfo$Builder;->copyMaster(Landroid/support/place/connector/PlaceInfo;)Landroid/support/place/connector/PlaceInfo$Builder;

    .line 171
    #getter for: Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;
    invoke-static {p1}, Landroid/support/place/connector/PlaceInfo;->access$700(Landroid/support/place/connector/PlaceInfo;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 172
    new-instance v0, Landroid/support/place/rpc/RpcData;

    #getter for: Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;
    invoke-static {p1}, Landroid/support/place/connector/PlaceInfo;->access$700(Landroid/support/place/connector/PlaceInfo;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->extras:Landroid/support/place/rpc/RpcData;

    .line 176
    :goto_27
    return-void

    .line 174
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->extras:Landroid/support/place/rpc/RpcData;

    goto :goto_27
.end method

.method static synthetic access$000(Landroid/support/place/connector/PlaceInfo$Builder;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/place/connector/PlaceInfo$Builder;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->placeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/place/connector/PlaceInfo$Builder;)Landroid/support/place/rpc/EndpointInfo;
    .registers 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->master:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/place/connector/PlaceInfo$Builder;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->masterSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/place/connector/PlaceInfo$Builder;)Landroid/support/place/rpc/RpcData;
    .registers 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->extras:Landroid/support/place/rpc/RpcData;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/support/place/connector/PlaceInfo;
    .registers 3

    .prologue
    .line 179
    new-instance v0, Landroid/support/place/connector/PlaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/place/connector/PlaceInfo;-><init>(Landroid/support/place/connector/PlaceInfo$Builder;Landroid/support/place/connector/PlaceInfo$1;)V

    return-object v0
.end method

.method public copyMaster(Landroid/support/place/connector/PlaceInfo;)Landroid/support/place/connector/PlaceInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 209
    #getter for: Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;
    invoke-static {p1}, Landroid/support/place/connector/PlaceInfo;->access$900(Landroid/support/place/connector/PlaceInfo;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->master:Landroid/support/place/rpc/EndpointInfo;

    .line 210
    #getter for: Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;
    invoke-static {p1}, Landroid/support/place/connector/PlaceInfo;->access$1000(Landroid/support/place/connector/PlaceInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->masterSessionId:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public copyPlace(Landroid/support/place/connector/PlaceInfo;)Landroid/support/place/connector/PlaceInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 197
    #getter for: Landroid/support/place/connector/PlaceInfo;->mPlaceId:Ljava/lang/String;
    invoke-static {p1}, Landroid/support/place/connector/PlaceInfo;->access$500(Landroid/support/place/connector/PlaceInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->placeId:Ljava/lang/String;

    .line 198
    #getter for: Landroid/support/place/connector/PlaceInfo;->mPlaceName:Ljava/lang/String;
    invoke-static {p1}, Landroid/support/place/connector/PlaceInfo;->access$600(Landroid/support/place/connector/PlaceInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->placeName:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public setCertificate(Ljava/lang/String;)Landroid/support/place/connector/PlaceInfo$Builder;
    .registers 4
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->extras:Landroid/support/place/rpc/RpcData;

    if-nez v0, :cond_b

    .line 229
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->extras:Landroid/support/place/rpc/RpcData;

    .line 231
    :cond_b
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->extras:Landroid/support/place/rpc/RpcData;

    const-string v1, "master_cert"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-object p0
.end method

.method public setExtras(Landroid/support/place/rpc/RpcData;)Landroid/support/place/connector/PlaceInfo$Builder;
    .registers 2
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Landroid/support/place/connector/PlaceInfo$Builder;->extras:Landroid/support/place/rpc/RpcData;

    .line 216
    return-object p0
.end method

.method public setGuestMode(Z)Landroid/support/place/connector/PlaceInfo$Builder;
    .registers 4
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->extras:Landroid/support/place/rpc/RpcData;

    if-nez v0, :cond_b

    .line 221
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->extras:Landroid/support/place/rpc/RpcData;

    .line 223
    :cond_b
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->extras:Landroid/support/place/rpc/RpcData;

    const-string v1, "guest_mode"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    return-object p0
.end method

.method public setMaster(Ljava/lang/String;ILjava/lang/String;)Landroid/support/place/connector/PlaceInfo$Builder;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    new-instance v0, Landroid/support/place/rpc/EndpointInfo;

    const-string v1, "_broker"

    invoke-direct {v0, v1, p1, p2}, Landroid/support/place/rpc/EndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo$Builder;->master:Landroid/support/place/rpc/EndpointInfo;

    .line 204
    iput-object p3, p0, Landroid/support/place/connector/PlaceInfo$Builder;->masterSessionId:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setPlace(Ljava/lang/String;Ljava/lang/String;)Landroid/support/place/connector/PlaceInfo$Builder;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Landroid/support/place/connector/PlaceInfo$Builder;->placeId:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Landroid/support/place/connector/PlaceInfo$Builder;->placeName:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public setPlaceName(Ljava/lang/String;)Landroid/support/place/connector/PlaceInfo$Builder;
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Landroid/support/place/connector/PlaceInfo$Builder;->placeName:Ljava/lang/String;

    .line 184
    return-object p0
.end method
