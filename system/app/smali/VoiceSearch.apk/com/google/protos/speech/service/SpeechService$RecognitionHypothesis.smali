.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionHypothesis"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;


# instance fields
.field private bitField0_:I

.field private confidence_:D

.field private grammarId_:Ljava/lang/Object;

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sentence_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3574
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    .line 4179
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    .line 4180
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->initFields()V

    .line 4181
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
    const/4 v4, -0x1

    const/4 v6, 0x4

    .line 3519
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3693
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3733
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3520
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->initFields()V

    .line 3521
    const/4 v2, 0x0

    .line 3523
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 3524
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_87

    .line 3525
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3526
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_98

    .line 3531
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3533
    const/4 v0, 0x1

    goto :goto_e

    .line 3528
    :sswitch_1f
    const/4 v0, 0x1

    .line 3529
    goto :goto_e

    .line 3538
    :sswitch_21
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    .line 3539
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_52

    goto :goto_e

    .line 3562
    .end local v3           #tag:I
    :catch_2e
    move-exception v1

    .line 3563
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 3568
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_34
    move-exception v4

    and-int/lit8 v5, v2, 0x4

    if-ne v5, v6, :cond_41

    .line 3569
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3571
    :cond_41
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->makeExtensionsImmutable()V

    throw v4

    .line 3543
    .restart local v3       #tag:I
    :sswitch_45
    :try_start_45
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    .line 3544
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_45 .. :try_end_51} :catch_2e
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_51} :catch_52

    goto :goto_e

    .line 3564
    .end local v3           #tag:I
    :catch_52
    move-exception v1

    .line 3565
    .local v1, e:Ljava/io/IOException;
    :try_start_53
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_34

    .line 3548
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_61
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v6, :cond_6e

    .line 3549
    :try_start_65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3550
    or-int/lit8 v2, v2, 0x4

    .line 3552
    :cond_6e
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 3556
    :sswitch_7a
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    .line 3557
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_65 .. :try_end_86} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_65 .. :try_end_86} :catch_2e
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_86} :catch_52

    goto :goto_e

    .line 3568
    .end local v3           #tag:I
    :cond_87
    and-int/lit8 v4, v2, 0x4

    if-ne v4, v6, :cond_93

    .line 3569
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3571
    :cond_93
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->makeExtensionsImmutable()V

    .line 3573
    return-void

    .line 3526
    nop

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x11 -> :sswitch_45
        0x1a -> :sswitch_61
        0x22 -> :sswitch_7a
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
    .line 3497
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3502
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3693
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3733
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3504
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3505
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3693
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3733
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3505
    return-void
.end method

.method static synthetic access$4000(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .registers 1

    .prologue
    .line 3509
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 3688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3689
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    .line 3690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3691
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    .line 3692
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .registers 1

    .prologue
    .line 3818
    #calls: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->access$3800()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3821
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfidence()D
    .registers 3

    .prologue
    .line 3630
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .registers 2

    .prologue
    .line 3513
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object v0
.end method

.method public getGrammarIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3676
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    .line 3677
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3678
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3680
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    .line 3683
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

.method public getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .registers 3
    .parameter "index"

    .prologue
    .line 3647
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    return-object v0
.end method

.method public getInterpretationCount()I
    .registers 2

    .prologue
    .line 3644
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSentence()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3597
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3598
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3599
    check-cast v1, Ljava/lang/String;

    .line 3607
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3601
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3603
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3604
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3605
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3607
    goto :goto_8
.end method

.method public getSentenceBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3612
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3613
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3614
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3616
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3619
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
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3735
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3736
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 3756
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 3738
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 3739
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 3740
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3743
    :cond_1a
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_27

    .line 3744
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 3747
    :cond_27
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_41

    .line 3748
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3747
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 3751
    :cond_41
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 3752
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getGrammarIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3755
    :cond_50
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    move v2, v1

    .line 3756
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public hasConfidence()Z
    .registers 3

    .prologue
    .line 3627
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

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

.method public hasGrammarId()Z
    .registers 3

    .prologue
    .line 3658
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

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

.method public hasSentence()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3594
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

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

    .line 3695
    iget-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3696
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 3713
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 3696
    goto :goto_9

    .line 3698
    :cond_d
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasSentence()Z

    move-result v4

    if-nez v4, :cond_16

    .line 3699
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    goto :goto_a

    .line 3702
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasConfidence()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 3703
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    goto :goto_a

    .line 3706
    :cond_1f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getInterpretationCount()I

    move-result v4

    if-ge v0, v4, :cond_36

    .line 3707
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_33

    .line 3708
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    goto :goto_a

    .line 3706
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 3712
    :cond_36
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    move v3, v2

    .line 3713
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .registers 2

    .prologue
    .line 3819
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .registers 2

    .prologue
    .line 3823
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

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
    .line 3762
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3718
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSerializedSize()I

    .line 3719
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 3720
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3722
    :cond_13
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1e

    .line 3723
    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3725
    :cond_1e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 3726
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3725
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 3728
    :cond_36
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 3729
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getGrammarIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3731
    :cond_43
    return-void
.end method
