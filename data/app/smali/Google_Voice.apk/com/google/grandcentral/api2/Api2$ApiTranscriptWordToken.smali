.class public final Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordTokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiTranscriptWordToken"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x4

.field public static final END_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_FIELD_NUMBER:I = 0x2

.field public static final WORD_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private end_:F

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private start_:F

.field private word_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15602
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    .line 16043
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    .line 16044
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->initFields()V

    .line 16045
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

    .line 15553
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15687
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedIsInitialized:B

    .line 15717
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedSerializedSize:I

    .line 15554
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->initFields()V

    .line 15555
    const/4 v2, 0x0

    .line 15557
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 15558
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_6e

    .line 15559
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 15560
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_72

    .line 15565
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 15567
    const/4 v0, 0x1

    goto :goto_d

    .line 15562
    :sswitch_1e
    const/4 v0, 0x1

    .line 15563
    goto :goto_d

    .line 15572
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    .line 15573
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->word_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 15593
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 15594
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 15599
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->makeExtensionsImmutable()V

    throw v4

    .line 15577
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    .line 15578
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->start_:F
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 15595
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 15596
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

    .line 15582
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    .line 15583
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->end_:F

    goto :goto_d

    .line 15587
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    .line 15588
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->confidence_:F
    :try_end_6d
    .catchall {:try_start_54 .. :try_end_6d} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_6d} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_6d} :catch_45

    goto :goto_d

    .line 15599
    .end local v3           #tag:I
    :cond_6e
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->makeExtensionsImmutable()V

    .line 15601
    return-void

    .line 15560
    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x15 -> :sswitch_38
        0x1d -> :sswitch_54
        0x25 -> :sswitch_61
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
    .line 15531
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15536
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15687
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedIsInitialized:B

    .line 15717
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedSerializedSize:I

    .line 15538
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15531
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15539
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15687
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedIsInitialized:B

    .line 15717
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedSerializedSize:I

    .line 15539
    return-void
.end method

.method static synthetic access$19000(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15531
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->word_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$19002(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15531
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->word_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19102(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15531
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->start_:F

    return p1
.end method

.method static synthetic access$19202(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15531
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->end_:F

    return p1
.end method

.method static synthetic access$19302(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15531
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->confidence_:F

    return p1
.end method

.method static synthetic access$19402(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15531
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 1

    .prologue
    .line 15543
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->word_:Ljava/lang/Object;

    .line 15683
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->start_:F

    .line 15684
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->end_:F

    .line 15685
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->confidence_:F

    .line 15686
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 1

    .prologue
    .line 15802
    #calls: Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->access$18800()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 15805
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15782
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15788
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15752
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15758
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15793
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15799
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15772
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15778
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15762
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15768
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method


# virtual methods
.method public getConfidence()F
    .registers 2

    .prologue
    .line 15678
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->confidence_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 2

    .prologue
    .line 15547
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15531
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()F
    .registers 2

    .prologue
    .line 15668
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->end_:F

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15614
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 15719
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedSerializedSize:I

    .line 15720
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 15740
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 15722
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 15723
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 15724
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getWordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15727
    :cond_1a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 15728
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->start_:F

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 15731
    :cond_27
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 15732
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->end_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 15735
    :cond_35
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 15736
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->confidence_:F

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 15739
    :cond_44
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedSerializedSize:I

    move v1, v0

    .line 15740
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStart()F
    .registers 2

    .prologue
    .line 15658
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->start_:F

    return v0
.end method

.method public getWord()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15625
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->word_:Ljava/lang/Object;

    .line 15626
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15627
    check-cast v1, Ljava/lang/String;

    .line 15635
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 15629
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15631
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15632
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15633
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->word_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 15635
    goto :goto_8
.end method

.method public getWordBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15640
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->word_:Ljava/lang/Object;

    .line 15641
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15642
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15644
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->word_:Ljava/lang/Object;

    .line 15647
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

.method public hasConfidence()Z
    .registers 3

    .prologue
    .line 15675
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

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

.method public hasEnd()Z
    .registers 3

    .prologue
    .line 15665
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

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

.method public hasStart()Z
    .registers 3

    .prologue
    .line 15655
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

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

.method public hasWord()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15622
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 15689
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedIsInitialized:B

    .line 15690
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 15697
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 15690
    goto :goto_9

    .line 15692
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->hasWord()Z

    move-result v3

    if-nez v3, :cond_16

    .line 15693
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedIsInitialized:B

    move v1, v2

    .line 15694
    goto :goto_9

    .line 15696
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 2

    .prologue
    .line 15803
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15531
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 2

    .prologue
    .line 15807
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15531
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

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
    .line 15746
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

    .line 15702
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getSerializedSize()I

    .line 15703
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 15704
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getWordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15706
    :cond_13
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 15707
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->start_:F

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 15709
    :cond_1e
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 15710
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->end_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 15712
    :cond_2a
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 15713
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->confidence_:F

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 15715
    :cond_37
    return-void
.end method
