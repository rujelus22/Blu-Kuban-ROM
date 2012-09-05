.class public final Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
        "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private firstName_:Ljava/lang/Object;

.field private fullName_:Ljava/lang/Object;

.field private participantId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4564
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4565
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->maybeForceBuilderInitialization()V

    .line 4566
    return-void
.end method

.method static synthetic access$6000()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 1

    .prologue
    .line 4559
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 1

    .prologue
    .line 4571
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4569
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 3

    .prologue
    .line 4594
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    .line 4595
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4596
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4598
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 6

    .prologue
    .line 4612
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;-><init>(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 4613
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4614
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4615
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4616
    or-int/lit8 v2, v2, 0x1

    .line 4618
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->access$6202(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4619
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4620
    or-int/lit8 v2, v2, 0x2

    .line 4622
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->access$6302(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4623
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 4624
    or-int/lit8 v2, v2, 0x4

    .line 4626
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->access$6402(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4627
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->access$6502(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;I)I

    .line 4628
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2

    .prologue
    .line 4575
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4577
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4579
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4581
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4582
    return-object p0
.end method

.method public clearFirstName()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2

    .prologue
    .line 4784
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4785
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4787
    return-object p0
.end method

.method public clearFullName()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2

    .prologue
    .line 4748
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4749
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4751
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2

    .prologue
    .line 4712
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4713
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4715
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 3

    .prologue
    .line 4586
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

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
    .line 4559
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 2

    .prologue
    .line 4590
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4765
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4766
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4767
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4768
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4771
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

.method public getFullName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4729
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4730
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4731
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4732
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4735
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

.method public getParticipantId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4693
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4694
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4695
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4696
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4699
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

.method public hasFirstName()Z
    .registers 3

    .prologue
    .line 4762
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

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

.method public hasFullName()Z
    .registers 3

    .prologue
    .line 4726
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4690
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

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
    .line 4559
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

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
    .line 4559
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4654
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4655
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 4660
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4662
    :sswitch_d
    return-object p0

    .line 4667
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4668
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    goto :goto_0

    .line 4672
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4673
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    goto :goto_0

    .line 4677
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4678
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    goto :goto_0

    .line 4655
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 4632
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4642
    :cond_6
    :goto_6
    return-object p0

    .line 4633
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4634
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    .line 4636
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->hasFullName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4637
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    .line 4639
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4640
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    goto :goto_6
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4775
    if-nez p1, :cond_8

    .line 4776
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4778
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4779
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4781
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4739
    if-nez p1, :cond_8

    .line 4740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4742
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4743
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4745
    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4703
    if-nez p1, :cond_8

    .line 4704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4706
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4707
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4709
    return-object p0
.end method
