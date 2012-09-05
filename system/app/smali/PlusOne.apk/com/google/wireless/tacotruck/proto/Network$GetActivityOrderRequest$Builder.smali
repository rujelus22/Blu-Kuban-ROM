.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

.field private populatedCount_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6142
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6262
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6143
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->maybeForceBuilderInitialization()V

    .line 6144
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 1

    .prologue
    .line 6149
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6147
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    .registers 6

    .prologue
    .line 6188
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 6189
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6190
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6191
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 6192
    or-int/lit8 v2, v2, 0x1

    .line 6194
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->access$7802(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6195
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 6196
    or-int/lit8 v2, v2, 0x2

    .line 6198
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->access$7902(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;I)I

    .line 6199
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->access$8002(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;I)I

    .line 6200
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 2

    .prologue
    .line 6153
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6154
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6156
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    .line 6157
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6158
    return-object p0
.end method

.method public clearParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 2

    .prologue
    .line 6298
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6300
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6301
    return-object p0
.end method

.method public clearPopulatedCount()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 2

    .prologue
    .line 6319
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6320
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    .line 6322
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 3

    .prologue
    .line 6162
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

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
    .line 6137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    .registers 2

    .prologue
    .line 6166
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 6267
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method public getPopulatedCount()I
    .registers 2

    .prologue
    .line 6310
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    return v0
.end method

.method public hasParams()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6264
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPopulatedCount()Z
    .registers 3

    .prologue
    .line 6307
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
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
    .line 6137
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

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
    .line 6137
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6229
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6230
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 6235
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6237
    :sswitch_d
    return-object p0

    .line 6242
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    .line 6243
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->hasParams()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 6246
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6247
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    goto :goto_0

    .line 6251
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6252
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    goto :goto_0

    .line 6230
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 6204
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6211
    :cond_6
    :goto_6
    return-object p0

    .line 6205
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->hasParams()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6206
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->mergeParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    .line 6208
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->hasPopulatedCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6209
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getPopulatedCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->setPopulatedCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    goto :goto_6
.end method

.method public mergeParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6286
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 6288
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6294
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6295
    return-object p0

    .line 6291
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    goto :goto_1f
.end method

.method public setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 6280
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6282
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6283
    return-object p0
.end method

.method public setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6270
    if-nez p1, :cond_8

    .line 6271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6273
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6275
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6276
    return-object p0
.end method

.method public setPopulatedCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6313
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6314
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    .line 6316
    return-object p0
.end method
