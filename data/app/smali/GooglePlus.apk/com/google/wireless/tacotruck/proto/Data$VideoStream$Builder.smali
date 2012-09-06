.class public final Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$VideoStreamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoStream;",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoStreamOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private formatId_:I

.field private streamUrl_:Ljava/lang/Object;

.field private videoHeight_:I

.field private videoWidth_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16222
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 16223
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->maybeForceBuilderInitialization()V

    .line 16224
    return-void
.end method

.method static synthetic access$21400()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 1

    .prologue
    .line 16217
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 1

    .prologue
    .line 16229
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16227
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 3

    .prologue
    .line 16254
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    .line 16255
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16256
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16258
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 6

    .prologue
    .line 16272
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;-><init>(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 16273
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16274
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16275
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 16276
    or-int/lit8 v2, v2, 0x1

    .line 16278
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->access$21602(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16279
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 16280
    or-int/lit8 v2, v2, 0x2

    .line 16282
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->access$21702(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I

    .line 16283
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 16284
    or-int/lit8 v2, v2, 0x4

    .line 16286
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->access$21802(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I

    .line 16287
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 16288
    or-int/lit8 v2, v2, 0x8

    .line 16290
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->access$21902(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I

    .line 16291
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->access$22002(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I

    .line 16292
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16233
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 16235
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16236
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    .line 16237
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16238
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    .line 16239
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16240
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    .line 16241
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16242
    return-object p0
.end method

.method public clearFormatId()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2

    .prologue
    .line 16452
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16453
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    .line 16455
    return-object p0
.end method

.method public clearStreamUrl()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2

    .prologue
    .line 16384
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16385
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 16387
    return-object p0
.end method

.method public clearVideoHeight()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2

    .prologue
    .line 16431
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16432
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    .line 16434
    return-object p0
.end method

.method public clearVideoWidth()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2

    .prologue
    .line 16410
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16411
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    .line 16413
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3

    .prologue
    .line 16246
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

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
    .line 16217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 2

    .prologue
    .line 16250
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public getFormatId()I
    .registers 2

    .prologue
    .line 16443
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16365
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 16366
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 16367
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16368
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 16371
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

.method public getVideoHeight()I
    .registers 2

    .prologue
    .line 16422
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .prologue
    .line 16401
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    return v0
.end method

.method public hasFormatId()Z
    .registers 3

    .prologue
    .line 16440
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStreamUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16362
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVideoHeight()Z
    .registers 3

    .prologue
    .line 16419
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

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

.method public hasVideoWidth()Z
    .registers 3

    .prologue
    .line 16398
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 16313
    const/4 v0, 0x1

    return v0
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
    .line 16217
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 16217
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

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
    .line 16217
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16321
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 16322
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 16327
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16329
    :sswitch_d
    return-object p0

    .line 16334
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16335
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 16339
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16340
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    goto :goto_0

    .line 16344
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16345
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    goto :goto_0

    .line 16349
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16350
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    goto :goto_0

    .line 16322
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 16296
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16309
    :cond_6
    :goto_6
    return-object p0

    .line 16297
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->hasStreamUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16298
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setStreamUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    .line 16300
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->hasVideoWidth()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 16301
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getVideoWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setVideoWidth(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    .line 16303
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->hasVideoHeight()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 16304
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getVideoHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setVideoHeight(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    .line 16306
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->hasFormatId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16307
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getFormatId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setFormatId(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    goto :goto_6
.end method

.method public setFormatId(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16446
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16447
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    .line 16449
    return-object p0
.end method

.method public setStreamUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16375
    if-nez p1, :cond_8

    .line 16376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16378
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16379
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 16381
    return-object p0
.end method

.method public setVideoHeight(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16425
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16426
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    .line 16428
    return-object p0
.end method

.method public setVideoWidth(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16404
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 16405
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    .line 16407
    return-object p0
.end method
