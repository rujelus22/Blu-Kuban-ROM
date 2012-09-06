.class public final Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private clientPhoneNumber_:Ljava/lang/Object;

.field private integratedPrimaryDid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41910
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 42015
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 42068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    .line 42121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 41911
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 41912
    return-void
.end method

.method static synthetic access$50700()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 1

    .prologue
    .line 41905
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 1

    .prologue
    .line 41917
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 41915
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 3

    .prologue
    .line 41940
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    .line 41941
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 41942
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 41944
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41905
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 6

    .prologue
    .line 41948
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 41949
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 41950
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 41951
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 41952
    or-int/lit8 v2, v2, 0x1

    .line 41954
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->access$50902(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41955
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 41956
    or-int/lit8 v2, v2, 0x2

    .line 41958
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientPhoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->access$51002(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41959
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 41960
    or-int/lit8 v2, v2, 0x4

    .line 41962
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->integratedPrimaryDid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->access$51102(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41963
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->access$51202(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;I)I

    .line 41964
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41905
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 2

    .prologue
    .line 41921
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41922
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 41923
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 41924
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    .line 41925
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 41926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 41927
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 41928
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41905
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41905
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 2

    .prologue
    .line 42051
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 42052
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 42054
    return-object p0
.end method

.method public clearClientPhoneNumber()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 2

    .prologue
    .line 42104
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 42105
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getClientPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    .line 42107
    return-object p0
.end method

.method public clearIntegratedPrimaryDid()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 2

    .prologue
    .line 42157
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 42158
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getIntegratedPrimaryDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 42160
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 3

    .prologue
    .line 41932
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 41905
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41905
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41905
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

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
    .line 41905
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42020
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 42021
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42022
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42023
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 42026
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
    .line 42031
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 42032
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42033
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42035
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 42038
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

.method public getClientPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42073
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    .line 42074
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42075
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42076
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    .line 42079
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

.method public getClientPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42084
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    .line 42085
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42086
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42088
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    .line 42091
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 2

    .prologue
    .line 41936
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 41905
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41905
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getIntegratedPrimaryDid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42126
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 42127
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42128
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42129
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 42132
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

.method public getIntegratedPrimaryDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42137
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 42138
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42139
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42141
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 42144
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

    .line 42017
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasClientPhoneNumber()Z
    .registers 3

    .prologue
    .line 42070
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

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

.method public hasIntegratedPrimaryDid()Z
    .registers 3

    .prologue
    .line 42123
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 41988
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 41990
    const/4 v0, 0x0

    .line 41992
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 41968
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 41984
    :cond_6
    :goto_6
    return-object p0

    .line 41969
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 41970
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 41971
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->access$50900(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 41974
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->hasClientPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 41975
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 41976
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientPhoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->access$51000(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    .line 41979
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->hasIntegratedPrimaryDid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41980
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 41981
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->integratedPrimaryDid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->access$51100(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41999
    const/4 v2, 0x0

    .line 42001
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 42006
    if-eqz v2, :cond_10

    .line 42007
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    .line 42010
    :cond_10
    return-object p0

    .line 42002
    :catch_11
    move-exception v1

    .line 42003
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-object v2, v0

    .line 42004
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 42006
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 42007
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

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
    .line 41905
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41905
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

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
    .line 41905
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42042
    if-nez p1, :cond_8

    .line 42043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42045
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 42046
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 42048
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42058
    if-nez p1, :cond_8

    .line 42059
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42061
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 42062
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 42064
    return-object p0
.end method

.method public setClientPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42095
    if-nez p1, :cond_8

    .line 42096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42098
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 42099
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    .line 42101
    return-object p0
.end method

.method public setClientPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42111
    if-nez p1, :cond_8

    .line 42112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42114
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 42115
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->clientPhoneNumber_:Ljava/lang/Object;

    .line 42117
    return-object p0
.end method

.method public setIntegratedPrimaryDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42148
    if-nez p1, :cond_8

    .line 42149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42151
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 42152
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 42154
    return-object p0
.end method

.method public setIntegratedPrimaryDidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42164
    if-nez p1, :cond_8

    .line 42165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42167
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->bitField0_:I

    .line 42168
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 42170
    return-object p0
.end method
