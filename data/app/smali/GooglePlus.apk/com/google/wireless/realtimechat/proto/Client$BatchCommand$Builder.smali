.class public final Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BatchCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;",
        "Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$BatchCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

.field private clientVersion_:Ljava/lang/Object;

.field private command_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;",
            ">;"
        }
    .end annotation
.end field

.field private request_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;"
        }
    .end annotation
.end field

.field private response_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;",
            ">;"
        }
    .end annotation
.end field

.field private stateUpdate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 59258
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 59464
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 59553
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 59642
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 59731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 59820
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59856
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59259
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->maybeForceBuilderInitialization()V

    .line 59260
    return-void
.end method

.method static synthetic access$80300(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 59253
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->buildParsed()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$80400()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 1

    .prologue
    .line 59253
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 59303
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    .line 59304
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 59305
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 59308
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 1

    .prologue
    .line 59265
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCommandIsMutable()V
    .registers 3

    .prologue
    .line 59467
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 59468
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 59469
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59471
    :cond_16
    return-void
.end method

.method private ensureRequestIsMutable()V
    .registers 3

    .prologue
    .line 59556
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 59557
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 59558
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59560
    :cond_16
    return-void
.end method

.method private ensureResponseIsMutable()V
    .registers 3

    .prologue
    .line 59645
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 59646
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 59647
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59649
    :cond_16
    return-void
.end method

.method private ensureStateUpdateIsMutable()V
    .registers 3

    .prologue
    .line 59734
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 59735
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 59736
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59738
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 59263
    return-void
.end method


# virtual methods
.method public addAllCommand(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 59534
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 59535
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 59537
    return-object p0
.end method

.method public addAllRequest(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 59623
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59624
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 59626
    return-object p0
.end method

.method public addAllResponse(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 59712
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59713
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 59715
    return-object p0
.end method

.method public addAllStateUpdate(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 59801
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59802
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 59804
    return-object p0
.end method

.method public addCommand(ILcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59527
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 59528
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59530
    return-object p0
.end method

.method public addCommand(ILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59510
    if-nez p2, :cond_8

    .line 59511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59513
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 59514
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59516
    return-object p0
.end method

.method public addCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 59520
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 59521
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59523
    return-object p0
.end method

.method public addCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59500
    if-nez p1, :cond_8

    .line 59501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59503
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 59504
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59506
    return-object p0
.end method

.method public addRequest(ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59616
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59617
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59619
    return-object p0
.end method

.method public addRequest(ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59599
    if-nez p2, :cond_8

    .line 59600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59602
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59603
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59605
    return-object p0
.end method

.method public addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 59609
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59610
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59612
    return-object p0
.end method

.method public addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59589
    if-nez p1, :cond_8

    .line 59590
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59592
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59593
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59595
    return-object p0
.end method

.method public addResponse(ILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59705
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59706
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59708
    return-object p0
.end method

.method public addResponse(ILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59688
    if-nez p2, :cond_8

    .line 59689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59691
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59692
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59694
    return-object p0
.end method

.method public addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 59698
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59699
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59701
    return-object p0
.end method

.method public addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59678
    if-nez p1, :cond_8

    .line 59679
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59681
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59682
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59684
    return-object p0
.end method

.method public addStateUpdate(ILcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59794
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59795
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59797
    return-object p0
.end method

.method public addStateUpdate(ILcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59777
    if-nez p2, :cond_8

    .line 59778
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59780
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59781
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59783
    return-object p0
.end method

.method public addStateUpdate(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 59787
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59788
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59790
    return-object p0
.end method

.method public addStateUpdate(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59767
    if-nez p1, :cond_8

    .line 59768
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59770
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59771
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59773
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 59253
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 3

    .prologue
    .line 59294
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    .line 59295
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 59296
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 59298
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 59253
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 6

    .prologue
    .line 59312
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 59313
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59314
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 59315
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 59316
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 59317
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59319
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80602(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;

    .line 59320
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 59321
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 59322
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59324
    :cond_38
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80702(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;

    .line 59325
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_52

    .line 59326
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 59327
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59329
    :cond_52
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80802(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;

    .line 59330
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6d

    .line 59331
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 59332
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59334
    :cond_6d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80902(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;

    .line 59335
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_7a

    .line 59336
    or-int/lit8 v2, v2, 0x1

    .line 59338
    :cond_7a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$81002(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59339
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_87

    .line 59340
    or-int/lit8 v2, v2, 0x2

    .line 59342
    :cond_87
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$81102(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59343
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$81202(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;I)I

    .line 59344
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 59253
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 59253
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59269
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 59270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 59271
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 59273
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 59275
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 59277
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59279
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59280
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59281
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59282
    return-object p0
.end method

.method public clearClientVersion()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59844
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59845
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59847
    return-object p0
.end method

.method public clearClientVersionMessage()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59892
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59894
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59895
    return-object p0
.end method

.method public clearCommand()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59540
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 59541
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59543
    return-object p0
.end method

.method public clearRequest()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 59630
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59632
    return-object p0
.end method

.method public clearResponse()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59718
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 59719
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59721
    return-object p0
.end method

.method public clearStateUpdate()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59807
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 59808
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59810
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 59253
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 59253
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3

    .prologue
    .line 59286
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

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
    .line 59253
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 59825
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59826
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 59827
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 59828
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59831
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

.method public getClientVersionMessage()Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 2

    .prologue
    .line 59861
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object v0
.end method

.method public getCommand(I)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 3
    .parameter "index"

    .prologue
    .line 59480
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    return-object v0
.end method

.method public getCommandCount()I
    .registers 2

    .prologue
    .line 59477
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCommandList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59474
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 59253
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 59253
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 2

    .prologue
    .line 59290
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(I)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 3
    .parameter "index"

    .prologue
    .line 59569
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    return-object v0
.end method

.method public getRequestCount()I
    .registers 2

    .prologue
    .line 59566
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59563
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponse(I)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .registers 3
    .parameter "index"

    .prologue
    .line 59658
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    return-object v0
.end method

.method public getResponseCount()I
    .registers 2

    .prologue
    .line 59655
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59652
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStateUpdate(I)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 3
    .parameter "index"

    .prologue
    .line 59747
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    return-object v0
.end method

.method public getStateUpdateCount()I
    .registers 2

    .prologue
    .line 59744
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStateUpdateList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59741
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasClientVersion()Z
    .registers 3

    .prologue
    .line 59822
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

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

.method public hasClientVersionMessage()Z
    .registers 3

    .prologue
    .line 59858
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 59399
    const/4 v0, 0x1

    return v0
.end method

.method public mergeClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 59880
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 59882
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {v0}, Lcom/google/wireless/webapps/Version$ClientVersion;->newBuilder(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59888
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59889
    return-object p0

    .line 59885
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    goto :goto_20
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
    .line 59253
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 59253
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

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
    .line 59253
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59407
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 59408
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_74

    .line 59413
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59415
    :sswitch_d
    return-object p0

    .line 59420
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    .line 59421
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 59422
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_0

    .line 59426
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59427
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 59431
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->newBuilder()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    .line 59432
    .local v0, subBuilder:Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->hasClientVersionMessage()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 59433
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->getClientVersionMessage()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    .line 59435
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 59436
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->setClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_0

    .line 59440
    .end local v0           #subBuilder:Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    .line 59441
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 59442
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_0

    .line 59446
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    :sswitch_55
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    .line 59447
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 59448
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_0

    .line 59452
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    :sswitch_64
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    .line 59453
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 59454
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addStateUpdate(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_0

    .line 59408
    nop

    :sswitch_data_74
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x1a -> :sswitch_2a
        0x22 -> :sswitch_46
        0x2a -> :sswitch_55
        0x32 -> :sswitch_64
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 59348
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 59395
    :cond_6
    :goto_6
    return-object p0

    .line 59349
    :cond_7
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80600(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 59350
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 59351
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80600(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 59352
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59359
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80700(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 59360
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 59361
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80700(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 59362
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59369
    :cond_43
    :goto_43
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80800(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 59370
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 59371
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80800(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 59372
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59379
    :cond_61
    :goto_61
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80900(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 59380
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 59381
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80900(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 59382
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59389
    :cond_7f
    :goto_7f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 59390
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->setClientVersion(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    .line 59392
    :cond_8c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->hasClientVersionMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59393
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getClientVersionMessage()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->mergeClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto/16 :goto_6

    .line 59354
    :cond_9b
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 59355
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80600(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_25

    .line 59364
    :cond_a9
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59365
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80700(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    .line 59374
    :cond_b6
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59375
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80800(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_61

    .line 59384
    :cond_c3
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59385
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80900(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7f
.end method

.method public setClientVersion(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59835
    if-nez p1, :cond_8

    .line 59836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59838
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59839
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59841
    return-object p0
.end method

.method public setClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 59874
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->build()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59876
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59877
    return-object p0
.end method

.method public setClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59864
    if-nez p1, :cond_8

    .line 59865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59867
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59869
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59870
    return-object p0
.end method

.method public setCommand(ILcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59494
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 59495
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59497
    return-object p0
.end method

.method public setCommand(ILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59484
    if-nez p2, :cond_8

    .line 59485
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59487
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 59488
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59490
    return-object p0
.end method

.method public setRequest(ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59583
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59584
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59586
    return-object p0
.end method

.method public setRequest(ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59573
    if-nez p2, :cond_8

    .line 59574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59576
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59577
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59579
    return-object p0
.end method

.method public setResponse(ILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59672
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59673
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59675
    return-object p0
.end method

.method public setResponse(ILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59662
    if-nez p2, :cond_8

    .line 59663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59665
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59666
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59668
    return-object p0
.end method

.method public setStateUpdate(ILcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59761
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59762
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59764
    return-object p0
.end method

.method public setStateUpdate(ILcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59751
    if-nez p2, :cond_8

    .line 59752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59754
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59755
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59757
    return-object p0
.end method
