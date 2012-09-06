.class public final Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private idvGaiaId_:Ljava/lang/Object;

.field private idvPin_:Ljava/lang/Object;

.field private idvRequestId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 51618
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 51742
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 51778
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 51814
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 51619
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 51620
    return-void
.end method

.method static synthetic access$72500()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 1

    .prologue
    .line 51613
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 1

    .prologue
    .line 51625
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 51623
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    .registers 3

    .prologue
    .line 51648
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    .line 51649
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 51650
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 51652
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    .registers 6

    .prologue
    .line 51666
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 51667
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51668
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 51669
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 51670
    or-int/lit8 v2, v2, 0x1

    .line 51672
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->access$72702(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51673
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 51674
    or-int/lit8 v2, v2, 0x2

    .line 51676
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->access$72802(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51677
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 51678
    or-int/lit8 v2, v2, 0x4

    .line 51680
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->access$72902(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51681
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->access$73002(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;I)I

    .line 51682
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 51613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 51613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2

    .prologue
    .line 51629
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 51630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 51631
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 51633
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 51635
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51636
    return-object p0
.end method

.method public clearIdvGaiaId()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2

    .prologue
    .line 51838
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51839
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvGaiaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 51841
    return-object p0
.end method

.method public clearIdvPin()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2

    .prologue
    .line 51802
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51803
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvPin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 51805
    return-object p0
.end method

.method public clearIdvRequestId()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2

    .prologue
    .line 51766
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51767
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 51769
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 51613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 51613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 3

    .prologue
    .line 51640
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

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
    .line 51613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 51613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    .registers 2

    .prologue
    .line 51644
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getIdvGaiaId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 51819
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 51820
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 51821
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 51822
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 51825
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

.method public getIdvPin()Ljava/lang/String;
    .registers 4

    .prologue
    .line 51783
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 51784
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 51785
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 51786
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 51789
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

.method public getIdvRequestId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 51747
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 51748
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 51749
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 51750
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 51753
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

.method public hasIdvGaiaId()Z
    .registers 3

    .prologue
    .line 51816
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

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

.method public hasIdvPin()Z
    .registers 3

    .prologue
    .line 51780
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

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

.method public hasIdvRequestId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 51744
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

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
    .line 51700
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
    .line 51613
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 51613
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

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
    .line 51613
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51708
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 51709
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 51714
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51716
    :sswitch_d
    return-object p0

    .line 51721
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51722
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    goto :goto_0

    .line 51726
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51727
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    goto :goto_0

    .line 51731
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51732
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    goto :goto_0

    .line 51709
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 51686
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 51696
    :cond_6
    :goto_6
    return-object p0

    .line 51687
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->hasIdvRequestId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51688
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->setIdvRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    .line 51690
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->hasIdvPin()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 51691
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvPin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->setIdvPin(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    .line 51693
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->hasIdvGaiaId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51694
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->setIdvGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    goto :goto_6
.end method

.method public setIdvGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51829
    if-nez p1, :cond_8

    .line 51830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51832
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51833
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 51835
    return-object p0
.end method

.method public setIdvPin(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51793
    if-nez p1, :cond_8

    .line 51794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51796
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51797
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 51799
    return-object p0
.end method

.method public setIdvRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51757
    if-nez p1, :cond_8

    .line 51758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51760
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 51761
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 51763
    return-object p0
.end method
