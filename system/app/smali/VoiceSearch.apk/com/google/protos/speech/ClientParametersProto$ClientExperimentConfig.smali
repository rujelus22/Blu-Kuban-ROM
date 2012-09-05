.class public final Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientParametersProto.java"

# interfaces
.implements Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/ClientParametersProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientExperimentConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;


# instance fields
.field private bitField0_:I

.field private clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 669
    new-instance v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$1;

    invoke-direct {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 923
    new-instance v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 924
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-direct {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->initFields()V

    .line 925
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

    .line 627
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 698
    iput-byte v5, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedIsInitialized:B

    .line 715
    iput v5, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedSerializedSize:I

    .line 628
    invoke-direct {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->initFields()V

    .line 629
    const/4 v2, 0x0

    .line 631
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 632
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_57

    .line 633
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 634
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_6a

    .line 639
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 641
    const/4 v0, 0x1

    goto :goto_d

    .line 636
    :sswitch_1e
    const/4 v0, 0x1

    .line 637
    goto :goto_d

    .line 646
    :sswitch_20
    const/4 v3, 0x0

    .line 647
    .local v3, subBuilder:Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    iget v5, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 648
    iget-object v5, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-virtual {v5}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v3

    .line 650
    :cond_2e
    sget-object v5, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    iput-object v5, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 651
    if-eqz v3, :cond_45

    .line 652
    iget-object v5, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-virtual {v3, v5}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    .line 653
    invoke-virtual {v3}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 655
    :cond_45
    iget v5, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_5b

    goto :goto_d

    .line 660
    .end local v3           #subBuilder:Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 661
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 666
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->makeExtensionsImmutable()V

    throw v5

    :cond_57
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->makeExtensionsImmutable()V

    .line 668
    return-void

    .line 662
    :catch_5b
    move-exception v1

    .line 663
    .local v1, e:Ljava/io/IOException;
    :try_start_5c
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_52

    .line 634
    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/ClientParametersProto$1;)V
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
    .line 605
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 610
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 698
    iput-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedIsInitialized:B

    .line 715
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedSerializedSize:I

    .line 612
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/ClientParametersProto$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 613
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 698
    iput-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedIsInitialized:B

    .line 715
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedSerializedSize:I

    .line 613
    return-void
.end method

.method static synthetic access$1302(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 605
    iput-object p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 605
    iput p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .registers 1

    .prologue
    .line 617
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 696
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 697
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .registers 1

    .prologue
    .line 788
    #calls: Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->create()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->access$1100()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 791
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientParameters()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .registers 2

    .prologue
    .line 621
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 717
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedSerializedSize:I

    .line 718
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 726
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 720
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 721
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 722
    iget-object v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 725
    :cond_16
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedSerializedSize:I

    move v1, v0

    .line 726
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasClientParameters()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 689
    iget v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

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

    .line 700
    iget-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedIsInitialized:B

    .line 701
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 704
    :goto_8
    return v1

    .line 701
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 703
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->newBuilderForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .registers 2

    .prologue
    .line 789
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .registers 2

    .prologue
    .line 793
    invoke-static {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

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
    .line 732
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 709
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getSerializedSize()I

    .line 710
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 711
    iget-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 713
    :cond_f
    return-void
.end method
