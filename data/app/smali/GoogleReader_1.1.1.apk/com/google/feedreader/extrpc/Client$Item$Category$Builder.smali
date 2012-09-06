.class public final Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$Item$CategoryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Item$Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Item$Category;",
        "Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$Item$CategoryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private streamId_:Ljava/lang/Object;

.field private term_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3347
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3457
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->term_:Ljava/lang/Object;

    .line 3493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->streamId_:Ljava/lang/Object;

    .line 3348
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->maybeForceBuilderInitialization()V

    .line 3349
    return-void
.end method

.method static synthetic access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3342
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 1

    .prologue
    .line 3342
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3384
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    .line 3385
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3386
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3389
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 1

    .prologue
    .line 3354
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3352
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 3

    .prologue
    .line 3375
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    .line 3376
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3377
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3379
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3342
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 6

    .prologue
    .line 3393
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$Category;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Category;-><init>(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 3394
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3395
    const/4 v2, 0x0

    .line 3396
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3397
    or-int/lit8 v2, v2, 0x1

    .line 3399
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->term_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Category;->term_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item$Category;->access$4102(Lcom/google/feedreader/extrpc/Client$Item$Category;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3400
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 3401
    or-int/lit8 v1, v2, 0x2

    .line 3403
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->streamId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Category;->streamId_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Item$Category;->access$4202(Lcom/google/feedreader/extrpc/Client$Item$Category;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3404
    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Category;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Category;->access$4302(Lcom/google/feedreader/extrpc/Client$Item$Category;I)I

    .line 3405
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3342
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3359
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->term_:Ljava/lang/Object;

    .line 3360
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->streamId_:Ljava/lang/Object;

    .line 3362
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3363
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3342
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3342
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStreamId()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 2

    .prologue
    .line 3517
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3518
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->streamId_:Ljava/lang/Object;

    .line 3520
    return-object p0
.end method

.method public clearTerm()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 2

    .prologue
    .line 3481
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3482
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getTerm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->term_:Ljava/lang/Object;

    .line 3484
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 3

    .prologue
    .line 3367
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Category;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3342
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3342
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3342
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

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
    .line 3342
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 2

    .prologue
    .line 3371
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3342
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3342
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3498
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->streamId_:Ljava/lang/Object;

    .line 3499
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 3500
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3501
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->streamId_:Ljava/lang/Object;

    move-object v2, v1

    .line 3504
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

.method public getTerm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3462
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->term_:Ljava/lang/Object;

    .line 3463
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 3464
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3465
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->term_:Ljava/lang/Object;

    move-object v2, v1

    .line 3468
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
    .line 3495
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

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

.method public hasTerm()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3459
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3420
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Category;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3409
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 3416
    :goto_7
    return-object v0

    .line 3410
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Category;->hasTerm()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3411
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->setTerm(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    .line 3413
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Category;->hasStreamId()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3414
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    :cond_22
    move-object v0, p0

    .line 3416
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3428
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3429
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 3434
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3436
    :sswitch_d
    return-object p0

    .line 3441
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3442
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->term_:Ljava/lang/Object;

    goto :goto_0

    .line 3446
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3447
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->streamId_:Ljava/lang/Object;

    goto :goto_0

    .line 3429
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
    .line 3342
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3342
    check-cast p1, Lcom/google/feedreader/extrpc/Client$Item$Category;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Category;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

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
    .line 3342
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3508
    if-nez p1, :cond_8

    .line 3509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3511
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3512
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->streamId_:Ljava/lang/Object;

    .line 3514
    return-object p0
.end method

.method setStreamId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 3523
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3524
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->streamId_:Ljava/lang/Object;

    .line 3526
    return-void
.end method

.method public setTerm(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3472
    if-nez p1, :cond_8

    .line 3473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3475
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3476
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->term_:Ljava/lang/Object;

    .line 3478
    return-object p0
.end method

.method setTerm(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 3487
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->bitField0_:I

    .line 3488
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->term_:Ljava/lang/Object;

    .line 3490
    return-void
.end method
