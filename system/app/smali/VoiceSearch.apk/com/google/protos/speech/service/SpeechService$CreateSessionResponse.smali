.class public final Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CreateSessionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateSessionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;


# instance fields
.field private bitField0_:I

.field private clientExperimentConfigHash_:I

.field private clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

.field private stunId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 12349
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12838
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    .line 12839
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->initFields()V

    .line 12847
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 12284
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12434
    iput-byte v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    .line 12466
    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedSerializedSize:I

    .line 12285
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->initFields()V

    .line 12286
    const/4 v2, 0x0

    .line 12288
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 12289
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_ae

    .line 12290
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 12291
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_b2

    .line 12296
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 12298
    const/4 v0, 0x1

    goto :goto_d

    .line 12293
    :sswitch_1e
    const/4 v0, 0x1

    .line 12294
    goto :goto_d

    .line 12303
    :sswitch_20
    const/4 v3, 0x0

    .line 12304
    .local v3, subBuilder:Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 12305
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-virtual {v5}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v3

    .line 12307
    :cond_2e
    sget-object v5, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12308
    if-eqz v3, :cond_45

    .line 12309
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-virtual {v3, v5}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    .line 12310
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12312
    :cond_45
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 12340
    .end local v3           #subBuilder:Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 12341
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 12346
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->makeExtensionsImmutable()V

    throw v5

    .line 12316
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    .line 12317
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 12342
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 12343
    .local v1, e:Ljava/io/IOException;
    :try_start_65
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_52

    .line 12321
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_73
    const/4 v3, 0x0

    .line 12322
    .local v3, subBuilder:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    :try_start_74
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_81

    .line 12323
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-virtual {v5}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v3

    .line 12325
    :cond_81
    sget-object v5, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12326
    if-eqz v3, :cond_98

    .line 12327
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-virtual {v3, v5}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    .line 12328
    invoke-virtual {v3}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12330
    :cond_98
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    goto/16 :goto_d

    .line 12334
    .end local v3           #subBuilder:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    :sswitch_a0
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    .line 12335
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v5

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I
    :try_end_ac
    .catchall {:try_start_74 .. :try_end_ac} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_74 .. :try_end_ac} :catch_4c
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_ac} :catch_64

    goto/16 :goto_d

    .line 12346
    .end local v4           #tag:I
    :cond_ae
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->makeExtensionsImmutable()V

    .line 12348
    return-void

    .line 12291
    :sswitch_data_b2
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_57
        0x1a -> :sswitch_73
        0x25 -> :sswitch_a0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
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
    .line 12262
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12267
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12434
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    .line 12466
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedSerializedSize:I

    .line 12269
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12262
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12270
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12434
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    .line 12466
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedSerializedSize:I

    .line 12270
    return-void
.end method

.method static synthetic access$14602(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12262
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object p1
.end method

.method static synthetic access$14700(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12262
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14702(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12262
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14802(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12262
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p1
.end method

.method static synthetic access$14902(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12262
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I

    return p1
.end method

.method static synthetic access$15002(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12262
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .registers 1

    .prologue
    .line 12274
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 12429
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    .line 12431
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12432
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I

    .line 12433
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .registers 1

    .prologue
    .line 12551
    #calls: Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->access$14400()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 12554
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientExperimentConfig()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .registers 2

    .prologue
    .line 12415
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object v0
.end method

.method public getClientExperimentConfigHash()I
    .registers 2

    .prologue
    .line 12425
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .registers 2

    .prologue
    .line 12278
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12468
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedSerializedSize:I

    .line 12469
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 12489
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 12471
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 12472
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 12473
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12476
    :cond_18
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 12477
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getStunIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12480
    :cond_27
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 12481
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12484
    :cond_35
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 12485
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12488
    :cond_44
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 12489
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .registers 2

    .prologue
    .line 12372
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object v0
.end method

.method public getStunId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 12382
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    .line 12383
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 12384
    check-cast v1, Ljava/lang/String;

    .line 12392
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 12386
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12388
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12389
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12390
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12392
    goto :goto_8
.end method

.method public getStunIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12397
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    .line 12398
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12399
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12401
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;

    .line 12404
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

.method public hasClientExperimentConfig()Z
    .registers 3

    .prologue
    .line 12412
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

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

.method public hasClientExperimentConfigHash()Z
    .registers 3

    .prologue
    .line 12422
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

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

.method public hasServerAddress()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12369
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStunId()Z
    .registers 3

    .prologue
    .line 12379
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 12436
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    .line 12437
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 12446
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 12437
    goto :goto_9

    .line 12439
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasServerAddress()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 12440
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 12441
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 12442
    goto :goto_9

    .line 12445
    :cond_20
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .registers 2

    .prologue
    .line 12552
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .registers 2

    .prologue
    .line 12556
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

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
    .line 12495
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 12451
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getSerializedSize()I

    .line 12452
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 12453
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12455
    :cond_11
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 12456
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getStunIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12458
    :cond_1e
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 12459
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12461
    :cond_2a
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 12462
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 12464
    :cond_37
    return-void
.end method
