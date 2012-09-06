.class public final Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiRecordingResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiRecordingResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORDING_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recording_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22379
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 22796
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    .line 22797
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->initFields()V

    .line 22798
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x2

    .line 22326
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22430
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedIsInitialized:B

    .line 22464
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedSerializedSize:I

    .line 22327
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->initFields()V

    .line 22328
    const/4 v2, 0x0

    .line 22330
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 22331
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_8c

    .line 22332
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 22333
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_9c

    .line 22338
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_e

    .line 22340
    const/4 v0, 0x1

    goto :goto_e

    .line 22335
    :sswitch_1f
    const/4 v0, 0x1

    .line 22336
    goto :goto_e

    .line 22345
    :sswitch_21
    const/4 v3, 0x0

    .line 22346
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2f

    .line 22347
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 22349
    :cond_2f
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 22350
    if-eqz v3, :cond_46

    .line 22351
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 22352
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 22354
    :cond_46
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->bitField0_:I
    :try_end_4c
    .catchall {:try_start_10 .. :try_end_4c} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_4c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4c} :catch_7d

    goto :goto_e

    .line 22367
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4d
    move-exception v1

    .line 22368
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_53

    .line 22373
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_53
    move-exception v5

    and-int/lit8 v6, v2, 0x2

    if-ne v6, v7, :cond_60

    .line 22374
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    .line 22376
    :cond_60
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->makeExtensionsImmutable()V

    throw v5

    .line 22358
    .restart local v4       #tag:I
    :sswitch_64
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v7, :cond_71

    .line 22359
    :try_start_68
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    .line 22360
    or-int/lit8 v2, v2, 0x2

    .line 22362
    :cond_71
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    sget-object v6, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catchall {:try_start_68 .. :try_end_7c} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_68 .. :try_end_7c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_7c} :catch_7d

    goto :goto_e

    .line 22369
    .end local v4           #tag:I
    :catch_7d
    move-exception v1

    .line 22370
    .local v1, e:Ljava/io/IOException;
    :try_start_7e
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_53

    .line 22373
    .end local v1           #e:Ljava/io/IOException;
    :cond_8c
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_98

    .line 22374
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    .line 22376
    :cond_98
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->makeExtensionsImmutable()V

    .line 22378
    return-void

    .line 22333
    :sswitch_data_9c
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x12 -> :sswitch_64
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Api2$1;)V
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
    .line 22304
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22309
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22430
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedIsInitialized:B

    .line 22464
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedSerializedSize:I

    .line 22311
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22304
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22312
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22430
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedIsInitialized:B

    .line 22464
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedSerializedSize:I

    .line 22312
    return-void
.end method

.method static synthetic access$27102(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22304
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$27200(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22304
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$27202(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22304
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$27302(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22304
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 1

    .prologue
    .line 22316
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 22427
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 22428
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    .line 22429
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 1

    .prologue
    .line 22541
    #calls: Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->access$26900()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 22544
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22521
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22527
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22491
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22497
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22532
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22538
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22511
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22517
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22501
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22507
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    .registers 2

    .prologue
    .line 22320
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22304
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22391
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRecording(I)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 3
    .parameter "index"

    .prologue
    .line 22419
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public getRecordingCount()I
    .registers 2

    .prologue
    .line 22416
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordingList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22409
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    return-object v0
.end method

.method public getRecordingOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecordingOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 22423
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecordingOrBuilder;

    return-object v0
.end method

.method public getRecordingOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecordingOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22413
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 22466
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedSerializedSize:I

    .line 22467
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 22479
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 22469
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 22470
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_16

    .line 22471
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 22474
    :cond_16
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 22475
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 22474
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 22478
    :cond_30
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 22479
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 22402
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22399
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 22432
    iget-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedIsInitialized:B

    .line 22433
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 22450
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 22433
    goto :goto_9

    .line 22435
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->hasStatus()Z

    move-result v4

    if-nez v4, :cond_16

    .line 22436
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 22439
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_23

    .line 22440
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 22443
    :cond_23
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getRecordingCount()I

    move-result v4

    if-ge v0, v4, :cond_3a

    .line 22444
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getRecording(I)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_37

    .line 22445
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 22443
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 22449
    :cond_3a
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->memoizedIsInitialized:B

    move v3, v2

    .line 22450
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 2

    .prologue
    .line 22542
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22304
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;
    .registers 2

    .prologue
    .line 22546
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22304
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse$Builder;

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
    .line 22485
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
    const/4 v2, 0x1

    .line 22455
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getSerializedSize()I

    .line 22456
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_f

    .line 22457
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 22459
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 22460
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->recording_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 22459
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 22462
    :cond_27
    return-void
.end method
