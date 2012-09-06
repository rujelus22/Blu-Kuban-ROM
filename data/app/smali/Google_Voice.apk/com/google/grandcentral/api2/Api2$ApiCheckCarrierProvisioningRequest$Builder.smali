.class public final Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40567
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40661
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 40714
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 40568
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->maybeForceBuilderInitialization()V

    .line 40569
    return-void
.end method

.method static synthetic access$48900()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 1

    .prologue
    .line 40562
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 1

    .prologue
    .line 40574
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40572
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 3

    .prologue
    .line 40595
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v0

    .line 40596
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40597
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40599
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 6

    .prologue
    .line 40603
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 40604
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40605
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40606
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 40607
    or-int/lit8 v2, v2, 0x1

    .line 40609
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->access$49102(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40610
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 40611
    or-int/lit8 v2, v2, 0x2

    .line 40613
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->access$49202(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40614
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->access$49302(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;I)I

    .line 40615
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 2

    .prologue
    .line 40578
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40579
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 40580
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40581
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 40582
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40583
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 2

    .prologue
    .line 40697
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40698
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 40700
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 2

    .prologue
    .line 40750
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40751
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 40753
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 3

    .prologue
    .line 40587
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

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
    .line 40562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40666
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 40667
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 40668
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40669
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 40672
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

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40677
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 40678
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40679
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40681
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 40684
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 2

    .prologue
    .line 40591
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40719
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 40720
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 40721
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40722
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 40725
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

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40730
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 40731
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40732
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40734
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 40737
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

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40663
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 40716
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 40634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 40636
    const/4 v0, 0x0

    .line 40638
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 40619
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40630
    :cond_6
    :goto_6
    return-object p0

    .line 40620
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 40621
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40622
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->access$49100(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 40625
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40626
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40627
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->access$49200(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40645
    const/4 v2, 0x0

    .line 40647
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 40652
    if-eqz v2, :cond_10

    .line 40653
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    .line 40656
    :cond_10
    return-object p0

    .line 40648
    :catch_11
    move-exception v1

    .line 40649
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-object v2, v0

    .line 40650
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 40652
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 40653
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

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
    .line 40562
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 40562
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

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
    .line 40562
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40688
    if-nez p1, :cond_8

    .line 40689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40691
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40692
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 40694
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40704
    if-nez p1, :cond_8

    .line 40705
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40707
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40708
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 40710
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40741
    if-nez p1, :cond_8

    .line 40742
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40744
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40745
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 40747
    return-object p0
.end method

.method public setPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40757
    if-nez p1, :cond_8

    .line 40758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40760
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->bitField0_:I

    .line 40761
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 40763
    return-object p0
.end method
