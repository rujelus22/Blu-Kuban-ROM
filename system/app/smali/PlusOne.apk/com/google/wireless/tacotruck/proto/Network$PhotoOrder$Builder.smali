.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrderOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private entityVersion_:J

.field private ownerId_:Ljava/lang/Object;

.field private photoId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 8151
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8275
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->ownerId_:Ljava/lang/Object;

    .line 8152
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->maybeForceBuilderInitialization()V

    .line 8153
    return-void
.end method

.method static synthetic access$10400()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 1

    .prologue
    .line 8146
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 1

    .prologue
    .line 8158
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8156
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    .registers 3

    .prologue
    .line 8181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v0

    .line 8182
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8183
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8185
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    .registers 6

    .prologue
    .line 8199
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 8200
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8201
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8202
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8203
    or-int/lit8 v2, v2, 0x1

    .line 8205
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->ownerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->ownerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->access$10602(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8206
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 8207
    or-int/lit8 v2, v2, 0x2

    .line 8209
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->access$10702(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;J)J

    .line 8210
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 8211
    or-int/lit8 v2, v2, 0x4

    .line 8213
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->entityVersion_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->entityVersion_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->access$10802(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;J)J

    .line 8214
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->access$10902(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;I)I

    .line 8215
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 8162
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->ownerId_:Ljava/lang/Object;

    .line 8164
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8165
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->photoId_:J

    .line 8166
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8167
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->entityVersion_:J

    .line 8168
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8169
    return-object p0
.end method

.method public clearEntityVersion()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 3

    .prologue
    .line 8346
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8347
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->entityVersion_:J

    .line 8349
    return-object p0
.end method

.method public clearOwnerId()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 2

    .prologue
    .line 8299
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8300
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->ownerId_:Ljava/lang/Object;

    .line 8302
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 3

    .prologue
    .line 8325
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->photoId_:J

    .line 8328
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 3

    .prologue
    .line 8173
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

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
    .line 8146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    .registers 2

    .prologue
    .line 8177
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v0

    return-object v0
.end method

.method public getEntityVersion()J
    .registers 3

    .prologue
    .line 8337
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->entityVersion_:J

    return-wide v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8280
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->ownerId_:Ljava/lang/Object;

    .line 8281
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8282
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8283
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->ownerId_:Ljava/lang/Object;

    .line 8286
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 8316
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->photoId_:J

    return-wide v0
.end method

.method public hasEntityVersion()Z
    .registers 3

    .prologue
    .line 8334
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasOwnerId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8277
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 8313
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

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
    .line 8146
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

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
    .line 8146
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8241
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 8242
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 8247
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8249
    :sswitch_d
    return-object p0

    .line 8254
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8255
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->ownerId_:Ljava/lang/Object;

    goto :goto_0

    .line 8259
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8260
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->photoId_:J

    goto :goto_0

    .line 8264
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8265
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->entityVersion_:J

    goto :goto_0

    .line 8242
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 8219
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8229
    :cond_6
    :goto_6
    return-object p0

    .line 8220
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->hasOwnerId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8221
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->setOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    .line 8223
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8224
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    .line 8226
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->hasEntityVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8227
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getEntityVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->setEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    goto :goto_6
.end method

.method public setEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8340
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8341
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->entityVersion_:J

    .line 8343
    return-object p0
.end method

.method public setOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8290
    if-nez p1, :cond_8

    .line 8291
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8293
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8294
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->ownerId_:Ljava/lang/Object;

    .line 8296
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8319
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->bitField0_:I

    .line 8320
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->photoId_:J

    .line 8322
    return-object p0
.end method
