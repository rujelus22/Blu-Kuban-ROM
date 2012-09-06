.class public final Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$EventActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$EventActionData;",
        "Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$EventActionDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private creatorObfuscatedId_:Ljava/lang/Object;

.field private eventId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28413
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->eventId_:Ljava/lang/Object;

    .line 28449
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 28304
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->maybeForceBuilderInitialization()V

    .line 28305
    return-void
.end method

.method static synthetic access$37800()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 1

    .prologue
    .line 28298
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 1

    .prologue
    .line 28310
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28308
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    .registers 3

    .prologue
    .line 28331
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    .line 28332
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28333
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28335
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    .registers 6

    .prologue
    .line 28349
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 28350
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    .line 28351
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28352
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28353
    or-int/lit8 v2, v2, 0x1

    .line 28355
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->eventId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->eventId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->access$38002(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28356
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28357
    or-int/lit8 v2, v2, 0x2

    .line 28359
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->creatorObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->access$38102(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28360
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->access$38202(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;I)I

    .line 28361
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 2

    .prologue
    .line 28314
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28315
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->eventId_:Ljava/lang/Object;

    .line 28316
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    .line 28317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 28318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    .line 28319
    return-object p0
.end method

.method public clearCreatorObfuscatedId()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 2

    .prologue
    .line 28473
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    .line 28474
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getCreatorObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 28476
    return-object p0
.end method

.method public clearEventId()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 2

    .prologue
    .line 28437
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    .line 28438
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->eventId_:Ljava/lang/Object;

    .line 28440
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 3

    .prologue
    .line 28323
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

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
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorObfuscatedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28454
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 28455
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28456
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28457
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 28460
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
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    .registers 2

    .prologue
    .line 28327
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28418
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->eventId_:Ljava/lang/Object;

    .line 28419
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28420
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28421
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->eventId_:Ljava/lang/Object;

    .line 28424
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

.method public hasCreatorObfuscatedId()Z
    .registers 3

    .prologue
    .line 28451
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

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

.method public hasEventId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28415
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

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
    .line 28376
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
    .line 28298
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28298
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

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
    .line 28298
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28384
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 28385
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 28390
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28392
    :sswitch_d
    return-object p0

    .line 28397
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    .line 28398
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->eventId_:Ljava/lang/Object;

    goto :goto_0

    .line 28402
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    .line 28403
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 28385
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 28365
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28372
    :cond_6
    :goto_6
    return-object p0

    .line 28366
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->hasEventId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28367
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->setEventId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    .line 28369
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->hasCreatorObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28370
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getCreatorObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->setCreatorObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    goto :goto_6
.end method

.method public setCreatorObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28464
    if-nez p1, :cond_8

    .line 28465
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28467
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    .line 28468
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 28470
    return-object p0
.end method

.method public setEventId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28428
    if-nez p1, :cond_8

    .line 28429
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28431
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->bitField0_:I

    .line 28432
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->eventId_:Ljava/lang/Object;

    .line 28434
    return-object p0
.end method
