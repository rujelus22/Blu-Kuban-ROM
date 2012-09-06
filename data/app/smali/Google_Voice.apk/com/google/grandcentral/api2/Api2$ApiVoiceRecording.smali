.class public final Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiVoiceRecordingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiVoiceRecording"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_BYTES_FIELD_NUMBER:I = 0x2

.field public static final BYTES_REMAINING_FIELD_NUMBER:I = 0x8

.field public static final CALL_ID_FIELD_NUMBER:I = 0x1

.field public static final CHUNK_SIZE_FIELD_NUMBER:I = 0x5

.field public static final END_OFFSET_FIELD_NUMBER:I = 0x7

.field public static final FORMAT_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_FIELD_NUMBER:I = 0x4

.field public static final START_OFFSET_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;


# instance fields
.field private audioBytes_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private bytesRemaining_:J

.field private callId_:Ljava/lang/Object;

.field private chunkSize_:J

.field private endOffset_:J

.field private format_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private size_:J

.field private startOffset_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21624
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    .line 22284
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    .line 22285
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->initFields()V

    .line 22286
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

    .line 21555
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21753
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedIsInitialized:B

    .line 21807
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedSerializedSize:I

    .line 21556
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->initFields()V

    .line 21557
    const/4 v2, 0x0

    .line 21559
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 21560
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_a4

    .line 21561
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 21562
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_a8

    .line 21567
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 21569
    const/4 v0, 0x1

    goto :goto_d

    .line 21564
    :sswitch_1e
    const/4 v0, 0x1

    .line 21565
    goto :goto_d

    .line 21574
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    .line 21575
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->callId_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 21615
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 21616
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 21621
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->makeExtensionsImmutable()V

    throw v4

    .line 21579
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    .line 21580
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->audioBytes_:Lcom/google/protobuf/ByteString;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 21617
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 21618
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

    .line 21584
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    .line 21585
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->format_:I

    goto :goto_d

    .line 21589
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    .line 21590
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->size_:J

    goto :goto_d

    .line 21594
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    .line 21595
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->chunkSize_:J

    goto :goto_d

    .line 21599
    :sswitch_7b
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    .line 21600
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->startOffset_:J

    goto :goto_d

    .line 21604
    :sswitch_88
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    .line 21605
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->endOffset_:J

    goto/16 :goto_d

    .line 21609
    :sswitch_96
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    .line 21610
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bytesRemaining_:J
    :try_end_a2
    .catchall {:try_start_54 .. :try_end_a2} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_a2} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_a2} :catch_45

    goto/16 :goto_d

    .line 21621
    .end local v3           #tag:I
    :cond_a4
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->makeExtensionsImmutable()V

    .line 21623
    return-void

    .line 21562
    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x18 -> :sswitch_54
        0x20 -> :sswitch_61
        0x28 -> :sswitch_6e
        0x30 -> :sswitch_7b
        0x38 -> :sswitch_88
        0x40 -> :sswitch_96
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
    .line 21533
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 21538
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21753
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedIsInitialized:B

    .line 21807
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedSerializedSize:I

    .line 21540
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21533
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 21541
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21753
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedIsInitialized:B

    .line 21807
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedSerializedSize:I

    .line 21541
    return-void
.end method

