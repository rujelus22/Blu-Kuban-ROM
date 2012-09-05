.class public final Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesisVoiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynthesisVoice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;


# instance fields
.field private bitField0_:I

.field private engine_:Ljava/lang/Object;

.field private gender_:Ljava/lang/Object;

.field private language_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private sampleRate_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17627
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    .line 18287
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 18288
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->initFields()V

    .line 18289
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

    .line 17573
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17792
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    .line 17825
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedSerializedSize:I

    .line 17574
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->initFields()V

    .line 17575
    const/4 v2, 0x0

    .line 17577
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 17578
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_7b

    .line 17579
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 17580
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_80

    .line 17585
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 17587
    const/4 v0, 0x1

    goto :goto_d

    .line 17582
    :sswitch_1e
    const/4 v0, 0x1

    .line 17583
    goto :goto_d

    .line 17592
    :sswitch_20
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    .line 17593
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 17618
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 17619
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 17624
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->makeExtensionsImmutable()V

    throw v4

    .line 17597
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    .line 17598
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 17620
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 17621
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

    .line 17602
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    .line 17603
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    goto :goto_d

    .line 17607
    :sswitch_61
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    .line 17608
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    goto :goto_d

    .line 17612
    :sswitch_6e
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    .line 17613
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_54 .. :try_end_7a} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_7a} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7a} :catch_45

    goto :goto_d

    .line 17624
    .end local v3           #tag:I
    :cond_7b
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->makeExtensionsImmutable()V

    .line 17626
    return-void

    .line 17580
    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x1a -> :sswitch_54
        0x20 -> :sswitch_61
        0x2a -> :sswitch_6e
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
    .line 17551
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 17556
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17792
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    .line 17825
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedSerializedSize:I

    .line 17558
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17551
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 17559
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17792
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    .line 17825
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedSerializedSize:I

    .line 17559
    return-void
.end method

.method static synthetic access$21600(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17551
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21602(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17551
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21700(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17551
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21702(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17551
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21800(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17551
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21802(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17551
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21902(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17551
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    return p1
.end method

.method static synthetic access$22000(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17551
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$22002(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17551
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22102(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17551
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .registers 1

    .prologue
    .line 17563
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 17786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    .line 17787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    .line 17788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    .line 17789
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    .line 17790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    .line 17791
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .registers 1

    .prologue
    .line 17914
    #calls: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->access$21400()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 17917
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .registers 2

    .prologue
    .line 17567
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object v0
.end method

.method public getEngineBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17774
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    .line 17775
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17776
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17778
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    .line 17781
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

.method public getGenderBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17698
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    .line 17699
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17700
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17702
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    .line 17705
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

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17665
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    .line 17666
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17667
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17669
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    .line 17672
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17731
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    .line 17732
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17733
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17735
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    .line 17738
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

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 17749
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 17827
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedSerializedSize:I

    .line 17828
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 17852
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 17830
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 17831
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 17832
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17835
    :cond_1a
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 17836
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getGenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17839
    :cond_29
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 17840
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17843
    :cond_39
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 17844
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 17847
    :cond_48
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 17848
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getEngineBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17851
    :cond_5a
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedSerializedSize:I

    move v1, v0

    .line 17852
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasEngine()Z
    .registers 3

    .prologue
    .line 17756
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

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

.method public hasGender()Z
    .registers 3

    .prologue
    .line 17680
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

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

.method public hasLanguage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 17647
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 17713
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

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

.method public hasSampleRate()Z
    .registers 3

    .prologue
    .line 17746
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 17794
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    .line 17795
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 17802
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 17795
    goto :goto_9

    .line 17797
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasLanguage()Z

    move-result v3

    if-nez v3, :cond_16

    .line 17798
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    move v1, v2

    .line 17799
    goto :goto_9

    .line 17801
    :cond_16
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .registers 2

    .prologue
    .line 17915
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .registers 2

    .prologue
    .line 17919
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

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
    .line 17858
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

    .line 17807
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getSerializedSize()I

    .line 17808
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 17809
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17811
    :cond_13
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 17812
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getGenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17814
    :cond_20
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 17815
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17817
    :cond_2e
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 17818
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17820
    :cond_3b
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 17821
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getEngineBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17823
    :cond_4b
    return-void
.end method
