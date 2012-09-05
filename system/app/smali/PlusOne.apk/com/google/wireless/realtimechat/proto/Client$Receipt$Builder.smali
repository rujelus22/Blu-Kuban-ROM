.class public final Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReceiptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$Receipt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$Receipt;",
        "Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReceiptOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private messageClientId_:Ljava/lang/Object;

.field private messageId_:Ljava/lang/Object;

.field private messageTimestamp_:J

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private senderId_:Ljava/lang/Object;

.field private shardingHint_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private timestamp_:J

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 11342
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11581
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 11626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->conversationId_:Ljava/lang/Object;

    .line 11662
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->senderId_:Ljava/lang/Object;

    .line 11719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageClientId_:Ljava/lang/Object;

    .line 11755
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 11798
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageId_:Ljava/lang/Object;

    .line 11834
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 11890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->shardingHint_:Ljava/lang/Object;

    .line 11343
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->maybeForceBuilderInitialization()V

    .line 11344
    return-void
.end method

.method static synthetic access$14900()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 1

    .prologue
    .line 11337
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 1

    .prologue
    .line 11349
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRecipientIdIsMutable()V
    .registers 3

    .prologue
    .line 11836
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 11837
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 11838
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11840
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 11347
    return-void
.end method


# virtual methods
.method public addAllRecipientId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;"
        }
    .end annotation

    .prologue
    .line 11872
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->ensureRecipientIdIsMutable()V

    .line 11873
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 11875
    return-object p0
.end method