.method static synthetic access$25900(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21533
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->callId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$25902(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21533
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->callId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26002(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21533
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->audioBytes_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$26102(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21533
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->format_:I

    return p1
.end method

.method static synthetic access$26202(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21533
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->size_:J

    return-wide p1
.end method

.method static synthetic access$26302(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21533
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->chunkSize_:J

    return-wide p1
.end method

.method static synthetic access$26402(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21533
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->startOffset_:J

    return-wide p1
.end method

.method static synthetic access$26502(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21533
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->endOffset_:J

    return-wide p1
.end method

.method static synthetic access$26602(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21533
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bytesRemaining_:J

    return-wide p1
.end method

.method static synthetic access$26702(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21533
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 1

    .prologue
    .line 21545
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 21744
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->callId_:Ljava/lang/Object;

    .line 21745
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->audioBytes_:Lcom/google/protobuf/ByteString;

    .line 21746
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->format_:I

    .line 21747
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->size_:J

    .line 21748
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->chunkSize_:J

    .line 21749
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->startOffset_:J

    .line 21750
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->endOffset_:J

    .line 21751
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bytesRemaining_:J

    .line 21752
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 1

    .prologue
    .line 21908
    #calls: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->access$25700()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 21911
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21888
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21894
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21858
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21864
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21899
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21905
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21878
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21884
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21868
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21874
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method


# virtual methods
.method public getAudioBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 21680
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->audioBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBytesRemaining()J
    .registers 3

    .prologue
    .line 21740
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bytesRemaining_:J

    return-wide v0
.end method

.method public getCallId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 21647
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->callId_:Ljava/lang/Object;

    .line 21648
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 21649
    check-cast v1, Ljava/lang/String;

    .line 21657
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 21651
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 21653
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 21654
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 21655
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->callId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 21657
    goto :goto_8
.end method

.method public getCallIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 21662
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->callId_:Ljava/lang/Object;

    .line 21663
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 21664
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21666
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->callId_:Ljava/lang/Object;

    .line 21669
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

.method public getChunkSize()J
    .registers 3

    .prologue
    .line 21710
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->chunkSize_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 2

    .prologue
    .line 21549
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21533
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v0

    return-object v0
.end method

.method public getEndOffset()J
    .registers 3

    .prologue
    .line 21730
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->endOffset_:J

    return-wide v0
.end method

.method public getFormat()I
    .registers 2

    .prologue
    .line 21690
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->format_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21636
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21809
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedSerializedSize:I

    .line 21810
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 21846
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 21812
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 21813
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 21814
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getCallIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21817
    :cond_1c
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 21818
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->audioBytes_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21821
    :cond_29
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 21822
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->format_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 21825
    :cond_37
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_44

    .line 21826
    iget-wide v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->size_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21829
    :cond_44
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 21830
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->chunkSize_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21833
    :cond_54
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_64

    .line 21834
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->startOffset_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21837
    :cond_64
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_74

    .line 21838
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->endOffset_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21841
    :cond_74
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_83

    .line 21842
    iget-wide v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bytesRemaining_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21845
    :cond_83
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedSerializedSize:I

    move v1, v0

    .line 21846
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_b
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 21700
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->size_:J

    return-wide v0
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 21720
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->startOffset_:J

    return-wide v0
.end method

.method public hasAudioBytes()Z
    .registers 3

    .prologue
    .line 21677
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

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

.method public hasBytesRemaining()Z
    .registers 3

    .prologue
    .line 21737
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

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

.method public hasCallId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21644
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasChunkSize()Z
    .registers 3

    .prologue
    .line 21707
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

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

.method public hasEndOffset()Z
    .registers 3

    .prologue
    .line 21727
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

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

.method public hasFormat()Z
    .registers 3

    .prologue
    .line 21687
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

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

.method public hasSize()Z
    .registers 3

    .prologue
    .line 21697
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

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

.method public hasStartOffset()Z
    .registers 3

    .prologue
    .line 21717
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21755
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedIsInitialized:B

    .line 21756
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 21775
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 21756
    goto :goto_9

    .line 21758
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasCallId()Z

    move-result v3

    if-nez v3, :cond_16

    .line 21759
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedIsInitialized:B

    goto :goto_a

    .line 21762
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasAudioBytes()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 21763
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedIsInitialized:B

    goto :goto_a

    .line 21766
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasFormat()Z

    move-result v3

    if-nez v3, :cond_28

    .line 21767
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedIsInitialized:B

    goto :goto_a

    .line 21770
    :cond_28
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasSize()Z

    move-result v3

    if-nez v3, :cond_31

    .line 21771
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedIsInitialized:B

    goto :goto_a

    .line 21774
    :cond_31
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->memoizedIsInitialized:B

    move v2, v1

    .line 21775
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 2

    .prologue
    .line 21909
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21533
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 2

    .prologue
    .line 21913
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21533
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

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
    .line 21852
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

    .line 21780
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getSerializedSize()I

    .line 21781
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 21782
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getCallIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21784
    :cond_15
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 21785
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->audioBytes_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21787
    :cond_20
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 21788
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->format_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21790
    :cond_2c
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_37

    .line 21791
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->size_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21793
    :cond_37
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 21794
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->chunkSize_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21796
    :cond_45
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_53

    .line 21797
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->startOffset_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21799
    :cond_53
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_61

    .line 21800
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->endOffset_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21802
    :cond_61
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6e

    .line 21803
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bytesRemaining_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21805
    :cond_6e
    return-void
.end method
