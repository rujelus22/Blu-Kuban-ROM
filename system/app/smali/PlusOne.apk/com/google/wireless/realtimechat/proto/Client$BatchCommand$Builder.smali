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
    .line 58693
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 58899
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 58988
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 59077
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 59166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 59255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59291
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 58694
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->maybeForceBuilderInitialization()V

    .line 58695
    return-void
.end method

.method static synthetic access$79500(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58688
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->buildParsed()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$79600()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 1

    .prologue
    .line 58688
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
    .line 58738
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    .line 58739
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 58740
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 58743
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 1

    .prologue
    .line 58700
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCommandIsMutable()V
    .registers 3

    .prologue
    .line 58902
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 58903
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 58904
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58906
    :cond_16
    return-void
.end method

.method private ensureRequestIsMutable()V
    .registers 3

    .prologue
    .line 58991
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 58992
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 58993
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58995
    :cond_16
    return-void
.end method

.method private ensureResponseIsMutable()V
    .registers 3

    .prologue
    .line 59080
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 59081
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 59082
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59084
    :cond_16
    return-void
.end method

.method private ensureStateUpdateIsMutable()V
    .registers 3

    .prologue
    .line 59169
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 59170
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 59171
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59173
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 58698
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
    .line 58969
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 58970
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 58972
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
    .line 59058
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59059
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 59061
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
    .line 59147
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59148
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 59150
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
    .line 59236
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59237
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 59239
    return-object p0
.end method

.method public addCommand(ILcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 58962
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 58963
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 58965
    return-object p0
.end method

.method public addCommand(ILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 58945
    if-nez p2, :cond_8

    .line 58946
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58948
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 58949
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 58951
    return-object p0
.end method

.method public addCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 58955
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 58956
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58958
    return-object p0
.end method

.method public addCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58935
    if-nez p1, :cond_8

    .line 58936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58938
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 58939
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58941
    return-object p0
.end method

.method public addRequest(ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59051
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59052
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59054
    return-object p0
.end method

.method public addRequest(ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59034
    if-nez p2, :cond_8

    .line 59035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59037
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59038
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59040
    return-object p0
.end method

.method public addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 59044
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59045
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59047
    return-object p0
.end method

.method public addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59024
    if-nez p1, :cond_8

    .line 59025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59027
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59028
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59030
    return-object p0
.end method

.method public addResponse(ILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59140
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59141
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59143
    return-object p0
.end method

.method public addResponse(ILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59123
    if-nez p2, :cond_8

    .line 59124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59126
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59127
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59129
    return-object p0
.end method

.method public addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 59133
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59134
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59136
    return-object p0
.end method

.method public addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59113
    if-nez p1, :cond_8

    .line 59114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59116
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59117
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59119
    return-object p0
.end method

.method public addStateUpdate(ILcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59229
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59230
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59232
    return-object p0
.end method

.method public addStateUpdate(ILcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59212
    if-nez p2, :cond_8

    .line 59213
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59215
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59216
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59218
    return-object p0
.end method

.method public addStateUpdate(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 59222
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59223
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59225
    return-object p0
.end method

.method public addStateUpdate(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59202
    if-nez p1, :cond_8

    .line 59203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59205
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59206
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59208
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 3

    .prologue
    .line 58729
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    .line 58730
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 58731
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 58733
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 58688
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 6

    .prologue
    .line 58747
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 58748
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58749
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 58750
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 58751
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 58752
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58754
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$79802(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;

    .line 58755
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 58756
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 58757
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58759
    :cond_38
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$79902(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;

    .line 58760
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_52

    .line 58761
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 58762
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58764
    :cond_52
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80002(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;

    .line 58765
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6d

    .line 58766
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 58767
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58769
    :cond_6d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80102(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;

    .line 58770
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_7a

    .line 58771
    or-int/lit8 v2, v2, 0x1

    .line 58773
    :cond_7a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80202(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58774
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_87

    .line 58775
    or-int/lit8 v2, v2, 0x2

    .line 58777
    :cond_87
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80302(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 58778
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80402(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;I)I

    .line 58779
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 58688
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 58688
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 58704
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 58705
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 58706
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58707
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 58708
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58709
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 58710
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58711
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 58712
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 58714
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58715
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 58716
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58717
    return-object p0
.end method

.method public clearClientVersion()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59279
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59280
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59282
    return-object p0
.end method

.method public clearClientVersionMessage()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59327
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59329
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59330
    return-object p0
.end method

.method public clearCommand()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 58975
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 58976
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58978
    return-object p0
.end method

.method public clearRequest()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59064
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 59065
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59067
    return-object p0
.end method

.method public clearResponse()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 59154
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59156
    return-object p0
.end method

.method public clearStateUpdate()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 2

    .prologue
    .line 59242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 59243
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59245
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 58688
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 58688
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3

    .prologue
    .line 58721
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
    .line 58688
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 59260
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59261
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 59262
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 59263
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59266
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
    .line 59296
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object v0
.end method

.method public getCommand(I)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 3
    .parameter "index"

    .prologue
    .line 58915
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    return-object v0
.end method

.method public getCommandCount()I
    .registers 2

    .prologue
    .line 58912
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
    .line 58909
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 58688
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 58688
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 2

    .prologue
    .line 58725
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(I)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 3
    .parameter "index"

    .prologue
    .line 59004
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    return-object v0
.end method

.method public getRequestCount()I
    .registers 2

    .prologue
    .line 59001
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
    .line 58998
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponse(I)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .registers 3
    .parameter "index"

    .prologue
    .line 59093
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    return-object v0
.end method

.method public getResponseCount()I
    .registers 2

    .prologue
    .line 59090
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
    .line 59087
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStateUpdate(I)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 3
    .parameter "index"

    .prologue
    .line 59182
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    return-object v0
.end method

.method public getStateUpdateCount()I
    .registers 2

    .prologue
    .line 59179
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
    .line 59176
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasClientVersion()Z
    .registers 3

    .prologue
    .line 59257
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
    .line 59293
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

.method public mergeClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 59315
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 59317
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {v0}, Lcom/google/wireless/webapps/Version$ClientVersion;->newBuilder(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59323
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59324
    return-object p0

    .line 59320
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
    .line 58688
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

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
    .line 58688
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
    .line 58842
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 58843
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_74

    .line 58848
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58850
    :sswitch_d
    return-object p0

    .line 58855
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    .line 58856
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58857
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_0

    .line 58861
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58862
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 58866
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->newBuilder()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    .line 58867
    .local v0, subBuilder:Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->hasClientVersionMessage()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 58868
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->getClientVersionMessage()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    .line 58870
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58871
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->setClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_0

    .line 58875
    .end local v0           #subBuilder:Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    .line 58876
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58877
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_0

    .line 58881
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    :sswitch_55
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    .line 58882
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58883
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_0

    .line 58887
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    :sswitch_64
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    .line 58888
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58889
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addStateUpdate(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_0

    .line 58843
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
    .line 58783
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 58830
    :cond_6
    :goto_6
    return-object p0

    .line 58784
    :cond_7
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$79800(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 58785
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 58786
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$79800(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    .line 58787
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58794
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$79900(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 58795
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 58796
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$79900(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    .line 58797
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58804
    :cond_43
    :goto_43
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80000(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 58805
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 58806
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80000(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    .line 58807
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58814
    :cond_61
    :goto_61
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80100(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 58815
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 58816
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80100(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    .line 58817
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 58824
    :cond_7f
    :goto_7f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 58825
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->setClientVersion(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    .line 58827
    :cond_8c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->hasClientVersionMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58828
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getClientVersionMessage()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->mergeClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto/16 :goto_6

    .line 58789
    :cond_9b
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 58790
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$79800(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_25

    .line 58799
    :cond_a9
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 58800
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$79900(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    .line 58809
    :cond_b6
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 58810
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80000(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_61

    .line 58819
    :cond_c3
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 58820
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->access$80100(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7f
.end method

.method public setClientVersion(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59270
    if-nez p1, :cond_8

    .line 59271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59273
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59274
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersion_:Ljava/lang/Object;

    .line 59276
    return-object p0
.end method

.method public setClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 59309
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->build()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59311
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59312
    return-object p0
.end method

.method public setClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 59299
    if-nez p1, :cond_8

    .line 59300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59302
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 59304
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->bitField0_:I

    .line 59305
    return-object p0
.end method

.method public setCommand(ILcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 58929
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 58930
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58932
    return-object p0
.end method

.method public setCommand(ILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 58919
    if-nez p2, :cond_8

    .line 58920
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58922
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureCommandIsMutable()V

    .line 58923
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->command_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58925
    return-object p0
.end method

.method public setRequest(ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59018
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59019
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59021
    return-object p0
.end method

.method public setRequest(ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59008
    if-nez p2, :cond_8

    .line 59009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59011
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureRequestIsMutable()V

    .line 59012
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59014
    return-object p0
.end method

.method public setResponse(ILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59107
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59108
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59110
    return-object p0
.end method

.method public setResponse(ILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59097
    if-nez p2, :cond_8

    .line 59098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59100
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureResponseIsMutable()V

    .line 59101
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59103
    return-object p0
.end method

.method public setStateUpdate(ILcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 59196
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59197
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59199
    return-object p0
.end method

.method public setStateUpdate(ILcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 59186
    if-nez p2, :cond_8

    .line 59187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59189
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->ensureStateUpdateIsMutable()V

    .line 59190
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59192
    return-object p0
.end method