.method public addRecipientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11862
    if-nez p1, :cond_8

    .line 11863
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11865
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->ensureRecipientIdIsMutable()V

    .line 11866
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 11868
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 3

    .prologue
    .line 11386
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    .line 11387
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 11388
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11390
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11337
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 6

    .prologue
    .line 11404
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 11405
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11406
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11407
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 11408
    or-int/lit8 v2, v2, 0x1

    .line 11410
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15102(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 11411
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 11412
    or-int/lit8 v2, v2, 0x2

    .line 11414
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageTimestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15202(Lcom/google/wireless/realtimechat/proto/Client$Receipt;J)J

    .line 11415
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 11416
    or-int/lit8 v2, v2, 0x4

    .line 11418
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15302(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11419
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 11420
    or-int/lit8 v2, v2, 0x8

    .line 11422
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15402(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11423
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 11424
    or-int/lit8 v2, v2, 0x10

    .line 11426
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15502(Lcom/google/wireless/realtimechat/proto/Client$Receipt;J)J

    .line 11427
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 11428
    or-int/lit8 v2, v2, 0x20

    .line 11430
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15602(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11431
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 11432
    or-int/lit8 v2, v2, 0x40

    .line 11434
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15702(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 11435
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 11436
    or-int/lit16 v2, v2, 0x80

    .line 11438
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15802(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11439
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_85

    .line 11440
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 11442
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11444
    :cond_85
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15902(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 11445
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_92

    .line 11446
    or-int/lit16 v2, v2, 0x100

    .line 11448
    :cond_92
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->shardingHint_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->shardingHint_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$16002(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11449
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$16102(Lcom/google/wireless/realtimechat/proto/Client$Receipt;I)I

    .line 11450
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11337
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11337
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 11353
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11354
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 11355
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11356
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageTimestamp_:J

    .line 11357
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11358
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->conversationId_:Ljava/lang/Object;

    .line 11359
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->senderId_:Ljava/lang/Object;

    .line 11361
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11362
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->timestamp_:J

    .line 11363
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageClientId_:Ljava/lang/Object;

    .line 11365
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11366
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 11367
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageId_:Ljava/lang/Object;

    .line 11369
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11370
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 11371
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11372
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->shardingHint_:Ljava/lang/Object;

    .line 11373
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11374
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2

    .prologue
    .line 11650
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11651
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->conversationId_:Ljava/lang/Object;

    .line 11653
    return-object p0
.end method

.method public clearMessageClientId()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2

    .prologue
    .line 11743
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11744
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageClientId_:Ljava/lang/Object;

    .line 11746
    return-object p0
.end method

.method public clearMessageId()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2

    .prologue
    .line 11822
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11823
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageId_:Ljava/lang/Object;

    .line 11825
    return-object p0
.end method

.method public clearMessageTimestamp()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3

    .prologue
    .line 11619
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11620
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageTimestamp_:J

    .line 11622
    return-object p0
.end method

.method public clearRecipientId()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2

    .prologue
    .line 11878
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 11879
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11881
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2

    .prologue
    .line 11686
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11687
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->senderId_:Ljava/lang/Object;

    .line 11689
    return-object p0
.end method

.method public clearShardingHint()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2

    .prologue
    .line 11914
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11915
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getShardingHint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->shardingHint_:Ljava/lang/Object;

    .line 11917
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2

    .prologue
    .line 11791
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 11793
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11794
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3

    .prologue
    .line 11712
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11713
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->timestamp_:J

    .line 11715
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2

    .prologue
    .line 11598
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11599
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 11601
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 11337
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11337
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3

    .prologue
    .line 11378
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

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
    .line 11337
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11631
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->conversationId_:Ljava/lang/Object;

    .line 11632
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11633
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11634
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->conversationId_:Ljava/lang/Object;

    .line 11637
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 11337
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11337
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 11382
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11724
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageClientId_:Ljava/lang/Object;

    .line 11725
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11726
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11727
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageClientId_:Ljava/lang/Object;

    .line 11730
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

.method public getMessageId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11803
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageId_:Ljava/lang/Object;

    .line 11804
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11805
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11806
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageId_:Ljava/lang/Object;

    .line 11809
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

.method public getMessageTimestamp()J
    .registers 3

    .prologue
    .line 11610
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageTimestamp_:J

    return-wide v0
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11849
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 11846
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11843
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11667
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->senderId_:Ljava/lang/Object;

    .line 11668
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11669
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11670
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->senderId_:Ljava/lang/Object;

    .line 11673
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

.method public getShardingHint()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11895
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->shardingHint_:Ljava/lang/Object;

    .line 11896
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11897
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11898
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->shardingHint_:Ljava/lang/Object;

    .line 11901
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

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 11760
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 11703
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    .registers 2

    .prologue
    .line 11586
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 11628
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

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

.method public hasMessageClientId()Z
    .registers 3

    .prologue
    .line 11721
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMessageId()Z
    .registers 3

    .prologue
    .line 11800
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMessageTimestamp()Z
    .registers 3

    .prologue
    .line 11607
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 11664
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

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

.method public hasShardingHint()Z
    .registers 3

    .prologue
    .line 11892
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 11757
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 11700
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11583
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

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
    .line 11337
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

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
    .line 11337
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11504
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 11505
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_a8

    .line 11510
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 11512
    :sswitch_d
    return-object p0

    .line 11517
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 11518
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-result-object v3

    .line 11519
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    if-eqz v3, :cond_0

    .line 11520
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11521
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    goto :goto_0

    .line 11526
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11527
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageId_:Ljava/lang/Object;

    goto :goto_0

    .line 11531
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11532
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 11536
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11537
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 11541
    :sswitch_48
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11542
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->timestamp_:J

    goto :goto_0

    .line 11546
    :sswitch_55
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11547
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 11551
    :sswitch_62
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11552
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->shardingHint_:Ljava/lang/Object;

    goto :goto_0

    .line 11556
    :sswitch_6f
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->ensureRecipientIdIsMutable()V

    .line 11557
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 11561
    :sswitch_7c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v1

    .line 11562
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->hasStubbyInfo()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 11563
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 11565
    :cond_8d
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 11566
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    goto/16 :goto_0

    .line 11570
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    :sswitch_99
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11571
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageTimestamp_:J

    goto/16 :goto_0

    .line 11505
    nop

    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x28 -> :sswitch_48
        0x32 -> :sswitch_55
        0x3a -> :sswitch_62
        0x42 -> :sswitch_6f
        0x4a -> :sswitch_7c
        0x50 -> :sswitch_99
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 11454
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 11492
    :cond_6
    :goto_6
    return-object p0

    .line 11455
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11456
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 11458
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasMessageTimestamp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 11459
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->setMessageTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 11461
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 11462
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 11464
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 11465
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 11467
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 11468
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 11470
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasMessageClientId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 11471
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 11473
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 11474
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 11476
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 11477
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->setMessageId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 11479
    :cond_6f
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15900(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 11480
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 11481
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15900(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 11482
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11489
    :cond_8d
    :goto_8d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasShardingHint()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11490
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getShardingHint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->setShardingHint(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    goto/16 :goto_6

    .line 11484
    :cond_9c
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->ensureRecipientIdIsMutable()V

    .line 11485
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->access$15900(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8d
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 11779
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 11781
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 11787
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11788
    return-object p0

    .line 11784
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11641
    if-nez p1, :cond_8

    .line 11642
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11644
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11645
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->conversationId_:Ljava/lang/Object;

    .line 11647
    return-object p0
.end method

.method public setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11734
    if-nez p1, :cond_8

    .line 11735
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11737
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11738
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageClientId_:Ljava/lang/Object;

    .line 11740
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11813
    if-nez p1, :cond_8

    .line 11814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11816
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11817
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageId_:Ljava/lang/Object;

    .line 11819
    return-object p0
.end method

.method public setMessageTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 11613
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11614
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->messageTimestamp_:J

    .line 11616
    return-object p0
.end method

.method public setRecipientId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 11853
    if-nez p2, :cond_8

    .line 11854
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11856
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->ensureRecipientIdIsMutable()V

    .line 11857
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11859
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11677
    if-nez p1, :cond_8

    .line 11678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11680
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11681
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->senderId_:Ljava/lang/Object;

    .line 11683
    return-object p0
.end method

.method public setShardingHint(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11905
    if-nez p1, :cond_8

    .line 11906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11908
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11909
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->shardingHint_:Ljava/lang/Object;

    .line 11911
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 11773
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 11775
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11776
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11763
    if-nez p1, :cond_8

    .line 11764
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11766
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 11768
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11769
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 11706
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11707
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->timestamp_:J

    .line 11709
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11589
    if-nez p1, :cond_8

    .line 11590
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11592
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->bitField0_:I

    .line 11593
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 11595
    return-object p0
.end method
