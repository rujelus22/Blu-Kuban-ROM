.class public final Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
        "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocodeOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24329
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24443
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 24479
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 24330
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->maybeForceBuilderInitialization()V

    .line 24331
    return-void
.end method

.method static synthetic access$32600()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 1

    .prologue
    .line 24324
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 1

    .prologue
    .line 24336
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24334
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24324
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 3

    .prologue
    .line 24357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    .line 24358
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24359
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 24361
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24324
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 6

    .prologue
    .line 24375
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 24376
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 24377
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 24378
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 24379
    or-int/lit8 v2, v2, 0x1

    .line 24381
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->access$32802(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24382
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 24383
    or-int/lit8 v2, v2, 0x2

    .line 24385
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->access$32902(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 24386
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->access$33002(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;I)I

    .line 24387
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24324
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24324
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 2

    .prologue
    .line 24340
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 24342
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 24343
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 24344
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 24345
    return-object p0
.end method

.method public clearAddress()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 2

    .prologue
    .line 24467
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 24468
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 24470
    return-object p0
.end method

.method public clearGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 2

    .prologue
    .line 24496
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 24497
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 24499
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24324
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24324
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 3

    .prologue
    .line 24349
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

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
    .line 24324
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24448
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 24449
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24450
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24451
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 24454
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
    .line 24324
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24324
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 2

    .prologue
    .line 24353
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    return-object v0
.end method

.method public getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    .registers 2

    .prologue
    .line 24484
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    return-object v0
.end method

.method public hasAddress()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24445
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasGranularity()Z
    .registers 3

    .prologue
    .line 24481
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

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
    .line 24402
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
    .line 24324
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24324
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

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
    .line 24324
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24410
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 24411
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 24416
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 24418
    :sswitch_d
    return-object p0

    .line 24423
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 24424
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 24428
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 24429
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v2

    .line 24430
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    if-eqz v2, :cond_0

    .line 24431
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 24432
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    goto :goto_0

    .line 24411
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 24391
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24398
    :cond_6
    :goto_6
    return-object p0

    .line 24392
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24393
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->setAddress(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    .line 24395
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->hasGranularity()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24396
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->setGranularity(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    goto :goto_6
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24458
    if-nez p1, :cond_8

    .line 24459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24461
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 24462
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 24464
    return-object p0
.end method

.method public setGranularity(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24487
    if-nez p1, :cond_8

    .line 24488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24490
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 24491
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 24493
    return-object p0
.end method
