.class public final Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectedAlternateSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;


# instance fields
.field private bitField0_:I

.field private length_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recognizedText_:Ljava/lang/Object;

.field private segmentUtteranceId_:Ljava/lang/Object;

.field private selectedText_:Ljava/lang/Object;

.field private start_:I

.field private unit_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2687
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    .line 3330
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    .line 3331
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->initFields()V

    .line 3332
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

    .line 2628
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2840
    iput-byte v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedIsInitialized:B

    .line 2872
    iput v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedSerializedSize:I

    .line 2629
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->initFields()V

    .line 2630
    const/4 v2, 0x0

    .line 2632
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 2633
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_88

    .line 2634
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2635
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_8c

    .line 2640
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2642
    const/4 v0, 0x1

    goto :goto_d

    .line 2637
    :sswitch_1e
    const/4 v0, 0x1

    .line 2638
    goto :goto_d

    .line 2647
    :sswitch_20
    iget v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2648
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 2678
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 2679
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 2684
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->makeExtensionsImmutable()V

    throw v4

    .line 2652
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2653
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 2680
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 2681
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

    .line 2657
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2658
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    goto :goto_d

    .line 2662
    :sswitch_61
    iget v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2663
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    goto :goto_d

    .line 2667
    :sswitch_6e
    iget v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2668
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    goto :goto_d

    .line 2672
    :sswitch_7b
    iget v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2673
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_54 .. :try_end_87} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_87} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_87} :catch_45

    goto :goto_d

    .line 2684
    .end local v3           #tag:I
    :cond_88
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->makeExtensionsImmutable()V

    .line 2686
    return-void

    .line 2635
    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_38
        0x18 -> :sswitch_54
        0x22 -> :sswitch_61
        0x2a -> :sswitch_6e
        0x3a -> :sswitch_7b
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/ClientReportProto$1;)V
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
    .line 2606
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2611
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2840
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedIsInitialized:B

    .line 2872
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedSerializedSize:I

    .line 2613
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2606
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2614
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2840
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedIsInitialized:B

    .line 2872
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedSerializedSize:I

    .line 2614
    return-void
.end method

.method static synthetic access$3702(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2606
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I

    return p1
.end method

.method static synthetic access$3802(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2606
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I

    return p1
.end method

.method static synthetic access$3902(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2606
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    return p1
.end method

.method static synthetic access$4000(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2606
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2606
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2606
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2606
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .registers 1

    .prologue
    .line 2618
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2833
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I

    .line 2834
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I

    .line 2835
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    .line 2836
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    .line 2837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    .line 2838
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:Ljava/lang/Object;

    .line 2839
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .registers 1

    .prologue
    .line 2965
    #calls: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->access$3500()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2968
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .registers 2

    .prologue
    .line 2622
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 2730
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    return v0
.end method

.method public getRecognizedTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2755
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    .line 2756
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2757
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2759
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    .line 2762
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

.method public getSegmentUtteranceIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2821
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:Ljava/lang/Object;

    .line 2822
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2823
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2825
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:Ljava/lang/Object;

    .line 2828
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

.method public getSelectedTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2788
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    .line 2789
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2790
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2792
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    .line 2795
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
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2874
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedSerializedSize:I

    .line 2875
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 2903
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 2877
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 2878
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 2879
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2882
    :cond_18
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 2883
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2886
    :cond_25
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 2887
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2890
    :cond_33
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 2891
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getRecognizedTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2894
    :cond_44
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_56

    .line 2895
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getSelectedTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2898
    :cond_56
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_68

    .line 2899
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getSegmentUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2902
    :cond_68
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedSerializedSize:I

    move v1, v0

    .line 2903
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 2720
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I

    return v0
.end method

.method public getUnit()I
    .registers 2

    .prologue
    .line 2710
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I

    return v0
.end method

.method public hasLength()Z
    .registers 3

    .prologue
    .line 2727
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

.method public hasRecognizedText()Z
    .registers 3

    .prologue
    .line 2737
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

.method public hasSegmentUtteranceId()Z
    .registers 3

    .prologue
    .line 2803
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

.method public hasSelectedText()Z
    .registers 3

    .prologue
    .line 2770
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

.method public hasStart()Z
    .registers 3

    .prologue
    .line 2717
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

.method public hasUnit()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2707
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

    .line 2842
    iget-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedIsInitialized:B

    .line 2843
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2846
    :goto_8
    return v1

    .line 2843
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2845
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .registers 2

    .prologue
    .line 2966
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->toBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .registers 2

    .prologue
    .line 2970
    invoke-static {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->newBuilder(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

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
    .line 2909
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

    .line 2851
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getSerializedSize()I

    .line 2852
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 2853
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2855
    :cond_11
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 2856
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2858
    :cond_1c
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 2859
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2861
    :cond_28
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 2862
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getRecognizedTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2864
    :cond_37
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_47

    .line 2865
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getSelectedTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2867
    :cond_47
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 2868
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getSegmentUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2870
    :cond_57
    return-void
.end method
