.class public final Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ProfileRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$ProfileRequest;",
        "Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$ProfileRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

.field private profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

.field private profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5746
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5882
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 5925
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->FULL:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    .line 5949
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    .line 5747
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->maybeForceBuilderInitialization()V

    .line 5748
    return-void
.end method

.method static synthetic access$7200()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 1

    .prologue
    .line 5741
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 1

    .prologue
    .line 5753
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5751
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    .registers 3

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    .line 5777
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5778
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5780
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5741
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    .registers 6

    .prologue
    .line 5794
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 5795
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5796
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5797
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5798
    or-int/lit8 v2, v2, 0x1

    .line 5800
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->access$7402(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 5801
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5802
    or-int/lit8 v2, v2, 0x2

    .line 5804
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->access$7502(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    .line 5805
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 5806
    or-int/lit8 v2, v2, 0x4

    .line 5808
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->access$7602(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    .line 5809
    #setter for: Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->access$7702(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;I)I

    .line 5810
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5741
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5741
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 2

    .prologue
    .line 5757
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5758
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 5759
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5760
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->FULL:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    .line 5761
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5762
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    .line 5763
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5764
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 2

    .prologue
    .line 5918
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 5920
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5921
    return-object p0
.end method

.method public clearProfileRequestMask()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 2

    .prologue
    .line 5985
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    .line 5987
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5988
    return-object p0
.end method

.method public clearProfileSize()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 2

    .prologue
    .line 5942
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5943
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->FULL:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    .line 5945
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5741
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5741
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 3

    .prologue
    .line 5768
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

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
    .line 5741
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5741
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5741
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    .registers 2

    .prologue
    .line 5772
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 5887
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public getProfileRequestMask()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    .registers 2

    .prologue
    .line 5954
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    return-object v0
.end method

.method public getProfileSize()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
    .registers 2

    .prologue
    .line 5930
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    return-object v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5884
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasProfileRequestMask()Z
    .registers 3

    .prologue
    .line 5951
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

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

.method public hasProfileSize()Z
    .registers 3

    .prologue
    .line 5927
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

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
    .line 5741
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

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
    .line 5741
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5836
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5837
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_5a

    .line 5842
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5844
    :sswitch_d
    return-object p0

    .line 5849
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v1

    .line 5850
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->hasId()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 5851
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    .line 5853
    :cond_1f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5854
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    goto :goto_0

    .line 5858
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5859
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->valueOf(I)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    move-result-object v3

    .line 5860
    .local v3, value:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
    if-eqz v3, :cond_0

    .line 5861
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5862
    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    goto :goto_0

    .line 5867
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
    :sswitch_3d
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v1

    .line 5868
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->hasProfileRequestMask()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 5869
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->getProfileRequestMask()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    .line 5871
    :cond_4e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5872
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->setProfileRequestMask(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    goto :goto_0

    .line 5837
    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
        0x1a -> :sswitch_3d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 5814
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5824
    :cond_6
    :goto_6
    return-object p0

    .line 5815
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5816
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->mergeId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    .line 5818
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->hasProfileSize()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5819
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getProfileSize()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->setProfileSize(Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    .line 5821
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->hasProfileRequestMask()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5822
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getProfileRequestMask()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->mergeProfileRequestMask(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    goto :goto_6
.end method

.method public mergeId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5906
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 5908
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 5914
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5915
    return-object p0

    .line 5911
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    goto :goto_1f
.end method

.method public mergeProfileRequestMask(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5973
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 5975
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->newBuilder(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    .line 5981
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5982
    return-object p0

    .line 5978
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    goto :goto_1f
.end method

.method public setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 5900
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 5902
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5903
    return-object p0
.end method

.method public setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5890
    if-nez p1, :cond_8

    .line 5891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5893
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 5895
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5896
    return-object p0
.end method

.method public setProfileRequestMask(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 5967
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->build()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    .line 5969
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5970
    return-object p0
.end method

.method public setProfileRequestMask(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5957
    if-nez p1, :cond_8

    .line 5958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5960
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    .line 5962
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5963
    return-object p0
.end method

.method public setProfileSize(Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5933
    if-nez p1, :cond_8

    .line 5934
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5936
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->bitField0_:I

    .line 5937
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    .line 5939
    return-object p0
.end method
