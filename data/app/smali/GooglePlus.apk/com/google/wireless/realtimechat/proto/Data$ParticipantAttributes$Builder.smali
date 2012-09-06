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
    .line 4570
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4730
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4571
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->maybeForceBuilderInitialization()V

    .line 4572
    return-void
.end method

.method static synthetic access$6000()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 1

    .prologue
    .line 4565
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 1

    .prologue
    .line 4577
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4575
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4565
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 3

    .prologue
    .line 4600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    .line 4601
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4602
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4604
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4565
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 6

    .prologue
    .line 4618
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;-><init>(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 4619
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4620
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4621
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4622
    or-int/lit8 v2, v2, 0x1

    .line 4624
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->access$6202(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4625
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4626
    or-int/lit8 v2, v2, 0x2

    .line 4628
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->access$6302(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4629
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 4630
    or-int/lit8 v2, v2, 0x4

    .line 4632
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->access$6402(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4633
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->access$6502(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;I)I

    .line 4634
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4565
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4565
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2

    .prologue
    .line 4581
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4583
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4585
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4586
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4587
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4588
    return-object p0
.end method

.method public clearFirstName()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2

    .prologue
    .line 4790
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4791
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4793
    return-object p0
.end method

.method public clearFullName()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2

    .prologue
    .line 4754
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4755
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4757
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2

    .prologue
    .line 4718
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4719
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4721
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4565
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4565
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 3

    .prologue
    .line 4592
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
    .line 4565
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4565
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4565
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 2

    .prologue
    .line 4596
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4771
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4772
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4773
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4774
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4777
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
    .line 4735
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4736
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4737
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4738
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4741
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
    .line 4699
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4700
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4701
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4702
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4705
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
    .line 4768
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
    .line 4732
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

    .line 4696
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

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
    .line 4652
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
    .line 4565
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4565
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

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
    .line 4565
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
    .line 4660
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4661
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 4666
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4668
    :sswitch_d
    return-object p0

    .line 4673
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4674
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    goto :goto_0

    .line 4678
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4679
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    goto :goto_0

    .line 4683
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4684
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    goto :goto_0

    .line 4661
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
    .line 4638
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4648
    :cond_6
    :goto_6
    return-object p0

    .line 4639
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4640
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    .line 4642
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->hasFullName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4643
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    .line 4645
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4646
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    goto :goto_6
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4781
    if-nez p1, :cond_8

    .line 4782
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4784
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4785
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->firstName_:Ljava/lang/Object;

    .line 4787
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4745
    if-nez p1, :cond_8

    .line 4746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4748
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4749
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->fullName_:Ljava/lang/Object;

    .line 4751
    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4709
    if-nez p1, :cond_8

    .line 4710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4712
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->bitField0_:I

    .line 4713
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->participantId_:Ljava/lang/Object;

    .line 4715
    return-object p0
.end method
