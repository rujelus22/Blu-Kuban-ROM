.class public final Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BatchCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59337
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    .line 59338
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->initFields()V

    .line 59339
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 58393
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 58541
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->memoizedIsInitialized:B

    .line 58573
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->memoizedSerializedSize:I

    .line 58394
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58388
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 58395
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 58541
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->memoizedIsInitialized:B

    .line 58573
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->memoizedSerializedSize:I

    .line 58395
    return-void
.end method

.method static synthetic access$79800(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58388
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$79802(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58388
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$79900(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58388
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$79902(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58388
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$80000(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58388
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$80002(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58388
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$80100(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58388
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$80102(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58388
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$80202(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58388
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$80302(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58388
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object p1
.end method

.method static synthetic access$80402(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58388
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->bitField0_:I

    return p1
.end method

.method private getClientVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 58512
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersion_:Ljava/lang/Object;

    .line 58513
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 58514
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 58516
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersion_:Ljava/lang/Object;

    .line 58519
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 1

    .prologue
    .line 58399
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 58534
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    .line 58535
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    .line 58536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    .line 58537
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    .line 58538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersion_:Ljava/lang/Object;

    .line 58539
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 58540
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 1

    .prologue
    .line 58681
    #calls: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->access$79600()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58628
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    #calls: Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->buildParsed()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->access$79500(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 58498
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersion_:Ljava/lang/Object;

    .line 58499
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 58500
    check-cast v1, Ljava/lang/String;

    .line 58508
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 58502
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 58504
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 58505
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 58506
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersion_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 58508
    goto :goto_8
.end method

.method public getClientVersionMessage()Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 2

    .prologue
    .line 58530
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object v0
.end method

.method public getCommand(I)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 3
    .parameter "index"

    .prologue
    .line 58421
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    return-object v0
.end method

.method public getCommandCount()I
    .registers 2

    .prologue
    .line 58418
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

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
    .line 58411
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    return-object v0
.end method

.method public getCommandOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$BunchCommandOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 58425
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommandOrBuilder;

    return-object v0
.end method

.method public getCommandOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58415
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 58388
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .registers 2

    .prologue
    .line 58403
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    return-object v0
.end method

.method public getRequest(I)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 3
    .parameter "index"

    .prologue
    .line 58442
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    return-object v0
.end method

.method public getRequestCount()I
    .registers 2

    .prologue
    .line 58439
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

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
    .line 58432
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequestOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 58446
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequestOrBuilder;

    return-object v0
.end method

.method public getRequestOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequestOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58436
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    return-object v0
.end method

.method public getResponse(I)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .registers 3
    .parameter "index"

    .prologue
    .line 58463
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    return-object v0
.end method

.method public getResponseCount()I
    .registers 2

    .prologue
    .line 58460
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

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
    .line 58453
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponseOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 58467
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponseOrBuilder;

    return-object v0
.end method

.method public getResponseOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58457
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 58575
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->memoizedSerializedSize:I

    .line 58576
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 58604
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 58578
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 58579
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 58580
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 58579
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 58583
    :cond_23
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_32

    .line 58584
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getClientVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 58587
    :cond_32
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_40

    .line 58588
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 58591
    :cond_40
    const/4 v0, 0x0

    :goto_41
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5a

    .line 58592
    const/4 v4, 0x4

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 58591
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 58595
    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_74

    .line 58596
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 58595
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 58599
    :cond_74
    const/4 v0, 0x0

    :goto_75
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8e

    .line 58600
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 58599
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 58603
    :cond_8e
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->memoizedSerializedSize:I

    move v2, v1

    .line 58604
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_8
.end method

.method public getStateUpdate(I)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 3
    .parameter "index"

    .prologue
    .line 58484
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    return-object v0
.end method

.method public getStateUpdateCount()I
    .registers 2

    .prologue
    .line 58481
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

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
    .line 58474
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    return-object v0
.end method

.method public getStateUpdateOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdateOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 58488
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdateOrBuilder;

    return-object v0
.end method

.method public getStateUpdateOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58478
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    return-object v0
.end method

.method public hasClientVersion()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 58495
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasClientVersionMessage()Z
    .registers 3

    .prologue
    .line 58527
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 58543
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->memoizedIsInitialized:B

    .line 58544
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 58547
    :goto_8
    return v1

    .line 58544
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 58546
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 58611
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 58552
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getSerializedSize()I

    .line 58553
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 58554
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->command_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58553
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 58556
    :cond_1c
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_29

    .line 58557
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getClientVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 58559
    :cond_29
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_35

    .line 58560
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->clientVersionMessage_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58562
    :cond_35
    const/4 v0, 0x0

    :goto_36
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 58563
    const/4 v2, 0x4

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->request_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58562
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 58565
    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 58566
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->response_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58565
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 58568
    :cond_65
    const/4 v0, 0x0

    :goto_66
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7d

    .line 58569
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->stateUpdate_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58568
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 58571
    :cond_7d
    return-void
.end method
