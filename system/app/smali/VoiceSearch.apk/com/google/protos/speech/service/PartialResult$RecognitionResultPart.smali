.class public final Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PartialResult.java"

# interfaces
.implements Lcom/google/protos/speech/service/PartialResult$RecognitionResultPartOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/PartialResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResultPart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stabilityConfidence_:D

.field private transcript_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 479
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    .line 816
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    .line 817
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    invoke-direct {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->initFields()V

    .line 818
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

    .line 440
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 542
    iput-byte v4, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedIsInitialized:B

    .line 562
    iput v4, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedSerializedSize:I

    .line 441
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->initFields()V

    .line 442
    const/4 v2, 0x0

    .line 444
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 445
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 446
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 447
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 452
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 454
    const/4 v0, 0x1

    goto :goto_d

    .line 449
    :sswitch_1e
    const/4 v0, 0x1

    .line 450
    goto :goto_d

    .line 459
    :sswitch_20
    iget v4, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    .line 460
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 470
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 471
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 476
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->makeExtensionsImmutable()V

    throw v4

    .line 464
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    .line 465
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 472
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 473
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

    .line 476
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->makeExtensionsImmutable()V

    .line 478
    return-void

    .line 447
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x11 -> :sswitch_38
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/PartialResult$1;)V
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
    .line 418
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 423
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 542
    iput-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedIsInitialized:B

    .line 562
    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedSerializedSize:I

    .line 425
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/PartialResult$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 426
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 542
    iput-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedIsInitialized:B

    .line 562
    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedSerializedSize:I

    .line 426
    return-void
.end method

.method static synthetic access$700(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-wide p1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput p1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .registers 1

    .prologue
    .line 430
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    .line 540
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D

    .line 541
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .registers 1

    .prologue
    .line 639
    #calls: Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->create()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->access$500()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 642
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->newBuilder()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .registers 2

    .prologue
    .line 434
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 564
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedSerializedSize:I

    .line 565
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 577
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 567
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 568
    iget v2, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 569
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 572
    :cond_19
    iget v2, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 573
    iget-wide v2, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 576
    :cond_26
    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedSerializedSize:I

    move v1, v0

    .line 577
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStabilityConfidence()D
    .registers 3

    .prologue
    .line 535
    iget-wide v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D

    return-wide v0
.end method

.method public getTranscript()Ljava/lang/String;
    .registers 5

    .prologue
    .line 502
    iget-object v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    .line 503
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 504
    check-cast v1, Ljava/lang/String;

    .line 512
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 506
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 508
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 510
    iput-object v2, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 512
    goto :goto_8
.end method

.method public getTranscriptBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 517
    iget-object v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    .line 518
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 519
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 521
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;

    .line 524
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

.method public hasStabilityConfidence()Z
    .registers 3

    .prologue
    .line 532
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

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

.method public hasTranscript()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 499
    iget v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

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

    .line 544
    iget-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedIsInitialized:B

    .line 545
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 548
    :goto_8
    return v1

    .line 545
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 547
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->newBuilderForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .registers 2

    .prologue
    .line 640
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->newBuilder()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->toBuilder()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .registers 2

    .prologue
    .line 644
    invoke-static {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->newBuilder(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

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
    .line 583
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

    .line 553
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getSerializedSize()I

    .line 554
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 555
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 557
    :cond_12
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 558
    iget-wide v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 560
    :cond_1d
    return-void
.end method
