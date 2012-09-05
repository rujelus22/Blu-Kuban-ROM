.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoToResponseItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;


# instance fields
.field private bitField0_:I

.field private displayUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14391
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 14890
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 14891
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->initFields()V

    .line 14892
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 14347
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14511
    iput-byte v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedIsInitialized:B

    .line 14534
    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedSerializedSize:I

    .line 14348
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->initFields()V

    .line 14349
    const/4 v2, 0x0

    .line 14351
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 14352
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_61

    .line 14353
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 14354
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_66

    .line 14359
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 14361
    const/4 v0, 0x1

    goto :goto_d

    .line 14356
    :sswitch_1e
    const/4 v0, 0x1

    .line 14357
    goto :goto_d

    .line 14366
    :sswitch_20
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    .line 14367
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 14382
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 14383
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 14388
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->makeExtensionsImmutable()V

    throw v4

    .line 14371
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    .line 14372
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 14384
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 14385
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 14376
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    .line 14377
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_60} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_45

    goto :goto_d

    .line 14388
    .end local v3           #tag:I
    :cond_61
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->makeExtensionsImmutable()V

    .line 14390
    return-void

    .line 14354
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x1a -> :sswitch_54
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14325
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14330
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14511
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedIsInitialized:B

    .line 14534
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedSerializedSize:I

    .line 14332
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14325
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14333
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14511
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedIsInitialized:B

    .line 14534
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedSerializedSize:I

    .line 14333
    return-void
.end method

.method static synthetic access$17300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14325
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14325
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14325
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14325
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14325
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14325
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14325
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .registers 1

    .prologue
    .line 14337
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 14507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    .line 14508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    .line 14509
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    .line 14510
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .registers 1

    .prologue
    .line 14615
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->access$17100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 14618
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14325
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .registers 2

    .prologue
    .line 14341
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object v0
.end method

.method public getDisplayUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14447
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    .line 14448
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14449
    check-cast v1, Ljava/lang/String;

    .line 14457
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14451
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14453
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14454
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14455
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14457
    goto :goto_8
.end method

.method public getDisplayUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14462
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    .line 14463
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14464
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14466
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;

    .line 14469
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

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14480
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    .line 14481
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14482
    check-cast v1, Ljava/lang/String;

    .line 14490
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14484
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14486
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14487
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14488
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14490
    goto :goto_8
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14495
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    .line 14496
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14497
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14499
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;

    .line 14502
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

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14536
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedSerializedSize:I

    .line 14537
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 14553
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 14539
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 14540
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 14541
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14544
    :cond_19
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 14545
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDisplayUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14548
    :cond_28
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 14549
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14552
    :cond_39
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedSerializedSize:I

    move v1, v0

    .line 14553
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14414
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    .line 14415
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14416
    check-cast v1, Ljava/lang/String;

    .line 14424
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14418
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14420
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14421
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14422
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14424
    goto :goto_8
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14429
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    .line 14430
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14431
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14433
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;

    .line 14436
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

.method public hasDisplayUrl()Z
    .registers 3

    .prologue
    .line 14444
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 14477
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14411
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 14513
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedIsInitialized:B

    .line 14514
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 14517
    :goto_8
    return v1

    .line 14514
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 14516
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14325
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .registers 2

    .prologue
    .line 14616
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14325
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .registers 2

    .prologue
    .line 14620
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 14559
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 14522
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getSerializedSize()I

    .line 14523
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 14524
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14526
    :cond_12
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 14527
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDisplayUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14529
    :cond_1f
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 14530
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14532
    :cond_2e
    return-void
.end method
