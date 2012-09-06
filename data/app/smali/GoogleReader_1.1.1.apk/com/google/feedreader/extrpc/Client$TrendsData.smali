.class public final Lcom/google/feedreader/extrpc/Client$TrendsData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$TrendsDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrendsData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;,
        Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;,
        Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValueOrBuilder;
    }
.end annotation


# static fields
.field public static final CHARTHEIGHT_FIELD_NUMBER:I = 0x5

.field public static final CHARTJSONURL_FIELD_NUMBER:I = 0x3

.field public static final CHARTURL_FIELD_NUMBER:I = 0x2

.field public static final CHARTVALUES_FIELD_NUMBER:I = 0x1

.field public static final CHARTWIDTH_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$TrendsData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private chartHeight_:I

.field private chartJsonUrl_:Ljava/lang/Object;

.field private chartUrl_:Ljava/lang/Object;

.field private chartValues_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;",
            ">;"
        }
    .end annotation
.end field

.field private chartWidth_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25975
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TrendsData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$TrendsData;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$TrendsData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TrendsData;

    .line 25976
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TrendsData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TrendsData;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->initFields()V

    .line 25977
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 24863
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 25419
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedIsInitialized:B

    .line 25470
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedSerializedSize:I

    .line 24864
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24858
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;-><init>(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24865
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 25419
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedIsInitialized:B

    .line 25470
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedSerializedSize:I

    .line 24865
    return-void
.end method

.method static synthetic access$31800(Lcom/google/feedreader/extrpc/Client$TrendsData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24858
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$31802(Lcom/google/feedreader/extrpc/Client$TrendsData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24858
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$31902(Lcom/google/feedreader/extrpc/Client$TrendsData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24858
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32002(Lcom/google/feedreader/extrpc/Client$TrendsData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24858
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartJsonUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32102(Lcom/google/feedreader/extrpc/Client$TrendsData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24858
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartWidth_:I

    return p1
.end method

.method static synthetic access$32202(Lcom/google/feedreader/extrpc/Client$TrendsData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24858
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartHeight_:I

    return p1
.end method

.method static synthetic access$32302(Lcom/google/feedreader/extrpc/Client$TrendsData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24858
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

    return p1
.end method

.method private getChartJsonUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25381
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartJsonUrl_:Ljava/lang/Object;

    .line 25382
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 25383
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25385
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartJsonUrl_:Ljava/lang/Object;

    move-object v2, v0

    .line 25388
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

.method private getChartUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25349
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartUrl_:Ljava/lang/Object;

    .line 25350
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 25351
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25353
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartUrl_:Ljava/lang/Object;

    move-object v2, v0

    .line 25356
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

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 1

    .prologue
    .line 24869
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TrendsData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TrendsData;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    .line 25414
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartUrl_:Ljava/lang/Object;

    .line 25415
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartJsonUrl_:Ljava/lang/Object;

    .line 25416
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartWidth_:I

    .line 25417
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartHeight_:I

    .line 25418
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 1

    .prologue
    .line 25574
    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->create()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31600()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 25577
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25543
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    .line 25544
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 25545
    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v1

    .line 25547
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25554
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    .line 25555
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 25556
    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v1

    .line 25558
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25510
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25516
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25564
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25570
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25532
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25538
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25521
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25527
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChartHeight()I
    .registers 2

    .prologue
    .line 25409
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartHeight_:I

    return v0
.end method

.method public getChartJsonUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 25367
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartJsonUrl_:Ljava/lang/Object;

    .line 25368
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 25369
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 25377
    :goto_9
    return-object v4

    .line 25371
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 25373
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 25374
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 25375
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartJsonUrl_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 25377
    goto :goto_9
.end method

.method public getChartUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 25335
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartUrl_:Ljava/lang/Object;

    .line 25336
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 25337
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 25345
    :goto_9
    return-object v4

    .line 25339
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 25341
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 25342
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 25343
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartUrl_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 25345
    goto :goto_9
.end method

.method public getChartValues(I)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 3
    .parameter "index"

    .prologue
    .line 25321
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    return-object p0
.end method

.method public getChartValuesCount()I
    .registers 2

    .prologue
    .line 25318
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChartValuesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25311
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    return-object v0
.end method

.method public getChartValuesOrBuilder(I)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValueOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 25325
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValueOrBuilder;

    return-object p0
.end method

.method public getChartValuesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValueOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25315
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    return-object v0
.end method

.method public getChartWidth()I
    .registers 2

    .prologue
    .line 25399
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartWidth_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 2

    .prologue
    .line 24873
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TrendsData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TrendsData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24858
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 25472
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedSerializedSize:I

    .line 25473
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 25497
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 25475
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 25476
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 25477
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 25476
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 25480
    :cond_24
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_33

    .line 25481
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 25484
    :cond_33
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_43

    .line 25485
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartJsonUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 25488
    :cond_43
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 25489
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartWidth_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 25492
    :cond_50
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_60

    .line 25493
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartHeight_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 25496
    :cond_60
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedSerializedSize:I

    move v2, v1

    .line 25497
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public hasChartHeight()Z
    .registers 3

    .prologue
    .line 25406
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

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

.method public hasChartJsonUrl()Z
    .registers 3

    .prologue
    .line 25364
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

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

.method public hasChartUrl()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 25332
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasChartWidth()Z
    .registers 3

    .prologue
    .line 25396
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25421
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedIsInitialized:B

    .line 25422
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 25447
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 25422
    goto :goto_a

    .line 25424
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->hasChartUrl()Z

    move-result v2

    if-nez v2, :cond_17

    .line 25425
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedIsInitialized:B

    move v2, v3

    .line 25426
    goto :goto_a

    .line 25428
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->hasChartJsonUrl()Z

    move-result v2

    if-nez v2, :cond_21

    .line 25429
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedIsInitialized:B

    move v2, v3

    .line 25430
    goto :goto_a

    .line 25432
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->hasChartWidth()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 25433
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedIsInitialized:B

    move v2, v3

    .line 25434
    goto :goto_a

    .line 25436
    :cond_2b
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->hasChartHeight()Z

    move-result v2

    if-nez v2, :cond_35

    .line 25437
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedIsInitialized:B

    move v2, v3

    .line 25438
    goto :goto_a

    .line 25440
    :cond_35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_36
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartValuesCount()I

    move-result v2

    if-ge v0, v2, :cond_4d

    .line 25441
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartValues(I)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 25442
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedIsInitialized:B

    move v2, v3

    .line 25443
    goto :goto_a

    .line 25440
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 25446
    :cond_4d
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->memoizedIsInitialized:B

    move v2, v4

    .line 25447
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 2

    .prologue
    .line 25575
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24858
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 2

    .prologue
    .line 25579
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->newBuilder(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24858
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->toBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

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
    .line 25504
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 25452
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getSerializedSize()I

    .line 25453
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 25454
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25453
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 25456
    :cond_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2c

    .line 25457
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25459
    :cond_2c
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_3a

    .line 25460
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartJsonUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25462
    :cond_3a
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_45

    .line 25463
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartWidth_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 25465
    :cond_45
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_53

    .line 25466
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData;->chartHeight_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 25468
    :cond_53
    return-void
.end method
