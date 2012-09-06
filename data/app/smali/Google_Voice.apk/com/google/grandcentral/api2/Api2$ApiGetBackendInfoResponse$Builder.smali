.class public final Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private accessNumberForPostDialPinCalls_:Ljava/lang/Object;

.field private bitField0_:I

.field private mapping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;",
            ">;"
        }
    .end annotation
.end field

.field private pin_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5569
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5699
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 5742
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    .line 5848
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    .line 5570
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->maybeForceBuilderInitialization()V

    .line 5571
    return-void
.end method

.method static synthetic access$6100()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 1

    .prologue
    .line 5564
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 1

    .prologue
    .line 5576
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMappingIsMutable()V
    .registers 3

    .prologue
    .line 5851
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 5852
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    .line 5853
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5855
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5574
    return-void
.end method


# virtual methods
.method public addAllMapping(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 5918
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->ensureMappingIsMutable()V

    .line 5919
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5921
    return-object p0
.end method

.method public addMapping(ILcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5911
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->ensureMappingIsMutable()V

    .line 5912
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5914
    return-object p0
.end method

.method public addMapping(ILcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5894
    if-nez p2, :cond_8

    .line 5895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5897
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->ensureMappingIsMutable()V

    .line 5898
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5900
    return-object p0
.end method

.method public addMapping(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5904
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->ensureMappingIsMutable()V

    .line 5905
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5907
    return-object p0
.end method

.method public addMapping(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5884
    if-nez p1, :cond_8

    .line 5885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5887
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->ensureMappingIsMutable()V

    .line 5888
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5890
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 3

    .prologue
    .line 5601
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v0

    .line 5602
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5603
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5605
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5564
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 6

    .prologue
    .line 5609
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 5610
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5611
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5612
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5613
    or-int/lit8 v2, v2, 0x1

    .line 5615
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->access$6302(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 5616
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5617
    or-int/lit8 v2, v2, 0x2

    .line 5619
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->access$6402(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5620
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 5621
    or-int/lit8 v2, v2, 0x4

    .line 5623
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->pin_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->access$6502(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5624
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 5625
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    .line 5626
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5628
    :cond_43
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->access$6602(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;Ljava/util/List;)Ljava/util/List;

    .line 5629
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->access$6702(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;I)I

    .line 5630
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5564
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 2

    .prologue
    .line 5580
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5581
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 5582
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5583
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5584
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5585
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    .line 5586
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    .line 5588
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5589
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5564
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5564
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccessNumberForPostDialPinCalls()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 2

    .prologue
    .line 5778
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5779
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getAccessNumberForPostDialPinCalls()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5781
    return-object p0
.end method

.method public clearMapping()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 2

    .prologue
    .line 5924
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    .line 5925
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5927
    return-object p0
.end method

.method public clearPin()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 2

    .prologue
    .line 5831
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5832
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getPin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    .line 5834
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 2

    .prologue
    .line 5735
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 5737
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5738
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 3

    .prologue
    .line 5593
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5564
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5564
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5564
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

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
    .line 5564
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccessNumberForPostDialPinCalls()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5747
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5748
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5749
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5750
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5753
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

.method public getAccessNumberForPostDialPinCallsBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5758
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5759
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5760
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5762
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5765
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 2

    .prologue
    .line 5597
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5564
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5564
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMapping(I)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 3
    .parameter "index"

    .prologue
    .line 5864
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public getMappingCount()I
    .registers 2

    .prologue
    .line 5861
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMappingList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5858
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5800
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    .line 5801
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5802
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5803
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    .line 5806
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

.method public getPinBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5811
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    .line 5812
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5813
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5815
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    .line 5818
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 5704
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasAccessNumberForPostDialPinCalls()Z
    .registers 3

    .prologue
    .line 5744
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

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

.method public hasPin()Z
    .registers 3

    .prologue
    .line 5797
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5701
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5662
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->hasStatus()Z

    move-result v2

    if-nez v2, :cond_8

    .line 5676
    :cond_7
    :goto_7
    return v1

    .line 5666
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5670
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->getMappingCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 5671
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->getMapping(I)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5670
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 5676
    :cond_26
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 5634
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5658
    :cond_6
    :goto_6
    return-object p0

    .line 5635
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5636
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    .line 5638
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->hasAccessNumberForPostDialPinCalls()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5639
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5640
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->access$6400(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5643
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->hasPin()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5644
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5645
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->pin_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->access$6500(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    .line 5648
    :cond_38
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->access$6600(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5649
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 5650
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->access$6600(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    .line 5651
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 5653
    :cond_57
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->ensureMappingIsMutable()V

    .line 5654
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->access$6600(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5683
    const/4 v2, 0x0

    .line 5685
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 5690
    if-eqz v2, :cond_10

    .line 5691
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    .line 5694
    :cond_10
    return-object p0

    .line 5686
    :catch_11
    move-exception v1

    .line 5687
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-object v2, v0

    .line 5688
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 5690
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 5691
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    :cond_21
    throw v3
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
    .line 5564
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5564
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

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
    .line 5564
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5723
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 5725
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 5731
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5732
    return-object p0

    .line 5728
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public removeMapping(I)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5930
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->ensureMappingIsMutable()V

    .line 5931
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5933
    return-object p0
.end method

.method public setAccessNumberForPostDialPinCalls(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5769
    if-nez p1, :cond_8

    .line 5770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5772
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5773
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5775
    return-object p0
.end method

.method public setAccessNumberForPostDialPinCallsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5785
    if-nez p1, :cond_8

    .line 5786
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5788
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5789
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5791
    return-object p0
.end method

.method public setMapping(ILcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5878
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->ensureMappingIsMutable()V

    .line 5879
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5881
    return-object p0
.end method

.method public setMapping(ILcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5868
    if-nez p2, :cond_8

    .line 5869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5871
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->ensureMappingIsMutable()V

    .line 5872
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mapping_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5874
    return-object p0
.end method

.method public setPin(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5822
    if-nez p1, :cond_8

    .line 5823
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5825
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5826
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    .line 5828
    return-object p0
.end method

.method public setPinBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5838
    if-nez p1, :cond_8

    .line 5839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5841
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5842
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->pin_:Ljava/lang/Object;

    .line 5844
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 5717
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 5719
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5720
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5707
    if-nez p1, :cond_8

    .line 5708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5710
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 5712
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->bitField0_:I

    .line 5713
    return-object p0
.end method
