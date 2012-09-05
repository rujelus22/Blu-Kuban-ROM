.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2182
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4700()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 1

    .prologue
    .line 2176
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 3

    .prologue
    .line 2185
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;-><init>()V

    .line 2186
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    .line 2187
    return-object v0
.end method


# virtual methods
.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    .registers 4

    .prologue
    .line 2231
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    if-nez v1, :cond_c

    .line 2232
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2235
    :cond_c
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    .line 2236
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    .line 2237
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 3

    .prologue
    .line 2204
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2176
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2176
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2176
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2241
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2254
    :cond_6
    :goto_6
    return-object p0

    .line 2242
    :cond_7
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2243
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getReason()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->setReason(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    .line 2245
    :cond_14
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedOfflineDevices()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2246
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getNumAllowedOfflineDevices()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->setNumAllowedOfflineDevices(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    .line 2248
    :cond_21
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedConcurrentAccesses()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2249
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getNumAllowedConcurrentAccesses()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->setNumAllowedConcurrentAccesses(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    .line 2251
    :cond_2e
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasOrderUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2252
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getOrderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->setOrderUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2263
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_34

    .line 2267
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2268
    :sswitch_d
    return-object p0

    .line 2273
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2274
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->valueOf(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    move-result-object v2

    .line 2275
    .local v2, value:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;
    if-eqz v2, :cond_0

    .line 2276
    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->setReason(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    goto :goto_0

    .line 2281
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->setNumAllowedOfflineDevices(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    goto :goto_0

    .line 2285
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->setNumAllowedConcurrentAccesses(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    goto :goto_0

    .line 2289
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->setOrderUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    goto :goto_0

    .line 2263
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1c
        0x18 -> :sswitch_24
        0x22 -> :sswitch_2c
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2176
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2176
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNumAllowedConcurrentAccesses(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedConcurrentAccesses:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->access$5302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Z)Z

    .line 2345
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->numAllowedConcurrentAccesses_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->access$5402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;I)I

    .line 2346
    return-object p0
.end method

.method public setNumAllowedOfflineDevices(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedOfflineDevices:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->access$5102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Z)Z

    .line 2327
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->numAllowedOfflineDevices_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->access$5202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;I)I

    .line 2328
    return-object p0
.end method

.method public setOrderUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2362
    if-nez p1, :cond_8

    .line 2363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2365
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasOrderUrl:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->access$5502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Z)Z

    .line 2366
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->orderUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->access$5602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Ljava/lang/String;)Ljava/lang/String;

    .line 2367
    return-object p0
.end method

.method public setReason(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2305
    if-nez p1, :cond_8

    .line 2306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2308
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasReason:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->access$4902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Z)Z

    .line 2309
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->reason_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->access$5002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    .line 2310
    return-object p0
.end method
