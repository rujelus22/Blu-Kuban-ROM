.class public final Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamDetailsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamDetailsContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;,
        Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;,
        Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChartOrBuilder;
    }
.end annotation


# static fields
.field public static final FAILEDCRAWLTIMEUSEC_FIELD_NUMBER:I = 0x5

.field public static final FEEDURL_FIELD_NUMBER:I = 0x8

.field public static final LASTFAILUREWASPARSEFAILURE_FIELD_NUMBER:I = 0x6

.field public static final STREAMDETAILSERROR_FIELD_NUMBER:I = 0x1

.field public static final SUBSCRIBERS_FIELD_NUMBER:I = 0x2

.field public static final SUCCESSFULCRAWLTIMEUSEC_FIELD_NUMBER:I = 0x4

.field public static final TRENDSCHARTS_FIELD_NUMBER:I = 0x7

.field public static final VELOCITY_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private failedCrawlTimeUsec_:J

.field private feedUrl_:Ljava/lang/Object;

.field private lastFailureWasParseFailure_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private streamDetailsError_:Z

.field private subscribers_:Ljava/lang/Object;

.field private successfulCrawlTimeUsec_:J

.field private trendsCharts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;",
            ">;"
        }
    .end annotation
.end field

.field private velocity_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27297
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    .line 27298
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->initFields()V

    .line 27299
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 26024
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26632
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->memoizedIsInitialized:B

    .line 26676
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->memoizedSerializedSize:I

    .line 26025
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26019
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;-><init>(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26632
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->memoizedIsInitialized:B

    .line 26676
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->memoizedSerializedSize:I

    .line 26026
    return-void
.end method

.method static synthetic access$33302(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26019
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->streamDetailsError_:Z

    return p1
.end method

.method static synthetic access$33402(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26019
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->subscribers_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33502(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26019
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->velocity_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33602(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26019
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->successfulCrawlTimeUsec_:J

    return-wide p1
.end method

.method static synthetic access$33702(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26019
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->failedCrawlTimeUsec_:J

    return-wide p1
.end method

.method static synthetic access$33802(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26019
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->lastFailureWasParseFailure_:Z

    return p1
.end method

.method static synthetic access$33900(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26019
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$33902(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26019
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$34002(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26019
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->feedUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34102(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26019
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 1

    .prologue
    .line 26030
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    return-object v0
.end method

.method private getFeedUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26611
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->feedUrl_:Ljava/lang/Object;

    .line 26612
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 26613
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26615
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->feedUrl_:Ljava/lang/Object;

    move-object v2, v0

    .line 26618
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getSubscribersBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26496
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->subscribers_:Ljava/lang/Object;

    .line 26497
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 26498
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26500
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->subscribers_:Ljava/lang/Object;

    move-object v2, v0

    .line 26503
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getVelocityBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26528
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->velocity_:Ljava/lang/Object;

    .line 26529
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 26530
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26532
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->velocity_:Ljava/lang/Object;

    move-object v2, v0

    .line 26535
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private initFields()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 26623
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->streamDetailsError_:Z

    .line 26624
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->subscribers_:Ljava/lang/Object;

    .line 26625
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->velocity_:Ljava/lang/Object;

    .line 26626
    iput-wide v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->successfulCrawlTimeUsec_:J

    .line 26627
    iput-wide v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->failedCrawlTimeUsec_:J

    .line 26628
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->lastFailureWasParseFailure_:Z

    .line 26629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    .line 26630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->feedUrl_:Ljava/lang/Object;

    .line 26631
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 1

    .prologue
    .line 26792
    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33100()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 26795
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26761
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    .line 26762
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 26763
    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v1

    .line 26765
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26772
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    .line 26773
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 26774
    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v1

    .line 26776
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26728
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26734
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26782
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26788
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26750
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26756
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26739
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26745
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 2

    .prologue
    .line 26034
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26019
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public getFailedCrawlTimeUsec()J
    .registers 3

    .prologue
    .line 26556
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->failedCrawlTimeUsec_:J

    return-wide v0
.end method

.method public getFeedUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 26597
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->feedUrl_:Ljava/lang/Object;

    .line 26598
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 26599
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 26607
    :goto_9
    return-object v4

    .line 26601
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 26603
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 26604
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 26605
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->feedUrl_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 26607
    goto :goto_9
.end method

.method public getLastFailureWasParseFailure()Z
    .registers 2

    .prologue
    .line 26566
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->lastFailureWasParseFailure_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 26678
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->memoizedSerializedSize:I

    .line 26679
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 26715
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 26681
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 26682
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 26683
    iget-boolean v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->streamDetailsError_:Z

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 26686
    :cond_1a
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 26687
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getSubscribersBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 26690
    :cond_29
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_39

    .line 26691
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getVelocityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 26694
    :cond_39
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_46

    .line 26695
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->successfulCrawlTimeUsec_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 26698
    :cond_46
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_56

    .line 26699
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->failedCrawlTimeUsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 26702
    :cond_56
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_66

    .line 26703
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->lastFailureWasParseFailure_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 26706
    :cond_66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_67
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_80

    .line 26707
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 26706
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 26710
    :cond_80
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_91

    .line 26711
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getFeedUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 26714
    :cond_91
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->memoizedSerializedSize:I

    move v2, v1

    .line 26715
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getStreamDetailsError()Z
    .registers 2

    .prologue
    .line 26472
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->streamDetailsError_:Z

    return v0
.end method

.method public getSubscribers()Ljava/lang/String;
    .registers 6

    .prologue
    .line 26482
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->subscribers_:Ljava/lang/Object;

    .line 26483
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 26484
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 26492
    :goto_9
    return-object v4

    .line 26486
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 26488
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 26489
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 26490
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->subscribers_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 26492
    goto :goto_9
.end method

.method public getSuccessfulCrawlTimeUsec()J
    .registers 3

    .prologue
    .line 26546
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->successfulCrawlTimeUsec_:J

    return-wide v0
.end method

.method public getTrendsCharts(I)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 3
    .parameter "index"

    .prologue
    .line 26583
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    return-object p0
.end method

.method public getTrendsChartsCount()I
    .registers 2

    .prologue
    .line 26580
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTrendsChartsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26573
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    return-object v0
.end method

.method public getTrendsChartsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChartOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 26587
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChartOrBuilder;

    return-object p0
.end method

.method public getTrendsChartsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChartOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26577
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    return-object v0
.end method

.method public getVelocity()Ljava/lang/String;
    .registers 6

    .prologue
    .line 26514
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->velocity_:Ljava/lang/Object;

    .line 26515
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 26516
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 26524
    :goto_9
    return-object v4

    .line 26518
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 26520
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 26521
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 26522
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->velocity_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 26524
    goto :goto_9
.end method

.method public hasFailedCrawlTimeUsec()Z
    .registers 3

    .prologue
    .line 26553
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

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

.method public hasFeedUrl()Z
    .registers 3

    .prologue
    .line 26594
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

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

.method public hasLastFailureWasParseFailure()Z
    .registers 3

    .prologue
    .line 26563
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

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

.method public hasStreamDetailsError()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 26469
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSubscribers()Z
    .registers 3

    .prologue
    .line 26479
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

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

.method public hasSuccessfulCrawlTimeUsec()Z
    .registers 3

    .prologue
    .line 26543
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

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

.method public hasVelocity()Z
    .registers 3

    .prologue
    .line 26511
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 26634
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->memoizedIsInitialized:B

    .line 26635
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 26644
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 26635
    goto :goto_a

    .line 26637
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getTrendsChartsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 26638
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getTrendsCharts(I)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 26639
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->memoizedIsInitialized:B

    move v2, v4

    .line 26640
    goto :goto_a

    .line 26637
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 26643
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->memoizedIsInitialized:B

    move v2, v3

    .line 26644
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 2

    .prologue
    .line 26793
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26019
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 2

    .prologue
    .line 26797
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26019
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

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
    .line 26722
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter
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

    .line 26649
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getSerializedSize()I

    .line 26650
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 26651
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->streamDetailsError_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 26653
    :cond_13
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 26654
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getSubscribersBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 26656
    :cond_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 26657
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getVelocityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 26659
    :cond_2e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_39

    .line 26660
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->successfulCrawlTimeUsec_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26662
    :cond_39
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_47

    .line 26663
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->failedCrawlTimeUsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26665
    :cond_47
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_55

    .line 26666
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->lastFailureWasParseFailure_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 26668
    :cond_55
    const/4 v0, 0x0

    move v1, v0

    :goto_57
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6f

    .line 26669
    const/4 v2, 0x7

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26668
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57

    .line 26671
    :cond_6f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7e

    .line 26672
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getFeedUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 26674
    :cond_7e
    return-void
.end method
