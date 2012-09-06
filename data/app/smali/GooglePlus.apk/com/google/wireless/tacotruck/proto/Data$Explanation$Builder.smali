.class public final Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ExplanationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Explanation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Explanation;",
        "Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ExplanationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2514
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2642
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2702
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2515
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->maybeForceBuilderInitialization()V

    .line 2516
    return-void
.end method

.method static synthetic access$2700()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 1

    .prologue
    .line 2509
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 1

    .prologue
    .line 2521
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2519
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2509
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 3

    .prologue
    .line 2544
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    .line 2545
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2546
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2548
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2509
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 6

    .prologue
    .line 2562
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 2563
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2564
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2565
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2566
    or-int/lit8 v2, v2, 0x1

    .line 2568
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->access$2902(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2569
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2570
    or-int/lit8 v2, v2, 0x2

    .line 2572
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->access$3002(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2573
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2574
    or-int/lit8 v2, v2, 0x4

    .line 2576
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->access$3102(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2577
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->access$3202(Lcom/google/wireless/tacotruck/proto/Data$Explanation;I)I

    .line 2578
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2509
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2509
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2

    .prologue
    .line 2525
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2526
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2527
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2531
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2532
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2

    .prologue
    .line 2726
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2727
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2729
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2

    .prologue
    .line 2690
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2691
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2693
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2

    .prologue
    .line 2659
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2660
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2662
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2509
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2509
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 3

    .prologue
    .line 2536
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

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
    .line 2509
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2509
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2509
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 2

    .prologue
    .line 2540
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2708
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2709
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2710
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2713
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

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2672
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2673
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2674
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2677
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    .registers 2

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    return-object v0
.end method

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 2704
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    .line 2668
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2644
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

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
    .line 2596
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
    .line 2509
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2509
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

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
    .line 2509
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2604
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2605
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 2610
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2612
    :sswitch_d
    return-object p0

    .line 2617
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2618
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v2

    .line 2619
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    if-eqz v2, :cond_0

    .line 2620
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2621
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_0

    .line 2626
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2627
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 2631
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2632
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 2605
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2582
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2592
    :cond_6
    :goto_6
    return-object p0

    .line 2583
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2584
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    .line 2586
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2587
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    .line 2589
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2590
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    goto :goto_6
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2717
    if-nez p1, :cond_8

    .line 2718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2720
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2721
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2723
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2681
    if-nez p1, :cond_8

    .line 2682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2684
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2685
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2687
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2650
    if-nez p1, :cond_8

    .line 2651
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2653
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2654
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2656
    return-object p0
.end method
