.class public final Lcom/google/protos/speech/service/SpeechService$MessageHeader;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MessageHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MessageHeader;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$MessageHeader;


# instance fields
.field private applicationId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestId_:I

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5198
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    .line 5640
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 5641
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->initFields()V

    .line 5642
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

    .line 5154
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5295
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedIsInitialized:B

    .line 5318
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedSerializedSize:I

    .line 5155
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->initFields()V

    .line 5156
    const/4 v2, 0x0

    .line 5158
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 5159
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_61

    .line 5160
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 5161
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_66

    .line 5166
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 5168
    const/4 v0, 0x1

    goto :goto_d

    .line 5163
    :sswitch_1e
    const/4 v0, 0x1

    .line 5164
    goto :goto_d

    .line 5173
    :sswitch_20
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    .line 5174
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 5189
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 5190
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 5195
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->makeExtensionsImmutable()V

    throw v4

    .line 5178
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    .line 5179
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 5191
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 5192
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

    .line 5183
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    .line 5184
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_60} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_45

    goto :goto_d

    .line 5195
    .end local v3           #tag:I
    :cond_61
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->makeExtensionsImmutable()V

    .line 5197
    return-void

    .line 5161
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x10 -> :sswitch_38
        0x1a -> :sswitch_54
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
    .line 5132
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5295
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedIsInitialized:B

    .line 5318
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedSerializedSize:I

    .line 5139
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5132
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5140
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5295
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedIsInitialized:B

    .line 5318
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedSerializedSize:I

    .line 5140
    return-void
.end method

.method static synthetic access$6000(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5132
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5132
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/google/protos/speech/service/SpeechService$MessageHeader;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5132
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I

    return p1
.end method

.method static synthetic access$6200(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5132
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5132
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/google/protos/speech/service/SpeechService$MessageHeader;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5132
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .registers 1

    .prologue
    .line 5144
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 5291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    .line 5292
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I

    .line 5293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    .line 5294
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .registers 1

    .prologue
    .line 5399
    #calls: Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->access$5800()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5402
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5279
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    .line 5280
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5281
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5283
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;

    .line 5286
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
    .line 5132
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .registers 2

    .prologue
    .line 5148
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object v0
.end method

.method public getRequestId()I
    .registers 2

    .prologue
    .line 5254
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5320
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedSerializedSize:I

    .line 5321
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 5337
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 5323
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 5324
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 5325
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5328
    :cond_19
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 5329
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5332
    :cond_26
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 5333
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5336
    :cond_37
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedSerializedSize:I

    move v1, v0

    .line 5337
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5221
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    .line 5222
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5223
    check-cast v1, Ljava/lang/String;

    .line 5231
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5225
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5227
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5228
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5229
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5231
    goto :goto_8
.end method

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5236
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    .line 5237
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5238
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5240
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;

    .line 5243
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

.method public hasApplicationId()Z
    .registers 3

    .prologue
    .line 5261
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

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

.method public hasRequestId()Z
    .registers 3

    .prologue
    .line 5251
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

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

.method public hasSessionId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5218
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

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

    .line 5297
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedIsInitialized:B

    .line 5298
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 5301
    :goto_8
    return v1

    .line 5298
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 5300
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5132
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .registers 2

    .prologue
    .line 5400
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5132
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->toBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .registers 2

    .prologue
    .line 5404
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

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
    .line 5343
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

    .line 5306
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getSerializedSize()I

    .line 5307
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 5308
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5310
    :cond_12
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 5311
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5313
    :cond_1d
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 5314
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5316
    :cond_2c
    return-void
.end method
