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
    .line 50468
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 50592
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 50628
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 50664
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 50469
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 50470
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 1

    .prologue
    .line 50475
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 50473
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    .registers 6

    .prologue
    .line 50516
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 50517
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50518
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 50519
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 50520
    or-int/lit8 v2, v2, 0x1

    .line 50522
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->access$71202(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50523
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 50524
    or-int/lit8 v2, v2, 0x2

    .line 50526
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->access$71302(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50527
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 50528
    or-int/lit8 v2, v2, 0x4

    .line 50530
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->access$71402(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50531
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->access$71502(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;I)I

    .line 50532
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 50463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 50463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2

    .prologue
    .line 50479
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 50480
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 50481
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 50483
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50484
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 50485
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50486
    return-object p0
.end method

.method public clearIdvGaiaId()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2

    .prologue
    .line 50688
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50689
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvGaiaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 50691
    return-object p0
.end method

.method public clearIdvPin()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2

    .prologue
    .line 50652
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50653
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvPin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 50655
    return-object p0
.end method

.method public clearIdvRequestId()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2

    .prologue
    .line 50616
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50617
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 50619
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 50463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 50463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 3

    .prologue
    .line 50490
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
    .line 50463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 50463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    .registers 2

    .prologue
    .line 50494
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getIdvGaiaId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 50669
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 50670
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 50671
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 50672
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 50675
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
    .line 50633
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 50634
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 50635
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 50636
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 50639
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
    .line 50597
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 50598
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 50599
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 50600
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 50603
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
    .line 50666
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
    .line 50630
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

    .line 50594
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

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
    .line 50463
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

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
    .line 50463
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
    .line 50558
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 50559
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 50564
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50566
    :sswitch_d
    return-object p0

    .line 50571
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50572
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    goto :goto_0

    .line 50576
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50577
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    goto :goto_0

    .line 50581
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50582
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    goto :goto_0

    .line 50559
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
    .line 50536
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 50546
    :cond_6
    :goto_6
    return-object p0

    .line 50537
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->hasIdvRequestId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 50538
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->setIdvRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    .line 50540
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->hasIdvPin()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 50541
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvPin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->setIdvPin(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    .line 50543
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->hasIdvGaiaId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50544
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->setIdvGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    goto :goto_6
.end method

.method public setIdvGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50679
    if-nez p1, :cond_8

    .line 50680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50682
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50683
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvGaiaId_:Ljava/lang/Object;

    .line 50685
    return-object p0
.end method

.method public setIdvPin(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50643
    if-nez p1, :cond_8

    .line 50644
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50646
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50647
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvPin_:Ljava/lang/Object;

    .line 50649
    return-object p0
.end method

.method public setIdvRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50607
    if-nez p1, :cond_8

    .line 50608
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50610
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->bitField0_:I

    .line 50611
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->idvRequestId_:Ljava/lang/Object;

    .line 50613
    return-object p0
.end method
