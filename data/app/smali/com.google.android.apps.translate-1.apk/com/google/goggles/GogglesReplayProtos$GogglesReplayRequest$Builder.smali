.class public final Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GogglesReplayProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;",
        "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

.field private msSinceEpoch_:J

.field private queryId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->queryId_:Ljava/lang/Object;

    .line 409
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 240
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->maybeForceBuilderInitialization()V

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 1

    .prologue
    .line 234
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 280
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 283
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 1

    .prologue
    .line 246
    new-instance v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 244
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 271
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 273
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->build()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 287
    new-instance v2, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;-><init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;Lcom/google/goggles/GogglesReplayProtos$1;)V

    .line 288
    iget v3, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 289
    const/4 v1, 0x0

    .line 290
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2f

    .line 293
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->queryId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->queryId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->access$302(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 295
    or-int/lit8 v0, v0, 0x2

    .line 297
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->access$402(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 298
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_26

    .line 299
    or-int/lit8 v0, v0, 0x4

    .line 301
    :cond_26
    iget-wide v3, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->msSinceEpoch_:J

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->msSinceEpoch_:J
    invoke-static {v2, v3, v4}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->access$502(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;J)J

    .line 302
    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->access$602(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;I)I

    .line 303
    return-object v2

    :cond_2f
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 3

    .prologue
    .line 250
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->queryId_:Ljava/lang/Object;

    .line 252
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 253
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 254
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->msSinceEpoch_:J

    .line 256
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 257
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->clear()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->clear()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearGogglesConfig()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 2

    .prologue
    .line 445
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 447
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 448
    return-object p0
.end method

.method public clearMsSinceEpoch()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 3

    .prologue
    .line 466
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 467
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->msSinceEpoch_:J

    .line 469
    return-object p0
.end method

.method public clearQueryId()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 2

    .prologue
    .line 397
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 398
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getQueryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->queryId_:Ljava/lang/Object;

    .line 400
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 3

    .prologue
    .line 261
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

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
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 2

    .prologue
    .line 265
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    return-object v0
.end method

.method public getMsSinceEpoch()J
    .registers 3

    .prologue
    .line 457
    iget-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->msSinceEpoch_:J

    return-wide v0
.end method

.method public getQueryId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->queryId_:Ljava/lang/Object;

    .line 379
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 380
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 381
    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->queryId_:Ljava/lang/Object;

    .line 384
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasGogglesConfig()Z
    .registers 3

    .prologue
    .line 411
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

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

.method public hasMsSinceEpoch()Z
    .registers 3

    .prologue
    .line 454
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

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

.method public hasQueryId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 375
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->hasGogglesConfig()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 324
    const/4 v0, 0x0

    .line 327
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 307
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 317
    :cond_6
    :goto_6
    return-object p0

    .line 308
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->hasQueryId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 309
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getQueryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->setQueryId(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    .line 311
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->hasGogglesConfig()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 312
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    .line 314
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->hasMsSinceEpoch()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getMsSinceEpoch()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->setMsSinceEpoch(J)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 336
    sparse-switch v0, :sswitch_data_44

    .line 341
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    :sswitch_d
    return-object p0

    .line 348
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 349
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->queryId_:Ljava/lang/Object;

    goto :goto_0

    .line 353
    :sswitch_1b
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->hasGogglesConfig()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 355
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 357
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 358
    invoke-virtual {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildPartial()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->setGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    goto :goto_0

    .line 362
    :sswitch_37
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 363
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->msSinceEpoch_:J

    goto :goto_0

    .line 336
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x1a -> :sswitch_1b
        0x20 -> :sswitch_37
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 234
    check-cast p1, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 433
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 435
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildPartial()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 441
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 442
    return-object p0

    .line 438
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    goto :goto_1f
.end method

.method public setGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 427
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->build()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 429
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 430
    return-object p0
.end method

.method public setGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 417
    if-nez p1, :cond_8

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 420
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 422
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 423
    return-object p0
.end method

.method public setMsSinceEpoch(J)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 460
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 461
    iput-wide p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->msSinceEpoch_:J

    .line 463
    return-object p0
.end method

.method public setQueryId(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 388
    if-nez p1, :cond_8

    .line 389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 391
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 392
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->queryId_:Ljava/lang/Object;

    .line 394
    return-object p0
.end method

.method setQueryId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 403
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->bitField0_:I

    .line 404
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->queryId_:Ljava/lang/Object;

    .line 406
    return-void
.end method
