.class public final Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiForwardingPhoneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;",
        "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhoneOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private domesticCallsInterceptionEnabled_:Z

.field private enabledByDefault_:Z

.field private id_:I

.field private internationalCallsInterceptionEnabled_:Z

.field private isVerified_:Z

.field private name_:Ljava/lang/Object;

.field private numberFormatted_:Ljava/lang/Object;

.field private number_:Ljava/lang/Object;

.field private policy_:I

.field private smsEnabled_:Z

.field private type_:I

.field private voicemailDiversionSetupEnabled_:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 9433
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9627
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    .line 9680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    .line 9754
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    .line 9828
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->smsEnabled_:Z

    .line 9912
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->voicemailDiversionSetupEnabled_:Z

    .line 9933
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->domesticCallsInterceptionEnabled_:Z

    .line 9954
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->internationalCallsInterceptionEnabled_:Z

    .line 9434
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->maybeForceBuilderInitialization()V

    .line 9435
    return-void
.end method

.method static synthetic access$10300()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 1

    .prologue
    .line 9428
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 1

    .prologue
    .line 9440
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9438
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 3

    .prologue
    .line 9481
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    .line 9482
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9483
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9485
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9428
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 6

    .prologue
    .line 9489
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 9490
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9491
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9492
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 9493
    or-int/lit8 v2, v2, 0x1

    .line 9495
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$10502(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9496
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 9497
    or-int/lit8 v2, v2, 0x2

    .line 9499
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->number_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$10602(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9500
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 9501
    or-int/lit8 v2, v2, 0x4

    .line 9503
    :cond_28
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->type_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->type_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$10702(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;I)I

    .line 9504
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 9505
    or-int/lit8 v2, v2, 0x8

    .line 9507
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->numberFormatted_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$10802(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9508
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 9509
    or-int/lit8 v2, v2, 0x10

    .line 9511
    :cond_42
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->id_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->id_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$10902(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;I)I

    .line 9512
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 9513
    or-int/lit8 v2, v2, 0x20

    .line 9515
    :cond_4f
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->smsEnabled_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->smsEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$11002(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z

    .line 9516
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 9517
    or-int/lit8 v2, v2, 0x40

    .line 9519
    :cond_5c
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->isVerified_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->isVerified_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$11102(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z

    .line 9520
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 9521
    or-int/lit16 v2, v2, 0x80

    .line 9523
    :cond_69
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->policy_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->policy_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$11202(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;I)I

    .line 9524
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 9525
    or-int/lit16 v2, v2, 0x100

    .line 9527
    :cond_76
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->enabledByDefault_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->enabledByDefault_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$11302(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z

    .line 9528
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 9529
    or-int/lit16 v2, v2, 0x200

    .line 9531
    :cond_83
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->voicemailDiversionSetupEnabled_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->voicemailDiversionSetupEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$11402(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z

    .line 9532
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 9533
    or-int/lit16 v2, v2, 0x400

    .line 9535
    :cond_90
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->domesticCallsInterceptionEnabled_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->domesticCallsInterceptionEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$11502(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z

    .line 9536
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_9d

    .line 9537
    or-int/lit16 v2, v2, 0x800

    .line 9539
    :cond_9d
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->internationalCallsInterceptionEnabled_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->internationalCallsInterceptionEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$11602(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z

    .line 9540
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$11702(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;I)I

    .line 9541
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9428
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9444
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    .line 9446
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    .line 9448
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9449
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->type_:I

    .line 9450
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    .line 9452
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9453
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->id_:I

    .line 9454
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9455
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->smsEnabled_:Z

    .line 9456
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9457
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->isVerified_:Z

    .line 9458
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9459
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->policy_:I

    .line 9460
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9461
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->enabledByDefault_:Z

    .line 9462
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9463
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->voicemailDiversionSetupEnabled_:Z

    .line 9464
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9465
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->domesticCallsInterceptionEnabled_:Z

    .line 9466
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9467
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->internationalCallsInterceptionEnabled_:Z

    .line 9468
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9469
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9428
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9428
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDomesticCallsInterceptionEnabled()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9947
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->domesticCallsInterceptionEnabled_:Z

    .line 9950
    return-object p0
.end method

.method public clearEnabledByDefault()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9905
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->enabledByDefault_:Z

    .line 9908
    return-object p0
.end method

.method public clearId()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9821
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9822
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->id_:I

    .line 9824
    return-object p0
.end method

.method public clearInternationalCallsInterceptionEnabled()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9968
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->internationalCallsInterceptionEnabled_:Z

    .line 9971
    return-object p0
.end method

.method public clearIsVerified()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9863
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->isVerified_:Z

    .line 9866
    return-object p0
.end method

.method public clearName()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9663
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9664
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    .line 9666
    return-object p0
.end method

.method public clearNumber()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9716
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9717
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    .line 9719
    return-object p0
.end method

.method public clearNumberFormatted()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9790
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9791
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getNumberFormatted()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    .line 9793
    return-object p0
.end method

.method public clearPolicy()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9884
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9885
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->policy_:I

    .line 9887
    return-object p0
.end method

.method public clearSmsEnabled()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9842
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->smsEnabled_:Z

    .line 9845
    return-object p0
.end method

.method public clearType()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9747
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9748
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->type_:I

    .line 9750
    return-object p0
.end method

.method public clearVoicemailDiversionSetupEnabled()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9926
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->voicemailDiversionSetupEnabled_:Z

    .line 9929
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3

    .prologue
    .line 9473
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9428
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9428
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9428
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

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
    .line 9428
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 2

    .prologue
    .line 9477
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9428
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9428
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    return-object v0
.end method

.method public getDomesticCallsInterceptionEnabled()Z
    .registers 2

    .prologue
    .line 9938
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->domesticCallsInterceptionEnabled_:Z

    return v0
.end method

.method public getEnabledByDefault()Z
    .registers 2

    .prologue
    .line 9896
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->enabledByDefault_:Z

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 9812
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->id_:I

    return v0
.end method

.method public getInternationalCallsInterceptionEnabled()Z
    .registers 2

    .prologue
    .line 9959
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->internationalCallsInterceptionEnabled_:Z

    return v0
.end method

.method public getIsVerified()Z
    .registers 2

    .prologue
    .line 9854
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->isVerified_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9632
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    .line 9633
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9634
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9635
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    .line 9638
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9643
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    .line 9644
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9645
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9647
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    .line 9650
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

.method public getNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9685
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    .line 9686
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9687
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9688
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    .line 9691
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

.method public getNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9696
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    .line 9697
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9698
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9700
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    .line 9703
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

.method public getNumberFormatted()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9759
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    .line 9760
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9761
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9762
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    .line 9765
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

.method public getNumberFormattedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9770
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    .line 9771
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9772
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9774
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    .line 9777
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

.method public getPolicy()I
    .registers 2

    .prologue
    .line 9875
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->policy_:I

    return v0
.end method

.method public getSmsEnabled()Z
    .registers 2

    .prologue
    .line 9833
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->smsEnabled_:Z

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 9738
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->type_:I

    return v0
.end method

.method public getVoicemailDiversionSetupEnabled()Z
    .registers 2

    .prologue
    .line 9917
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->voicemailDiversionSetupEnabled_:Z

    return v0
.end method

.method public hasDomesticCallsInterceptionEnabled()Z
    .registers 3

    .prologue
    .line 9935
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEnabledByDefault()Z
    .registers 3

    .prologue
    .line 9893
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 9809
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

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

.method public hasInternationalCallsInterceptionEnabled()Z
    .registers 3

    .prologue
    .line 9956
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasIsVerified()Z
    .registers 3

    .prologue
    .line 9851
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9629
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNumber()Z
    .registers 3

    .prologue
    .line 9682
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

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

.method public hasNumberFormatted()Z
    .registers 3

    .prologue
    .line 9756
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

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

.method public hasPolicy()Z
    .registers 3

    .prologue
    .line 9872
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

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

.method public hasSmsEnabled()Z
    .registers 3

    .prologue
    .line 9830
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 9735
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

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

.method public hasVoicemailDiversionSetupEnabled()Z
    .registers 3

    .prologue
    .line 9914
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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

    .line 9592
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->hasName()Z

    move-result v1

    if-nez v1, :cond_8

    .line 9604
    :cond_7
    :goto_7
    return v0

    .line 9596
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9600
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->hasType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9604
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 9545
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9588
    :cond_6
    :goto_6
    return-object p0

    .line 9546
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasName()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 9547
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9548
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$10500(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    .line 9551
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 9552
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9553
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->number_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$10600(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    .line 9556
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasType()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 9557
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setType(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 9559
    :cond_38
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasNumberFormatted()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 9560
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9561
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->numberFormatted_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->access$10800(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    .line 9564
    :cond_4a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasId()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 9565
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setId(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 9567
    :cond_57
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasSmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 9568
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getSmsEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setSmsEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 9570
    :cond_64
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasIsVerified()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 9571
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getIsVerified()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setIsVerified(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 9573
    :cond_71
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasPolicy()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 9574
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getPolicy()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setPolicy(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 9576
    :cond_7e
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasEnabledByDefault()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 9577
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getEnabledByDefault()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setEnabledByDefault(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 9579
    :cond_8b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasVoicemailDiversionSetupEnabled()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 9580
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getVoicemailDiversionSetupEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setVoicemailDiversionSetupEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 9582
    :cond_98
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasDomesticCallsInterceptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 9583
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getDomesticCallsInterceptionEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setDomesticCallsInterceptionEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 9585
    :cond_a5
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasInternationalCallsInterceptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9586
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getInternationalCallsInterceptionEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setInternationalCallsInterceptionEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9611
    const/4 v2, 0x0

    .line 9613
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 9618
    if-eqz v2, :cond_10

    .line 9619
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 9622
    :cond_10
    return-object p0

    .line 9614
    :catch_11
    move-exception v1

    .line 9615
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-object v2, v0

    .line 9616
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 9618
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 9619
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

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
    .line 9428
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 9428
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

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
    .line 9428
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDomesticCallsInterceptionEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9941
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9942
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->domesticCallsInterceptionEnabled_:Z

    .line 9944
    return-object p0
.end method

.method public setEnabledByDefault(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9899
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9900
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->enabledByDefault_:Z

    .line 9902
    return-object p0
.end method

.method public setId(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9815
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9816
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->id_:I

    .line 9818
    return-object p0
.end method

.method public setInternationalCallsInterceptionEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9962
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9963
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->internationalCallsInterceptionEnabled_:Z

    .line 9965
    return-object p0
.end method

.method public setIsVerified(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9857
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9858
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->isVerified_:Z

    .line 9860
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9654
    if-nez p1, :cond_8

    .line 9655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9657
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9658
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    .line 9660
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9670
    if-nez p1, :cond_8

    .line 9671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9673
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9674
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->name_:Ljava/lang/Object;

    .line 9676
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9707
    if-nez p1, :cond_8

    .line 9708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9710
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9711
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    .line 9713
    return-object p0
.end method

.method public setNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9723
    if-nez p1, :cond_8

    .line 9724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9726
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9727
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->number_:Ljava/lang/Object;

    .line 9729
    return-object p0
.end method

.method public setNumberFormatted(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9781
    if-nez p1, :cond_8

    .line 9782
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9784
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9785
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    .line 9787
    return-object p0
.end method

.method public setNumberFormattedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9797
    if-nez p1, :cond_8

    .line 9798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9800
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9801
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->numberFormatted_:Ljava/lang/Object;

    .line 9803
    return-object p0
.end method

.method public setPolicy(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9878
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9879
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->policy_:I

    .line 9881
    return-object p0
.end method

.method public setSmsEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9836
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9837
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->smsEnabled_:Z

    .line 9839
    return-object p0
.end method

.method public setType(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9741
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9742
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->type_:I

    .line 9744
    return-object p0
.end method

.method public setVoicemailDiversionSetupEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9920
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->bitField0_:I

    .line 9921
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->voicemailDiversionSetupEnabled_:Z

    .line 9923
    return-object p0
.end method
