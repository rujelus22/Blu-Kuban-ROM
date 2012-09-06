.class public final Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChartOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;",
        "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChartOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private value_:Lcom/google/feedreader/extrpc/Client$TrendsData;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26249
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->key_:Ljava/lang/Object;

    .line 26411
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    .line 26250
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->maybeForceBuilderInitialization()V

    .line 26251
    return-void
.end method

.method static synthetic access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26244
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$32500()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 1

    .prologue
    .line 26244
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26286
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    .line 26287
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 26288
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 26291
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 1

    .prologue
    .line 26256
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 26254
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 3

    .prologue
    .line 26277
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    .line 26278
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 26279
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 26281
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26244
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 6

    .prologue
    .line 26295
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;-><init>(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 26296
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26297
    const/4 v2, 0x0

    .line 26298
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 26299
    or-int/lit8 v2, v2, 0x1

    .line 26301
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->key_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->access$32702(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26302
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 26303
    or-int/lit8 v1, v2, 0x2

    .line 26305
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->access$32802(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    .line 26306
    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->access$32902(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;I)I

    .line 26307
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26244
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 2

    .prologue
    .line 26260
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->key_:Ljava/lang/Object;

    .line 26262
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26263
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    .line 26264
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26265
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26244
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26244
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearKey()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 2

    .prologue
    .line 26399
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26400
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->key_:Ljava/lang/Object;

    .line 26402
    return-object p0
.end method

.method public clearValue()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 2

    .prologue
    .line 26447
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    .line 26449
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26450
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 3

    .prologue
    .line 26269
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 26244
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26244
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26244
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

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
    .line 26244
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 2

    .prologue
    .line 26273
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 26244
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26244
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 26380
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->key_:Ljava/lang/Object;

    .line 26381
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 26382
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26383
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->key_:Ljava/lang/Object;

    move-object v2, v1

    .line 26386
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

.method public getValue()Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 2

    .prologue
    .line 26416
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    return-object v0
.end method

.method public hasKey()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 26377
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 26413
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 26322
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->hasKey()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 26334
    :goto_8
    return v0

    .line 26326
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 26328
    goto :goto_8

    .line 26330
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->getValue()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v1

    .line 26332
    goto :goto_8

    .line 26334
    :cond_1d
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 3
    .parameter

    .prologue
    .line 26311
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 26318
    :goto_7
    return-object v0

    .line 26312
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 26313
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->setKey(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    .line 26315
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 26316
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getValue()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeValue(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    :cond_22
    move-object v0, p0

    .line 26318
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26342
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 26343
    sparse-switch v0, :sswitch_data_3a

    .line 26348
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 26350
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 26346
    goto :goto_e

    .line 26355
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26356
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 26360
    :sswitch_1e
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    .line 26361
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 26362
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->getValue()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    .line 26364
    :cond_2f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26365
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->setValue(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    goto :goto_0

    .line 26343
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_1e
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
    .line 26244
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 26244
    check-cast p1, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

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
    .line 26244
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeValue(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26435
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 26437
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    .line 26443
    :goto_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26444
    return-object p0

    .line 26440
    :cond_26
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    goto :goto_1f
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26390
    if-nez p1, :cond_8

    .line 26391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26393
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26394
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->key_:Ljava/lang/Object;

    .line 26396
    return-object p0
.end method

.method setKey(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 26405
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26406
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->key_:Ljava/lang/Object;

    .line 26408
    return-void
.end method

.method public setValue(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26429
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->build()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    .line 26431
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26432
    return-object p0
.end method

.method public setValue(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26419
    if-nez p1, :cond_8

    .line 26420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26422
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    .line 26424
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->bitField0_:I

    .line 26425
    return-object p0
.end method
