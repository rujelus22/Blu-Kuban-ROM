.class public final Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CreateSessionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateSessionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final createSessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;


# instance fields
.field private bitField0_:I

.field private clientExperimentConfigHash_:I

.field private clientId_:Ljava/lang/Object;

.field private cookie_:Ljava/lang/Object;

.field private inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

.field private locale_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

.field private protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

.field private speculative_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 11408
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 12222
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    .line 12223
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->initFields()V

    .line 12231
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->createSessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 12
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 11319
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11583
    iput-byte v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    .line 11635
    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedSerializedSize:I

    .line 11320
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->initFields()V

    .line 11321
    const/4 v2, 0x0

    .line 11323
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 11324
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_ec

    .line 11325
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 11326
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_f0

    .line 11331
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 11333
    const/4 v0, 0x1

    goto :goto_d

    .line 11328
    :sswitch_1e
    const/4 v0, 0x1

    .line 11329
    goto :goto_d

    .line 11338
    :sswitch_20
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11339
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_4b

    goto :goto_d

    .line 11399
    .end local v5           #tag:I
    :catch_2d
    move-exception v1

    .line 11400
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 11405
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->makeExtensionsImmutable()V

    throw v7

    .line 11343
    .restart local v5       #tag:I
    :sswitch_38
    :try_start_38
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 11344
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$Protocol;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$Protocol;

    move-result-object v6

    .line 11345
    .local v6, value:Lcom/google/protos/speech/service/SpeechService$Protocol;
    if-eqz v6, :cond_d

    .line 11346
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11347
    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_4a} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 11401
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/protos/speech/service/SpeechService$Protocol;
    :catch_4b
    move-exception v1

    .line 11402
    .local v1, e:Ljava/io/IOException;
    :try_start_4c
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_33

    .line 11352
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_5a
    const/4 v4, 0x0

    .line 11353
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    :try_start_5b
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v7, v7, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_68

    .line 11354
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->toBuilder()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v4

    .line 11356
    :cond_68
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 11357
    if-eqz v4, :cond_7f

    .line 11358
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 11359
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 11361
    :cond_7f
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    goto :goto_d

    .line 11365
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    :sswitch_86
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11366
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 11370
    :sswitch_94
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11371
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    goto/16 :goto_d

    .line 11375
    :sswitch_a2
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11376
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 11380
    :sswitch_b0
    const/4 v4, 0x0

    .line 11381
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v7, v7, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_bf

    .line 11382
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v4

    .line 11384
    :cond_bf
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 11385
    if-eqz v4, :cond_d6

    .line 11386
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 11387
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 11389
    :cond_d6
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    goto/16 :goto_d

    .line 11393
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    :sswitch_de
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    .line 11394
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I
    :try_end_ea
    .catchall {:try_start_5b .. :try_end_ea} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5b .. :try_end_ea} :catch_2d
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_ea} :catch_4b

    goto/16 :goto_d

    .line 11405
    .end local v5           #tag:I
    :cond_ec
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->makeExtensionsImmutable()V

    .line 11407
    return-void

    .line 11326
    :sswitch_data_f0
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x10 -> :sswitch_38
        0x1a -> :sswitch_5a
        0x22 -> :sswitch_86
        0x28 -> :sswitch_94
        0x32 -> :sswitch_a2
        0x3a -> :sswitch_b0
        0x45 -> :sswitch_de
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
    .line 11297
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11302
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11583
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    .line 11635
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedSerializedSize:I

    .line 11304
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11297
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11305
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11583
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    .line 11635
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedSerializedSize:I

    .line 11305
    return-void
.end method

.method static synthetic access$13400(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11297
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13402(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13502(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$Protocol;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    return-object p1
.end method

.method static synthetic access$13602(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object p1
.end method

.method static synthetic access$13700(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11297
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13702(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13802(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11297
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    return p1
.end method

.method static synthetic access$13900(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11297
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13902(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11297
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p1
.end method

.method static synthetic access$14102(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11297
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I

    return p1
.end method

.method static synthetic access$14202(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11297
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .registers 1

    .prologue
    .line 11309
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    .line 11575
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 11576
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 11577
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    .line 11578
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    .line 11579
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    .line 11580
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 11581
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I

    .line 11582
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .registers 1

    .prologue
    .line 11736
    #calls: Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->access$13200()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 11739
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientExperimentConfigHash()I
    .registers 2

    .prologue
    .line 11570
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I

    return v0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11446
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    .line 11447
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11448
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11450
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientId_:Ljava/lang/Object;

    .line 11453
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

.method public getCookieBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11499
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    .line 11500
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11501
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11503
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->cookie_:Ljava/lang/Object;

    .line 11506
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11297
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .registers 2

    .prologue
    .line 11313
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    return-object v0
.end method

.method public getInputAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .registers 2

    .prologue
    .line 11474
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object v0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11542
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    .line 11543
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11544
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11546
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->locale_:Ljava/lang/Object;

    .line 11549
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

.method public getProtocol()Lcom/google/protos/speech/service/SpeechService$Protocol;
    .registers 2

    .prologue
    .line 11464
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    return-object v0
.end method

.method public getProtocolFeatures()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .registers 2

    .prologue
    .line 11560
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11637
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedSerializedSize:I

    .line 11638
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 11674
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 11640
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 11641
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 11642
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11645
    :cond_1c
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2d

    .line 11646
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$Protocol;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11649
    :cond_2d
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 11650
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11653
    :cond_3b
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4a

    .line 11654
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getCookieBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11657
    :cond_4a
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 11658
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11661
    :cond_5a
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6c

    .line 11662
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11665
    :cond_6c
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 11666
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11669
    :cond_7c
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8b

    .line 11670
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11673
    :cond_8b
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 11674
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSpeculative()Z
    .registers 2

    .prologue
    .line 11517
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    return v0
.end method

.method public hasClientExperimentConfigHash()Z
    .registers 3

    .prologue
    .line 11567
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

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

.method public hasClientId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11428
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCookie()Z
    .registers 3

    .prologue
    .line 11481
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

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

.method public hasInputAudioParameters()Z
    .registers 3

    .prologue
    .line 11471
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

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

.method public hasLocale()Z
    .registers 3

    .prologue
    .line 11524
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

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

.method public hasProtocol()Z
    .registers 3

    .prologue
    .line 11461
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

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

.method public hasProtocolFeatures()Z
    .registers 3

    .prologue
    .line 11557
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

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

.method public hasSpeculative()Z
    .registers 3

    .prologue
    .line 11514
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 11585
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    .line 11586
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 11603
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 11586
    goto :goto_9

    .line 11588
    :cond_d
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasClientId()Z

    move-result v3

    if-nez v3, :cond_16

    .line 11589
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 11592
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasProtocol()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 11593
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 11596
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasInputAudioParameters()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 11597
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getInputAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_32

    .line 11598
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 11602
    :cond_32
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->memoizedIsInitialized:B

    move v2, v1

    .line 11603
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11297
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .registers 2

    .prologue
    .line 11737
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11297
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .registers 2

    .prologue
    .line 11741
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

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
    .line 11680
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 11608
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getSerializedSize()I

    .line 11609
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 11610
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11612
    :cond_15
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_24

    .line 11613
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Protocol;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11615
    :cond_24
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 11616
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11618
    :cond_30
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3d

    .line 11619
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getCookieBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11621
    :cond_3d
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 11622
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->speculative_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11624
    :cond_4b
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5b

    .line 11625
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11627
    :cond_5b
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 11628
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11630
    :cond_69
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_76

    .line 11631
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->clientExperimentConfigHash_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 11633
    :cond_76
    return-void
.end method
