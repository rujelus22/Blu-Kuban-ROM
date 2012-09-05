.class public final Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifierOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;",
        "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifierOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:J

.field private bitField0_:I

.field private ownerId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13192
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13320
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->FROM_YOUR_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 13193
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->maybeForceBuilderInitialization()V

    .line 13194
    return-void
.end method

.method static synthetic access$17500()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 1

    .prologue
    .line 13187
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 1

    .prologue
    .line 13199
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13197
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 3

    .prologue
    .line 13222
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    .line 13223
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13224
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13226
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13187
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 6

    .prologue
    .line 13240
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;-><init>(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 13241
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13242
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13243
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13244
    or-int/lit8 v2, v2, 0x1

    .line 13246
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->access$17702(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13247
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13248
    or-int/lit8 v2, v2, 0x2

    .line 13250
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->ownerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->access$17802(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13251
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 13252
    or-int/lit8 v2, v2, 0x4

    .line 13254
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->access$17902(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;J)J

    .line 13255
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->access$18002(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;I)I

    .line 13256
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13187
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13187
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 3

    .prologue
    .line 13203
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13204
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->FROM_YOUR_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13205
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 13207
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    .line 13209
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13210
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 3

    .prologue
    .line 13394
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13395
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    .line 13397
    return-object p0
.end method

.method public clearOwnerId()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 2

    .prologue
    .line 13368
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13369
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 13371
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 2

    .prologue
    .line 13337
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13338
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->FROM_YOUR_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13340
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13187
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13187
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 3

    .prologue
    .line 13214
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

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
    .line 13187
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 13385
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13187
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13187
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2

    .prologue
    .line 13218
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13349
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 13350
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 13351
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13352
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 13355
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    .registers 2

    .prologue
    .line 13325
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    return-object v0
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 13382
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

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
    .line 13346
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13322
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 13187
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

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
    .line 13187
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13282
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 13283
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 13288
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13290
    :sswitch_d
    return-object p0

    .line 13295
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 13296
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    move-result-object v2

    .line 13297
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    if-eqz v2, :cond_0

    .line 13298
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13299
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    goto :goto_0

    .line 13304
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13305
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    goto :goto_0

    .line 13309
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13310
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    goto :goto_0

    .line 13283
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 13260
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13270
    :cond_6
    :goto_6
    return-object p0

    .line 13261
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13262
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    .line 13264
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->hasOwnerId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 13265
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->setOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    .line 13267
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13268
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    goto :goto_6
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13388
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13389
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    .line 13391
    return-object p0
.end method

.method public setOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13359
    if-nez p1, :cond_8

    .line 13360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13362
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13363
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 13365
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13328
    if-nez p1, :cond_8

    .line 13329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13331
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13332
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13334
    return-object p0
.end method
