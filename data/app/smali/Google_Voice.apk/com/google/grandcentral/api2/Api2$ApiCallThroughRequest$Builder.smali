.class public final Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private createPhonebookIfNotExist_:Z

.field private devicePhoneNumber_:Ljava/lang/Object;

.field private geoLocationHint_:Ljava/lang/Object;

.field private outgoingNumber_:Ljava/lang/Object;

.field private providerHint_:Ljava/lang/Object;

.field private subscriberDid_:Ljava/lang/Object;

.field private useShadowNumber_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24958
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 25118
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 25171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 25224
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 25298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    .line 25351
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    .line 25404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    .line 24959
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->maybeForceBuilderInitialization()V

    .line 24960
    return-void
.end method

.method static synthetic access$29400()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 1

    .prologue
    .line 24953
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 1

    .prologue
    .line 24965
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24963
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 3

    .prologue
    .line 24998
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    .line 24999
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25000
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25002
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24953
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 6

    .prologue
    .line 25006
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 25007
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25008
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 25009
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 25010
    or-int/lit8 v2, v2, 0x1

    .line 25012
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$29602(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25013
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 25014
    or-int/lit8 v2, v2, 0x2

    .line 25016
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->outgoingNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$29702(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25017
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 25018
    or-int/lit8 v2, v2, 0x4

    .line 25020
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->subscriberDid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$29802(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25021
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 25022
    or-int/lit8 v2, v2, 0x8

    .line 25024
    :cond_35
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->createPhonebookIfNotExist_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->createPhonebookIfNotExist_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$29902(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Z)Z

    .line 25025
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 25026
    or-int/lit8 v2, v2, 0x10

    .line 25028
    :cond_42
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->providerHint_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$30002(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25029
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 25030
    or-int/lit8 v2, v2, 0x20

    .line 25032
    :cond_4f
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->geoLocationHint_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$30102(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25033
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 25034
    or-int/lit8 v2, v2, 0x40

    .line 25036
    :cond_5c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->devicePhoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$30202(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25037
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 25038
    or-int/lit16 v2, v2, 0x80

    .line 25040
    :cond_69
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->useShadowNumber_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->useShadowNumber_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$30302(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Z)Z

    .line 25041
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$30402(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;I)I

    .line 25042
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24953
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24969
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24971
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 24972
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 24973
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 24974
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 24975
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 24976
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->createPhonebookIfNotExist_:Z

    .line 24977
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 24978
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    .line 24979
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 24980
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    .line 24981
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 24982
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    .line 24983
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 24984
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->useShadowNumber_:Z

    .line 24985
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 24986
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24953
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24953
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2

    .prologue
    .line 25154
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25155
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 25157
    return-object p0
.end method

.method public clearCreatePhonebookIfNotExist()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2

    .prologue
    .line 25291
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->createPhonebookIfNotExist_:Z

    .line 25294
    return-object p0
.end method

.method public clearDevicePhoneNumber()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2

    .prologue
    .line 25440
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25441
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDevicePhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    .line 25443
    return-object p0
.end method

.method public clearGeoLocationHint()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2

    .prologue
    .line 25387
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25388
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getGeoLocationHint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    .line 25390
    return-object p0
.end method

.method public clearOutgoingNumber()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2

    .prologue
    .line 25207
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25208
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getOutgoingNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 25210
    return-object p0
.end method

.method public clearProviderHint()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2

    .prologue
    .line 25334
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25335
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getProviderHint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    .line 25337
    return-object p0
.end method

.method public clearSubscriberDid()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2

    .prologue
    .line 25260
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25261
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getSubscriberDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 25263
    return-object p0
.end method

.method public clearUseShadowNumber()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2

    .prologue
    .line 25471
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->useShadowNumber_:Z

    .line 25474
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3

    .prologue
    .line 24990
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24953
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24953
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24953
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

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
    .line 24953
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25123
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 25124
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25125
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25126
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 25129
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
    .line 25134
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 25135
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25136
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25138
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 25141
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

.method public getCreatePhonebookIfNotExist()Z
    .registers 2

    .prologue
    .line 25282
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->createPhonebookIfNotExist_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 2

    .prologue
    .line 24994
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 24953
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24953
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25409
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    .line 25410
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25411
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25412
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    .line 25415
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

.method public getDevicePhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25420
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    .line 25421
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25422
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25424
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    .line 25427
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

.method public getGeoLocationHint()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25356
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    .line 25357
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25358
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25359
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    .line 25362
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

.method public getGeoLocationHintBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25367
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    .line 25368
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25369
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25371
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    .line 25374
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

.method public getOutgoingNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25176
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 25177
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25178
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25179
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 25182
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

.method public getOutgoingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25187
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 25188
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25189
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25191
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 25194
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

.method public getProviderHint()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25303
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    .line 25304
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25305
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25306
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    .line 25309
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

.method public getProviderHintBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25314
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    .line 25315
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25316
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25318
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    .line 25321
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

.method public getSubscriberDid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25229
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 25230
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25231
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25232
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 25235
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

.method public getSubscriberDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25240
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 25241
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25242
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25244
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 25247
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

.method public getUseShadowNumber()Z
    .registers 2

    .prologue
    .line 25462
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->useShadowNumber_:Z

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 25120
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCreatePhonebookIfNotExist()Z
    .registers 3

    .prologue
    .line 25279
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDevicePhoneNumber()Z
    .registers 3

    .prologue
    .line 25406
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasGeoLocationHint()Z
    .registers 3

    .prologue
    .line 25353
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOutgoingNumber()Z
    .registers 3

    .prologue
    .line 25173
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

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

.method public hasProviderHint()Z
    .registers 3

    .prologue
    .line 25300
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSubscriberDid()Z
    .registers 3

    .prologue
    .line 25226
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

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

.method public hasUseShadowNumber()Z
    .registers 3

    .prologue
    .line 25459
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 25087
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 25095
    :cond_7
    :goto_7
    return v0

    .line 25091
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->hasOutgoingNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25095
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 25046
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 25083
    :cond_6
    :goto_6
    return-object p0

    .line 25047
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 25048
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25049
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$29600(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 25052
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->hasOutgoingNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 25053
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25054
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->outgoingNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$29700(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 25057
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->hasSubscriberDid()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 25058
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25059
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->subscriberDid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$29800(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 25062
    :cond_3d
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->hasCreatePhonebookIfNotExist()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 25063
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getCreatePhonebookIfNotExist()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->setCreatePhonebookIfNotExist(Z)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    .line 25065
    :cond_4a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->hasProviderHint()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 25066
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25067
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->providerHint_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$30000(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    .line 25070
    :cond_5c
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->hasGeoLocationHint()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 25071
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25072
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->geoLocationHint_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$30100(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    .line 25075
    :cond_6e
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->hasDevicePhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 25076
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25077
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->devicePhoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->access$30200(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    .line 25080
    :cond_80
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->hasUseShadowNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25081
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getUseShadowNumber()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->setUseShadowNumber(Z)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25102
    const/4 v2, 0x0

    .line 25104
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 25109
    if-eqz v2, :cond_10

    .line 25110
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    .line 25113
    :cond_10
    return-object p0

    .line 25105
    :catch_11
    move-exception v1

    .line 25106
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-object v2, v0

    .line 25107
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 25109
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 25110
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

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
    .line 24953
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24953
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

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
    .line 24953
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25145
    if-nez p1, :cond_8

    .line 25146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25148
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25149
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 25151
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25161
    if-nez p1, :cond_8

    .line 25162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25164
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25165
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 25167
    return-object p0
.end method

.method public setCreatePhonebookIfNotExist(Z)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25285
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25286
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->createPhonebookIfNotExist_:Z

    .line 25288
    return-object p0
.end method

.method public setDevicePhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25431
    if-nez p1, :cond_8

    .line 25432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25434
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25435
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    .line 25437
    return-object p0
.end method

.method public setDevicePhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25447
    if-nez p1, :cond_8

    .line 25448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25450
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25451
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->devicePhoneNumber_:Ljava/lang/Object;

    .line 25453
    return-object p0
.end method

.method public setGeoLocationHint(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25378
    if-nez p1, :cond_8

    .line 25379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25381
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25382
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    .line 25384
    return-object p0
.end method

.method public setGeoLocationHintBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25394
    if-nez p1, :cond_8

    .line 25395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25397
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25398
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->geoLocationHint_:Ljava/lang/Object;

    .line 25400
    return-object p0
.end method

.method public setOutgoingNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25198
    if-nez p1, :cond_8

    .line 25199
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25201
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25202
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 25204
    return-object p0
.end method

.method public setOutgoingNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25214
    if-nez p1, :cond_8

    .line 25215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25217
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25218
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 25220
    return-object p0
.end method

.method public setProviderHint(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25325
    if-nez p1, :cond_8

    .line 25326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25328
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25329
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    .line 25331
    return-object p0
.end method

.method public setProviderHintBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25341
    if-nez p1, :cond_8

    .line 25342
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25344
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25345
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->providerHint_:Ljava/lang/Object;

    .line 25347
    return-object p0
.end method

.method public setSubscriberDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25251
    if-nez p1, :cond_8

    .line 25252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25254
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25255
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 25257
    return-object p0
.end method

.method public setSubscriberDidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25267
    if-nez p1, :cond_8

    .line 25268
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25270
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25271
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 25273
    return-object p0
.end method

.method public setUseShadowNumber(Z)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25465
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->bitField0_:I

    .line 25466
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->useShadowNumber_:Z

    .line 25468
    return-object p0
.end method
