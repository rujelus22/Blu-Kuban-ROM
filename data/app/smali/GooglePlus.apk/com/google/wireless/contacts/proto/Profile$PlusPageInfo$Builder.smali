.class public final Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$PlusPageInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;",
        "Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Profile$PlusPageInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2416
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2516
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->LOCAL:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2417
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->maybeForceBuilderInitialization()V

    .line 2418
    return-void
.end method

.method static synthetic access$3300()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    .registers 1

    .prologue
    .line 2411
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    .registers 1

    .prologue
    .line 2423
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2421
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 3

    .prologue
    .line 2442
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    .line 2443
    .local v0, result:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2444
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2446
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 6

    .prologue
    .line 2460
    new-instance v1, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;-><init>(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V

    .line 2461
    .local v1, result:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->bitField0_:I

    .line 2462
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2463
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2464
    or-int/lit8 v2, v2, 0x1

    .line 2466
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->access$3502(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2467
    #setter for: Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->access$3602(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;I)I

    .line 2468
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    .registers 2

    .prologue
    .line 2427
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2428
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->LOCAL:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2429
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->bitField0_:I

    .line 2430
    return-object p0
.end method

.method public clearEntityType()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    .registers 2

    .prologue
    .line 2533
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->bitField0_:I

    .line 2534
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->LOCAL:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2536
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    .registers 3

    .prologue
    .line 2434
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

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
    .line 2411
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 2

    .prologue
    .line 2438
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEntityType()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;
    .registers 2

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    return-object v0
.end method

.method public hasEntityType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2518
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->bitField0_:I

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
    .line 2480
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
    .line 2411
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2411
    check-cast p1, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

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
    .line 2411
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2488
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2489
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 2494
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2496
    :sswitch_d
    return-object p0

    .line 2501
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2502
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->valueOf(I)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    move-result-object v2

    .line 2503
    .local v2, value:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;
    if-eqz v2, :cond_0

    .line 2504
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->bitField0_:I

    .line 2505
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    goto :goto_0

    .line 2489
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2472
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2476
    :cond_6
    :goto_6
    return-object p0

    .line 2473
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->hasEntityType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2474
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getEntityType()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->setEntityType(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    goto :goto_6
.end method

.method public setEntityType(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2524
    if-nez p1, :cond_8

    .line 2525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2527
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->bitField0_:I

    .line 2528
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2530
    return-object p0
.end method
