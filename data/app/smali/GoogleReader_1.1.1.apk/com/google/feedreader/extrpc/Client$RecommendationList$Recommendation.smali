.class public final Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$RecommendationList$RecommendationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$RecommendationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Recommendation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    }
.end annotation


# static fields
.field public static final IMPRESSIONTIME_FIELD_NUMBER:I = 0x5

.field public static final SNIPPET_FIELD_NUMBER:I = 0x2

.field public static final STREAMID_FIELD_NUMBER:I = 0x3

.field public static final TITLE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private impressionTime_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private snippet_:Ljava/lang/Object;

.field private streamId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22769
    new-instance v0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->defaultInstance:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    .line 22770
    sget-object v0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->defaultInstance:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->initFields()V

    .line 22771
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22211
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22337
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedIsInitialized:B

    .line 22375
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedSerializedSize:I

    .line 22212
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22206
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;-><init>(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22213
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22337
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedIsInitialized:B

    .line 22375
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedSerializedSize:I

    .line 22213
    return-void
.end method

.method static synthetic access$27802(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22206
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27902(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22206
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->snippet_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28002(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22206
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->streamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28102(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22206
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->impressionTime_:J

    return-wide p1
.end method

.method static synthetic access$28202(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22206
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 1

    .prologue
    .line 22217
    sget-object v0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->defaultInstance:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    return-object v0
.end method

.method private getSnippetBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22278
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->snippet_:Ljava/lang/Object;

    .line 22279
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 22280
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22282
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->snippet_:Ljava/lang/Object;

    move-object v2, v0

    .line 22285
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

.method private getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22310
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->streamId_:Ljava/lang/Object;

    .line 22311
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 22312
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22314
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->streamId_:Ljava/lang/Object;

    move-object v2, v0

    .line 22317
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

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22246
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->title_:Ljava/lang/Object;

    .line 22247
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 22248
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22250
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 22253
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
    .registers 3

    .prologue
    .line 22332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->title_:Ljava/lang/Object;

    .line 22333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->snippet_:Ljava/lang/Object;

    .line 22334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->streamId_:Ljava/lang/Object;

    .line 22335
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->impressionTime_:J

    .line 22336
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 1

    .prologue
    .line 22475
    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->create()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27600()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 22478
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22444
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    .line 22445
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 22446
    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v1

    .line 22448
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22455
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    .line 22456
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 22457
    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v1

    .line 22459
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22411
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22417
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22465
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22471
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22433
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22439
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22422
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22428
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 2

    .prologue
    .line 22221
    sget-object v0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->defaultInstance:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22206
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionTime()J
    .registers 3

    .prologue
    .line 22328
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->impressionTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22377
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedSerializedSize:I

    .line 22378
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 22398
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 22380
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 22381
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 22382
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22385
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 22386
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getSnippetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22389
    :cond_28
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 22390
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22393
    :cond_39
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_49

    .line 22394
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->impressionTime_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 22397
    :cond_49
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedSerializedSize:I

    move v1, v0

    .line 22398
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 6

    .prologue
    .line 22264
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->snippet_:Ljava/lang/Object;

    .line 22265
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 22266
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 22274
    :goto_9
    return-object v4

    .line 22268
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 22270
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 22271
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 22272
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->snippet_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 22274
    goto :goto_9
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 22296
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->streamId_:Ljava/lang/Object;

    .line 22297
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 22298
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 22306
    :goto_9
    return-object v4

    .line 22300
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 22302
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 22303
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 22304
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->streamId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 22306
    goto :goto_9
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 22232
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->title_:Ljava/lang/Object;

    .line 22233
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 22234
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 22242
    :goto_9
    return-object v4

    .line 22236
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 22238
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 22239
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 22240
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 22242
    goto :goto_9
.end method

.method public hasImpressionTime()Z
    .registers 3

    .prologue
    .line 22325
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

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

.method public hasSnippet()Z
    .registers 3

    .prologue
    .line 22261
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 22293
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 22229
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22339
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedIsInitialized:B

    .line 22340
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 22355
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 22340
    goto :goto_a

    .line 22342
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->hasTitle()Z

    move-result v1

    if-nez v1, :cond_17

    .line 22343
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedIsInitialized:B

    move v1, v2

    .line 22344
    goto :goto_a

    .line 22346
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->hasStreamId()Z

    move-result v1

    if-nez v1, :cond_21

    .line 22347
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedIsInitialized:B

    move v1, v2

    .line 22348
    goto :goto_a

    .line 22350
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->hasImpressionTime()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 22351
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedIsInitialized:B

    move v1, v2

    .line 22352
    goto :goto_a

    .line 22354
    :cond_2b
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->memoizedIsInitialized:B

    move v1, v3

    .line 22355
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 2

    .prologue
    .line 22476
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22206
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 2

    .prologue
    .line 22480
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22206
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->toBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

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
    .line 22405
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 22360
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getSerializedSize()I

    .line 22361
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 22362
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22364
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 22365
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getSnippetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22367
    :cond_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 22368
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22370
    :cond_2e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3c

    .line 22371
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->impressionTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 22373
    :cond_3c
    return-void
.end method
