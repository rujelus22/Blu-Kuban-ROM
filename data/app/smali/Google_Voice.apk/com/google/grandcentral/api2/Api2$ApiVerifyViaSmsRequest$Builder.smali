.class public final Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

.field private proposedNumber_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27395
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27500
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 27553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    .line 27606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    .line 27396
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 27397
    return-void
.end method

.method static synthetic access$32700()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 1

    .prologue
    .line 27390
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 1

    .prologue
    .line 27402
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27400
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 3

    .prologue
    .line 27425
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    .line 27426
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 27427
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 27429
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 6

    .prologue
    .line 27433
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 27434
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27435
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 27436
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 27437
    or-int/lit8 v2, v2, 0x1

    .line 27439
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->access$32902(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27440
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 27441
    or-int/lit8 v2, v2, 0x2

    .line 27443
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->proposedNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->access$33002(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27444
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 27445
    or-int/lit8 v2, v2, 0x4

    .line 27447
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->country_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->access$33102(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27448
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->access$33202(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;I)I

    .line 27449
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 27406
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27407
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 27408
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27409
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    .line 27410
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    .line 27412
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27413
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 27536
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27537
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 27539
    return-object p0
.end method

.method public clearCountry()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 27642
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27643
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    .line 27645
    return-object p0
.end method

.method public clearProposedNumber()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 27589
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27590
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getProposedNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    .line 27592
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 3

    .prologue
    .line 27417
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

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
    .line 27390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27505
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 27506
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 27507
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27508
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 27511
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
    .line 27516
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 27517
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27518
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27520
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 27523
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

.method public getCountry()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27611
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    .line 27612
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 27613
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27614
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    .line 27617
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

.method public getCountryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27622
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    .line 27623
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27624
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27626
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    .line 27629
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 2

    .prologue
    .line 27421
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getProposedNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27558
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    .line 27559
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 27560
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27561
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    .line 27564
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

.method public getProposedNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27569
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    .line 27570
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27571
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27573
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    .line 27576
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

    .line 27502
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCountry()Z
    .registers 3

    .prologue
    .line 27608
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

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

.method public hasProposedNumber()Z
    .registers 3

    .prologue
    .line 27555
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

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
    .line 27473
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 27475
    const/4 v0, 0x0

    .line 27477
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 27453
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 27469
    :cond_6
    :goto_6
    return-object p0

    .line 27454
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 27455
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27456
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->access$32900(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 27459
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->hasProposedNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 27460
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27461
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->proposedNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->access$33000(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    .line 27464
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27465
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27466
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->country_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->access$33100(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27484
    const/4 v2, 0x0

    .line 27486
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 27491
    if-eqz v2, :cond_10

    .line 27492
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    .line 27495
    :cond_10
    return-object p0

    .line 27487
    :catch_11
    move-exception v1

    .line 27488
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-object v2, v0

    .line 27489
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 27491
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 27492
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

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
    .line 27390
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27390
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

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
    .line 27390
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27527
    if-nez p1, :cond_8

    .line 27528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27530
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27531
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 27533
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27543
    if-nez p1, :cond_8

    .line 27544
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27546
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27547
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 27549
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27633
    if-nez p1, :cond_8

    .line 27634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27636
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27637
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    .line 27639
    return-object p0
.end method

.method public setCountryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27649
    if-nez p1, :cond_8

    .line 27650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27652
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27653
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->country_:Ljava/lang/Object;

    .line 27655
    return-object p0
.end method

.method public setProposedNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27580
    if-nez p1, :cond_8

    .line 27581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27583
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27584
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    .line 27586
    return-object p0
.end method

.method public setProposedNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27596
    if-nez p1, :cond_8

    .line 27597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27599
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->bitField0_:I

    .line 27600
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->proposedNumber_:Ljava/lang/Object;

    .line 27602
    return-object p0
.end method
