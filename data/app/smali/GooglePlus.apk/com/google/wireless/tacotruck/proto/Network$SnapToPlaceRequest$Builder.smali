.class public final Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private accuracyInMeters_:I

.field private bitField0_:I

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20496
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20616
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 20497
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->maybeForceBuilderInitialization()V

    .line 20498
    return-void
.end method

.method static synthetic access$27600()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 1

    .prologue
    .line 20491
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 1

    .prologue
    .line 20503
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20501
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20491
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
    .registers 3

    .prologue
    .line 20524
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v0

    .line 20525
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20526
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20528
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20491
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
    .registers 6

    .prologue
    .line 20542
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 20543
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    .line 20544
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20545
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 20546
    or-int/lit8 v2, v2, 0x1

    .line 20548
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->access$27802(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 20549
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 20550
    or-int/lit8 v2, v2, 0x2

    .line 20552
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->accuracyInMeters_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->access$27902(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;I)I

    .line 20553
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->access$28002(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;I)I

    .line 20554
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20491
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20491
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 2

    .prologue
    .line 20507
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20508
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 20509
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    .line 20510
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->accuracyInMeters_:I

    .line 20511
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    .line 20512
    return-object p0
.end method

.method public clearAccuracyInMeters()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 2

    .prologue
    .line 20673
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    .line 20674
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->accuracyInMeters_:I

    .line 20676
    return-object p0
.end method

.method public clearPosition()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 2

    .prologue
    .line 20652
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 20654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    .line 20655
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20491
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20491
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 3

    .prologue
    .line 20516
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

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
    .line 20491
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracyInMeters()I
    .registers 2

    .prologue
    .line 20664
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->accuracyInMeters_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20491
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20491
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
    .registers 2

    .prologue
    .line 20520
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 20621
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public hasAccuracyInMeters()Z
    .registers 3

    .prologue
    .line 20661
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

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

.method public hasPosition()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20618
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

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
    .line 20569
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 20570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 20572
    const/4 v0, 0x0

    .line 20575
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
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
    .line 20491
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20491
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

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
    .line 20491
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20583
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 20584
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 20589
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20591
    :sswitch_d
    return-object p0

    .line 20596
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    .line 20597
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->hasPosition()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 20598
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 20600
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 20601
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    goto :goto_0

    .line 20605
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    .line 20606
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->accuracyInMeters_:I

    goto :goto_0

    .line 20584
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 20558
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 20565
    :cond_6
    :goto_6
    return-object p0

    .line 20559
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 20560
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    .line 20562
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->hasAccuracyInMeters()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20563
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->getAccuracyInMeters()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->setAccuracyInMeters(I)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    goto :goto_6
.end method

.method public mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 20640
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 20642
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 20648
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    .line 20649
    return-object p0

    .line 20645
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    goto :goto_1f
.end method

.method public setAccuracyInMeters(I)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20667
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    .line 20668
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->accuracyInMeters_:I

    .line 20670
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 20634
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 20636
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    .line 20637
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20624
    if-nez p1, :cond_8

    .line 20625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20627
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 20629
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->bitField0_:I

    .line 20630
    return-object p0
.end method
