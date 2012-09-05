.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxCount_:I

.field private params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

.field private view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2576
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2714
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2759
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2577
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 2578
    return-void
.end method

.method static synthetic access$3000()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 1

    .prologue
    .line 2571
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 1

    .prologue
    .line 2583
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2581
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    .registers 3

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    .line 2607
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2608
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2610
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2571
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    .registers 6

    .prologue
    .line 2624
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 2625
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2626
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2627
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2628
    or-int/lit8 v2, v2, 0x1

    .line 2630
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->access$3202(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2631
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2632
    or-int/lit8 v2, v2, 0x2

    .line 2634
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->maxCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->access$3302(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;I)I

    .line 2635
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2636
    or-int/lit8 v2, v2, 0x4

    .line 2638
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->access$3402(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2639
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->access$3502(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;I)I

    .line 2640
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2571
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2571
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 2

    .prologue
    .line 2587
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2588
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2589
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2590
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    .line 2591
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2592
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2593
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2594
    return-object p0
.end method

.method public clearMaxCount()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2752
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2753
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    .line 2755
    return-object p0
.end method

.method public clearParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 2

    .prologue
    .line 2795
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2797
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2798
    return-object p0
.end method

.method public clearView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2731
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2732
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2734
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2571
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2571
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3

    .prologue
    .line 2598
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

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
    .line 2571
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2571
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2571
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    .registers 2

    .prologue
    .line 2602
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2743
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    return v0
.end method

.method public getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    return-object v0
.end method

.method public hasMaxCount()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2740
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

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

.method public hasParams()Z
    .registers 3

    .prologue
    .line 2761
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

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

.method public hasView()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2716
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

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
    .line 2571
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

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
    .line 2571
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2672
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2673
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4a

    .line 2678
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2680
    :sswitch_d
    return-object p0

    .line 2685
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2686
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    move-result-object v3

    .line 2687
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    if-eqz v3, :cond_0

    .line 2688
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2689
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    goto :goto_0

    .line 2694
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2695
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    goto :goto_0

    .line 2699
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v1

    .line 2700
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->hasParams()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 2703
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2704
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    goto :goto_0

    .line 2673
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2644
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2654
    :cond_6
    :goto_6
    return-object p0

    .line 2645
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->hasView()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2646
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    .line 2648
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->hasMaxCount()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2649
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getMaxCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    .line 2651
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->hasParams()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2652
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->mergeParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    goto :goto_6
.end method

.method public mergeParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2783
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2785
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2791
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2792
    return-object p0

    .line 2788
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    goto :goto_1f
.end method

.method public setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2746
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2747
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->maxCount_:I

    .line 2749
    return-object p0
.end method

.method public setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2777
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2779
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2780
    return-object p0
.end method

.method public setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2767
    if-nez p1, :cond_8

    .line 2768
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2770
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2772
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2773
    return-object p0
.end method

.method public setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2722
    if-nez p1, :cond_8

    .line 2723
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2725
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->bitField0_:I

    .line 2726
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2728
    return-object p0
.end method
