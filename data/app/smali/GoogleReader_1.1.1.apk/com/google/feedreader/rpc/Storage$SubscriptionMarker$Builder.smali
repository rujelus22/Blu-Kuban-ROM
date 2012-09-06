.class public final Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$SubscriptionMarkerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;",
        ">;",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionMarkerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private streamId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 351
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->streamId_:Ljava/lang/Object;

    .line 387
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->title_:Ljava/lang/Object;

    .line 238
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->maybeForceBuilderInitialization()V

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
    .registers 1

    .prologue
    .line 232
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    .line 275
    .local v0, result:Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 276
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 279
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
    .registers 1

    .prologue
    .line 244
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 242
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;
    .registers 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    .line 266
    .local v0, result:Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 267
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 269
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;
    .registers 6

    .prologue
    .line 283
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;-><init>(Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;Lcom/google/feedreader/rpc/Storage$1;)V

    .line 284
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 285
    const/4 v2, 0x0

    .line 286
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 287
    or-int/lit8 v2, v2, 0x1

    .line 289
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->streamId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->streamId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->access$302(Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 291
    or-int/lit8 v1, v2, 0x2

    .line 293
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->title_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->access$402(Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->access$502(Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;I)I

    .line 295
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
    .registers 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 249
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->streamId_:Ljava/lang/Object;

    .line 250
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->title_:Ljava/lang/Object;

    .line 252
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 253
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->clear()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->clear()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStreamId()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
    .registers 2

    .prologue
    .line 375
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 376
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->streamId_:Ljava/lang/Object;

    .line 378
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
    .registers 2

    .prologue
    .line 411
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 412
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->title_:Ljava/lang/Object;

    .line 414
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
    .registers 3

    .prologue
    .line 257
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

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
    .line 232
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;
    .registers 2

    .prologue
    .line 261
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->streamId_:Ljava/lang/Object;

    .line 357
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 358
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->streamId_:Ljava/lang/Object;

    move-object v2, v1

    .line 362
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->title_:Ljava/lang/Object;

    .line 393
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 394
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 398
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasStreamId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 353
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 389
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

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
    .line 310
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->hasStreamId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
    .registers 3
    .parameter

    .prologue
    .line 299
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 306
    :goto_7
    return-object v0

    .line 300
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->hasStreamId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 301
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    .line 303
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 304
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    :cond_22
    move-object v0, p0

    .line 306
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 323
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 328
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    :sswitch_d
    return-object p0

    .line 335
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 336
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->streamId_:Ljava/lang/Object;

    goto :goto_0

    .line 340
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 341
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 323
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
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
    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 232
    check-cast p1, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionMarker;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

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
    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 366
    if-nez p1, :cond_8

    .line 367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 369
    :cond_8
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 370
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->streamId_:Ljava/lang/Object;

    .line 372
    return-object p0
.end method

.method setStreamId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 381
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 382
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->streamId_:Ljava/lang/Object;

    .line 384
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 402
    if-nez p1, :cond_8

    .line 403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 405
    :cond_8
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 406
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->title_:Ljava/lang/Object;

    .line 408
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 417
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->bitField0_:I

    .line 418
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionMarker$Builder;->title_:Ljava/lang/Object;

    .line 420
    return-void
.end method
