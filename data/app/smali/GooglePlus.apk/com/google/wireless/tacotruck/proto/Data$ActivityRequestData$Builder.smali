.class public final Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;",
        "Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private collapsedDataOnly_:Z

.field private maxResults_:I

.field private shownActivitiesBlob_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41307
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 41467
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    .line 41308
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maybeForceBuilderInitialization()V

    .line 41309
    return-void
.end method

.method static synthetic access$55400()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 1

    .prologue
    .line 41302
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 1

    .prologue
    .line 41314
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 41312
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 3

    .prologue
    .line 41337
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    .line 41338
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 41339
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 41341
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 6

    .prologue
    .line 41355
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 41356
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41357
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 41358
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 41359
    or-int/lit8 v2, v2, 0x1

    .line 41361
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->access$55602(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41362
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 41363
    or-int/lit8 v2, v2, 0x2

    .line 41365
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->access$55702(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;I)I

    .line 41366
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 41367
    or-int/lit8 v2, v2, 0x4

    .line 41369
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->access$55802(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;Z)Z

    .line 41370
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->access$55902(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;I)I

    .line 41371
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2

    .prologue
    .line 41318
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 41320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41321
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    .line 41322
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    .line 41324
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41325
    return-object p0
.end method

.method public clearCollapsedDataOnly()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2

    .prologue
    .line 41502
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    .line 41505
    return-object p0
.end method

.method public clearMaxResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2

    .prologue
    .line 41481
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41482
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    .line 41484
    return-object p0
.end method

.method public clearShownActivitiesBlob()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2

    .prologue
    .line 41455
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41456
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 41458
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 41302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 3

    .prologue
    .line 41329
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

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
    .line 41302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 41493
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 41302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 2

    .prologue
    .line 41333
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getMaxResults()I
    .registers 2

    .prologue
    .line 41472
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    return v0
.end method

.method public getShownActivitiesBlob()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41436
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 41437
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41438
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41439
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 41442
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

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 41490
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

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

.method public hasMaxResults()Z
    .registers 3

    .prologue
    .line 41469
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

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

.method public hasShownActivitiesBlob()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41433
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

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
    .line 41389
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
    .line 41302
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41302
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

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
    .line 41302
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41397
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 41398
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 41403
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41405
    :sswitch_d
    return-object p0

    .line 41410
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41411
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    goto :goto_0

    .line 41415
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41416
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    goto :goto_0

    .line 41420
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41421
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    goto :goto_0

    .line 41398
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 41375
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 41385
    :cond_6
    :goto_6
    return-object p0

    .line 41376
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->hasShownActivitiesBlob()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 41377
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->setShownActivitiesBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    .line 41379
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->hasMaxResults()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 41380
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getMaxResults()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->setMaxResults(I)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    .line 41382
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->hasCollapsedDataOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41383
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getCollapsedDataOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    goto :goto_6
.end method

.method public setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41496
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41497
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    .line 41499
    return-object p0
.end method

.method public setMaxResults(I)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41475
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41476
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    .line 41478
    return-object p0
.end method

.method public setShownActivitiesBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41446
    if-nez p1, :cond_8

    .line 41447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41449
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 41450
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 41452
    return-object p0
.end method
