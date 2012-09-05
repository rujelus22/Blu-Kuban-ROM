.class public final Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ProtocolFeaturesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtocolFeatures"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;


# instance fields
.field private bitField0_:I

.field private dictationMode_:Z

.field private enableAck_:Z

.field private enableInProgressResponse_:Z

.field private enableInProgressSynthesizeResponse_:Z

.field private enablePartialResults_:Z

.field private enableProfanityFilterCompatibility_:Z

.field private enableRecognitionAlternates_:Z

.field private enableUnsolicitDestroy_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 707
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    .line 1275
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 1276
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->initFields()V

    .line 1277
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

    .line 638
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 813
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedIsInitialized:B

    .line 851
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedSerializedSize:I

    .line 639
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->initFields()V

    .line 640
    const/4 v2, 0x0

    .line 642
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 643
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_a4

    .line 644
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 645
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_a8

    .line 650
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 652
    const/4 v0, 0x1

    goto :goto_d

    .line 647
    :sswitch_1e
    const/4 v0, 0x1

    .line 648
    goto :goto_d

    .line 657
    :sswitch_20
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 658
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 698
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 699
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 704
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->makeExtensionsImmutable()V

    throw v4

    .line 662
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 663
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 700
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 701
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

    .line 667
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 668
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    goto :goto_d

    .line 672
    :sswitch_61
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 673
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    goto :goto_d

    .line 677
    :sswitch_6e
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 678
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    goto :goto_d

    .line 682
    :sswitch_7b
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 683
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    goto :goto_d

    .line 687
    :sswitch_88
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 688
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    goto/16 :goto_d

    .line 692
    :sswitch_96
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 693
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z
    :try_end_a2
    .catchall {:try_start_54 .. :try_end_a2} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_a2} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_a2} :catch_45

    goto/16 :goto_d

    .line 704
    .end local v3           #tag:I
    :cond_a4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->makeExtensionsImmutable()V

    .line 706
    return-void

    .line 645
    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_38
        0x18 -> :sswitch_54
        0x20 -> :sswitch_61
        0x28 -> :sswitch_6e
        0x30 -> :sswitch_7b
        0x38 -> :sswitch_88
        0x40 -> :sswitch_96
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
    .line 616
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 621
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 813
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedIsInitialized:B

    .line 851
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedSerializedSize:I

    .line 623
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 624
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 813
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedIsInitialized:B

    .line 851
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedSerializedSize:I

    .line 624
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .registers 1

    .prologue
    .line 628
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 804
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z

    .line 805
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z

    .line 806
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    .line 807
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    .line 808
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    .line 809
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    .line 810
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    .line 811
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z

    .line 812
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .registers 1

    .prologue
    .line 952
    #calls: Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->access$100()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 955
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .registers 2

    .prologue
    .line 632
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object v0
.end method

.method public getDictationMode()Z
    .registers 2

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    return v0
.end method

.method public getEnableAck()Z
    .registers 2

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z

    return v0
.end method

.method public getEnableInProgressResponse()Z
    .registers 2

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    return v0
.end method

.method public getEnableInProgressSynthesizeResponse()Z
    .registers 2

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    return v0
.end method

.method public getEnablePartialResults()Z
    .registers 2

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z

    return v0
.end method

.method public getEnableProfanityFilterCompatibility()Z
    .registers 2

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    return v0
.end method

.method public getEnableRecognitionAlternates()Z
    .registers 2

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    return v0
.end method

.method public getEnableUnsolicitDestroy()Z
    .registers 2

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 853
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedSerializedSize:I

    .line 854
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 890
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 856
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 857
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 858
    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 861
    :cond_1a
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 862
    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 865
    :cond_27
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 866
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 869
    :cond_35
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_42

    .line 870
    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 873
    :cond_42
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 874
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 877
    :cond_52
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_62

    .line 878
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 881
    :cond_62
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_72

    .line 882
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 885
    :cond_72
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_81

    .line 886
    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 889
    :cond_81
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedSerializedSize:I

    move v1, v0

    .line 890
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_b
.end method

.method public hasDictationMode()Z
    .registers 3

    .prologue
    .line 767
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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

.method public hasEnableAck()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 727
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEnableInProgressResponse()Z
    .registers 3

    .prologue
    .line 747
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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

.method public hasEnableInProgressSynthesizeResponse()Z
    .registers 3

    .prologue
    .line 777
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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

.method public hasEnablePartialResults()Z
    .registers 3

    .prologue
    .line 797
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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

.method public hasEnableProfanityFilterCompatibility()Z
    .registers 3

    .prologue
    .line 787
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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

.method public hasEnableRecognitionAlternates()Z
    .registers 3

    .prologue
    .line 757
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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

.method public hasEnableUnsolicitDestroy()Z
    .registers 3

    .prologue
    .line 737
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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

    .line 815
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedIsInitialized:B

    .line 816
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 819
    :goto_8
    return v1

    .line 816
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 818
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .registers 2

    .prologue
    .line 953
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .registers 2

    .prologue
    .line 957
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

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
    .line 896
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

    .line 824
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getSerializedSize()I

    .line 825
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 826
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 828
    :cond_13
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 829
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 831
    :cond_1e
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 832
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 834
    :cond_2a
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_35

    .line 835
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 837
    :cond_35
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 838
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 840
    :cond_43
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_51

    .line 841
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 843
    :cond_51
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5f

    .line 844
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 846
    :cond_5f
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6c

    .line 847
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 849
    :cond_6c
    return-void
.end method
