.class public final Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RecognitionResultSet.java"

# interfaces
.implements Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/multimodal/RecognitionResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResultSetProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;


# instance fields
.field private bitField0_:I

.field private confidencehighthreshold_:I

.field private confidencelowthreshold_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 707
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$1;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1134
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 1135
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->initFields()V

    .line 1136
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

    const/4 v6, 0x1

    .line 657
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 769
    iput-byte v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 798
    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 658
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->initFields()V

    .line 659
    const/4 v2, 0x0

    .line 661
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 662
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_7a

    .line 663
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 664
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_8a

    .line 669
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 671
    const/4 v0, 0x1

    goto :goto_e

    .line 666
    :sswitch_1f
    const/4 v0, 0x1

    .line 667
    goto :goto_e

    .line 676
    :sswitch_21
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_2e

    .line 677
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 678
    or-int/lit8 v2, v2, 0x1

    .line 680
    :cond_2e
    iget-object v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_40
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_39} :catch_3a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_39} :catch_5e

    goto :goto_e

    .line 695
    .end local v3           #tag:I
    :catch_3a
    move-exception v1

    .line 696
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_3b
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    .line 701
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_40
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v6, :cond_4d

    .line 702
    iget-object v5, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 704
    :cond_4d
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->makeExtensionsImmutable()V

    throw v4

    .line 684
    .restart local v3       #tag:I
    :sswitch_51
    :try_start_51
    iget v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    .line 685
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_40
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_51 .. :try_end_5d} :catch_3a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5d} :catch_5e

    goto :goto_e

    .line 697
    .end local v3           #tag:I
    :catch_5e
    move-exception v1

    .line 698
    .local v1, e:Ljava/io/IOException;
    :try_start_5f
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_40

    .line 689
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_6d
    :try_start_6d
    iget v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    .line 690
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_40
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6d .. :try_end_79} :catch_3a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_79} :catch_5e

    goto :goto_e

    .line 701
    .end local v3           #tag:I
    :cond_7a
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_86

    .line 702
    iget-object v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 704
    :cond_86
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->makeExtensionsImmutable()V

    .line 706
    return-void

    .line 664
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x10 -> :sswitch_51
        0x18 -> :sswitch_6d
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V
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
    .line 635
    invoke-direct {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 640
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 769
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 798
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 642
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 769
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 798
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 643
    return-void
.end method

.method static synthetic access$1100(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .registers 1

    .prologue
    .line 647
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 765
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 766
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    .line 767
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    .line 768
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .registers 1

    .prologue
    .line 879
    #calls: Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->access$900()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 882
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfidencehighthreshold()I
    .registers 2

    .prologue
    .line 751
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    return v0
.end method

.method public getConfidencelowthreshold()I
    .registers 2

    .prologue
    .line 761
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .registers 2

    .prologue
    .line 651
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object v0
.end method

.method public getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .registers 3
    .parameter "index"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object v0
.end method

.method public getResultsCount()I
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 800
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 801
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 817
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 803
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 804
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 805
    iget-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 808
    :cond_23
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_30

    .line 809
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 812
    :cond_30
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3e

    .line 813
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 816
    :cond_3e
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    move v2, v1

    .line 817
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public hasConfidencehighthreshold()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 748
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasConfidencelowthreshold()Z
    .registers 3

    .prologue
    .line 758
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 771
    iget-byte v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 772
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 781
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 772
    goto :goto_9

    .line 774
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getResultsCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 775
    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 776
    iput-byte v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    move v2, v3

    .line 777
    goto :goto_9

    .line 774
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 780
    :cond_24
    iput-byte v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilderForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .registers 2

    .prologue
    .line 880
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .registers 2

    .prologue
    .line 884
    invoke-static {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

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
    .line 823
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 786
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getSerializedSize()I

    .line 787
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 788
    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 790
    :cond_1c
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_27

    .line 791
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 793
    :cond_27
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_33

    .line 794
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 796
    :cond_33
    return-void
.end method
