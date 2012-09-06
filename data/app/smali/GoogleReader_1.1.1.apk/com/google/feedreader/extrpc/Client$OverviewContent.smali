.class public final Lcom/google/feedreader/extrpc/Client$OverviewContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$OverviewContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverviewContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;,
        Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;,
        Lcom/google/feedreader/extrpc/Client$OverviewContent$StreamOrBuilder;,
        Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;,
        Lcom/google/feedreader/extrpc/Client$OverviewContent$ItemOrBuilder;
    }
.end annotation


# static fields
.field public static final BROADCASTSTREAM_FIELD_NUMBER:I = 0x3

.field public static final COOLSTREAM_FIELD_NUMBER:I = 0x8

.field public static final KEPTUNREADSTREAM_FIELD_NUMBER:I = 0x4

.field public static final READERBLOGSTREAM_FIELD_NUMBER:I = 0x6

.field public static final READSTREAM_FIELD_NUMBER:I = 0x5

.field public static final SEGMENTSTREAMS_FIELD_NUMBER:I = 0x1

.field public static final STARREDSTREAM_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private segmentStreams_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;",
            ">;"
        }
    .end annotation
.end field

.field private starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30340
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent;

    .line 30341
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->initFields()V

    .line 30342
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27670
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 29510
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    .line 29599
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedSerializedSize:I

    .line 27671
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27665
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;-><init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27672
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29510
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    .line 29599
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedSerializedSize:I

    .line 27672
    return-void
.end method

.method static synthetic access$37300(Lcom/google/feedreader/extrpc/Client$OverviewContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27665
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$37302(Lcom/google/feedreader/extrpc/Client$OverviewContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27665
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$37402(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27665
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object p1
.end method

.method static synthetic access$37502(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27665
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object p1
.end method

.method static synthetic access$37602(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27665
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object p1
.end method

.method static synthetic access$37702(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27665
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object p1
.end method

.method static synthetic access$37802(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27665
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object p1
.end method

.method static synthetic access$37902(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27665
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object p1
.end method

.method static synthetic access$38002(Lcom/google/feedreader/extrpc/Client$OverviewContent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27665
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 1

    .prologue
    .line 27676
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 29502
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    .line 29503
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29504
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29505
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29506
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29507
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29508
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29509
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 1

    .prologue
    .line 29711
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37100()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 29714
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29680
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    .line 29681
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 29682
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v1

    .line 29684
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29691
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    .line 29692
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 29693
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v1

    .line 29695
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29647
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29653
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29701
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29707
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29669
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29675
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29658
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29664
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBroadcastStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 29458
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public getCoolStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 29498
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 2

    .prologue
    .line 27680
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27665
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public getKeptUnreadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 29468
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public getReadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 29478
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public getReaderBlogStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 29488
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public getSegmentStreams(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 3
    .parameter "index"

    .prologue
    .line 29434
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object p0
.end method

.method public getSegmentStreamsCount()I
    .registers 2

    .prologue
    .line 29431
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSegmentStreamsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29424
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    return-object v0
.end method

.method public getSegmentStreamsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$StreamOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 29438
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$StreamOrBuilder;

    return-object p0
.end method

.method public getSegmentStreamsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$StreamOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29428
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 29601
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedSerializedSize:I

    .line 29602
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 29634
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 29604
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 29605
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 29606
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 29605
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 29609
    :cond_26
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_33

    .line 29610
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 29613
    :cond_33
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_41

    .line 29614
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 29617
    :cond_41
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4e

    .line 29618
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 29621
    :cond_4e
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_5c

    .line 29622
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 29625
    :cond_5c
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6c

    .line 29626
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 29629
    :cond_6c
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7b

    .line 29630
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 29633
    :cond_7b
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedSerializedSize:I

    move v2, v1

    .line 29634
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_b
.end method

.method public getStarredStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 29448
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public hasBroadcastStream()Z
    .registers 3

    .prologue
    .line 29455
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

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

.method public hasCoolStream()Z
    .registers 3

    .prologue
    .line 29495
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

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

.method public hasKeptUnreadStream()Z
    .registers 3

    .prologue
    .line 29465
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

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

.method public hasReadStream()Z
    .registers 3

    .prologue
    .line 29475
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

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

.method public hasReaderBlogStream()Z
    .registers 3

    .prologue
    .line 29485
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

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

.method public hasStarredStream()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 29445
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29512
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    .line 29513
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 29570
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 29513
    goto :goto_a

    .line 29515
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasStarredStream()Z

    move-result v2

    if-nez v2, :cond_17

    .line 29516
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29517
    goto :goto_a

    .line 29519
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasBroadcastStream()Z

    move-result v2

    if-nez v2, :cond_21

    .line 29520
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29521
    goto :goto_a

    .line 29523
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasKeptUnreadStream()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 29524
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29525
    goto :goto_a

    .line 29527
    :cond_2b
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasReadStream()Z

    move-result v2

    if-nez v2, :cond_35

    .line 29528
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29529
    goto :goto_a

    .line 29531
    :cond_35
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasReaderBlogStream()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 29532
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29533
    goto :goto_a

    .line 29535
    :cond_3f
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasCoolStream()Z

    move-result v2

    if-nez v2, :cond_49

    .line 29536
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29537
    goto :goto_a

    .line 29539
    :cond_49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4a
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getSegmentStreamsCount()I

    move-result v2

    if-ge v0, v2, :cond_61

    .line 29540
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getSegmentStreams(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 29541
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29542
    goto :goto_a

    .line 29539
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 29545
    :cond_61
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getStarredStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 29546
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29547
    goto :goto_a

    .line 29549
    :cond_6f
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getBroadcastStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 29550
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29551
    goto :goto_a

    .line 29553
    :cond_7d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getKeptUnreadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8b

    .line 29554
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29555
    goto :goto_a

    .line 29557
    :cond_8b
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getReadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_9a

    .line 29558
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29559
    goto/16 :goto_a

    .line 29561
    :cond_9a
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getReaderBlogStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_a9

    .line 29562
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29563
    goto/16 :goto_a

    .line 29565
    :cond_a9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getCoolStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 29566
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v3

    .line 29567
    goto/16 :goto_a

    .line 29569
    :cond_b8
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->memoizedIsInitialized:B

    move v2, v4

    .line 29570
    goto/16 :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2

    .prologue
    .line 29712
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27665
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2

    .prologue
    .line 29716
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27665
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

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
    .line 29641
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 29575
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getSerializedSize()I

    .line 29576
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 29577
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29576
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 29579
    :cond_21
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2c

    .line 29580
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29582
    :cond_2c
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_38

    .line 29583
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29585
    :cond_38
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_43

    .line 29586
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29588
    :cond_43
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_4f

    .line 29589
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29591
    :cond_4f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5d

    .line 29592
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29594
    :cond_5d
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6a

    .line 29595
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29597
    :cond_6a
    return-void
.end method
