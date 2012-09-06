.class public final Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Version.java"

# interfaces
.implements Lcom/google/wireless/webapps/Version$ClientVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Version$ClientVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/webapps/Version$ClientVersion;",
        "Lcom/google/wireless/webapps/Version$ClientVersion$Builder;",
        ">;",
        "Lcom/google/wireless/webapps/Version$ClientVersionOrBuilder;"
    }
.end annotation


# instance fields
.field private app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

.field private bitField0_:I

.field private buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

.field private dataVersion_:I

.field private deviceHardware_:Ljava/lang/Object;

.field private deviceOs_:Ljava/lang/Object;

.field private platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 664
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->GOOGLE_PLUS:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    .line 688
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->DEVELOPER:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    .line 712
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->WEB:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    .line 778
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->deviceOs_:Ljava/lang/Object;

    .line 814
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 473
    invoke-direct {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->maybeForceBuilderInitialization()V

    .line 474
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 1

    .prologue
    .line 467
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->create()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 1

    .prologue
    .line 479
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 477
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->build()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 3

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    .line 511
    .local v0, result:Lcom/google/wireless/webapps/Version$ClientVersion;
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Version$ClientVersion;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 512
    invoke-static {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 514
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 6

    .prologue
    .line 528
    new-instance v1, Lcom/google/wireless/webapps/Version$ClientVersion;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/webapps/Version$ClientVersion;-><init>(Lcom/google/wireless/webapps/Version$ClientVersion$Builder;Lcom/google/wireless/webapps/Version$1;)V

    .line 529
    .local v1, result:Lcom/google/wireless/webapps/Version$ClientVersion;
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 530
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 531
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 532
    or-int/lit8 v2, v2, 0x1

    .line 534
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    #setter for: Lcom/google/wireless/webapps/Version$ClientVersion;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Version$ClientVersion;->access$302(Lcom/google/wireless/webapps/Version$ClientVersion;Lcom/google/wireless/webapps/Version$ClientVersion$App;)Lcom/google/wireless/webapps/Version$ClientVersion$App;

    .line 535
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 536
    or-int/lit8 v2, v2, 0x2

    .line 538
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    #setter for: Lcom/google/wireless/webapps/Version$ClientVersion;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Version$ClientVersion;->access$402(Lcom/google/wireless/webapps/Version$ClientVersion;Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;)Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    .line 539
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 540
    or-int/lit8 v2, v2, 0x4

    .line 542
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    #setter for: Lcom/google/wireless/webapps/Version$ClientVersion;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Version$ClientVersion;->access$502(Lcom/google/wireless/webapps/Version$ClientVersion;Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;)Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    .line 543
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 544
    or-int/lit8 v2, v2, 0x8

    .line 546
    :cond_35
    iget v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->version_:I

    #setter for: Lcom/google/wireless/webapps/Version$ClientVersion;->version_:I
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Version$ClientVersion;->access$602(Lcom/google/wireless/webapps/Version$ClientVersion;I)I

    .line 547
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 548
    or-int/lit8 v2, v2, 0x10

    .line 550
    :cond_42
    iget v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->dataVersion_:I

    #setter for: Lcom/google/wireless/webapps/Version$ClientVersion;->dataVersion_:I
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Version$ClientVersion;->access$702(Lcom/google/wireless/webapps/Version$ClientVersion;I)I

    .line 551
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 552
    or-int/lit8 v2, v2, 0x20

    .line 554
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->deviceOs_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Version$ClientVersion;->deviceOs_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Version$ClientVersion;->access$802(Lcom/google/wireless/webapps/Version$ClientVersion;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 556
    or-int/lit8 v2, v2, 0x40

    .line 558
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->deviceHardware_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Version$ClientVersion;->deviceHardware_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Version$ClientVersion;->access$902(Lcom/google/wireless/webapps/Version$ClientVersion;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    #setter for: Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/webapps/Version$ClientVersion;->access$1002(Lcom/google/wireless/webapps/Version$ClientVersion;I)I

    .line 560
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->clear()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->clear()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 484
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->GOOGLE_PLUS:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    .line 485
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 486
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->DEVELOPER:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    .line 487
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 488
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->WEB:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    .line 489
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 490
    iput v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->version_:I

    .line 491
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 492
    iput v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->dataVersion_:I

    .line 493
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 494
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->deviceOs_:Ljava/lang/Object;

    .line 495
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 497
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 498
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->clone()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->clone()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 3

    .prologue
    .line 502
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->create()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

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
    .line 467
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->clone()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 2

    .prologue
    .line 506
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 590
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
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 467
    check-cast p1, Lcom/google/wireless/webapps/Version$ClientVersion;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

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
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 599
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_7c

    .line 604
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 606
    :sswitch_d
    return-object p0

    .line 611
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 612
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$App;->valueOf(I)Lcom/google/wireless/webapps/Version$ClientVersion$App;

    move-result-object v2

    .line 613
    .local v2, value:Lcom/google/wireless/webapps/Version$ClientVersion$App;
    if-eqz v2, :cond_0

    .line 614
    iget v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 615
    iput-object v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    goto :goto_0

    .line 620
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/webapps/Version$ClientVersion$App;
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 621
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->valueOf(I)Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    move-result-object v2

    .line 622
    .local v2, value:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;
    if-eqz v2, :cond_0

    .line 623
    iget v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 624
    iput-object v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    goto :goto_0

    .line 629
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;
    :sswitch_34
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 630
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->valueOf(I)Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    move-result-object v2

    .line 631
    .local v2, value:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;
    if-eqz v2, :cond_0

    .line 632
    iget v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 633
    iput-object v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    goto :goto_0

    .line 638
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;
    :sswitch_47
    iget v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 639
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->version_:I

    goto :goto_0

    .line 643
    :sswitch_54
    iget v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 644
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->dataVersion_:I

    goto :goto_0

    .line 648
    :sswitch_61
    iget v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 649
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->deviceOs_:Ljava/lang/Object;

    goto :goto_0

    .line 653
    :sswitch_6e
    iget v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 654
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->deviceHardware_:Ljava/lang/Object;

    goto :goto_0

    .line 599
    nop

    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x18 -> :sswitch_34
        0x20 -> :sswitch_47
        0x28 -> :sswitch_54
        0x32 -> :sswitch_61
        0x3a -> :sswitch_6e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 564
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 586
    :cond_6
    :goto_6
    return-object p0

    .line 565
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->hasApp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 566
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->getApp()Lcom/google/wireless/webapps/Version$ClientVersion$App;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setApp(Lcom/google/wireless/webapps/Version$ClientVersion$App;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    .line 568
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->hasBuildType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 569
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->getBuildType()Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setBuildType(Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    .line 571
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->hasPlatformType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 572
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->getPlatformType()Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setPlatformType(Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    .line 574
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 575
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setVersion(I)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    .line 577
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->hasDataVersion()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 578
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDataVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setDataVersion(I)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    .line 580
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->hasDeviceOs()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 581
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDeviceOs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setDeviceOs(Ljava/lang/String;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    .line 583
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->hasDeviceHardware()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 584
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDeviceHardware()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setDeviceHardware(Ljava/lang/String;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    goto :goto_6
.end method

.method public setApp(Lcom/google/wireless/webapps/Version$ClientVersion$App;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 672
    if-nez p1, :cond_8

    .line 673
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 675
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 676
    iput-object p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    .line 678
    return-object p0
.end method

.method public setBuildType(Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 696
    if-nez p1, :cond_8

    .line 697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 699
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 700
    iput-object p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    .line 702
    return-object p0
.end method

.method public setDataVersion(I)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 765
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 766
    iput p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->dataVersion_:I

    .line 768
    return-object p0
.end method

.method public setDeviceHardware(Ljava/lang/String;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 829
    if-nez p1, :cond_8

    .line 830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 832
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 833
    iput-object p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 835
    return-object p0
.end method

.method public setDeviceOs(Ljava/lang/String;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 793
    if-nez p1, :cond_8

    .line 794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 796
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 797
    iput-object p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->deviceOs_:Ljava/lang/Object;

    .line 799
    return-object p0
.end method

.method public setPlatformType(Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 720
    if-nez p1, :cond_8

    .line 721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 723
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 724
    iput-object p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    .line 726
    return-object p0
.end method

.method public setVersion(I)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 744
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->bitField0_:I

    .line 745
    iput p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->version_:I

    .line 747
    return-object p0
.end method
