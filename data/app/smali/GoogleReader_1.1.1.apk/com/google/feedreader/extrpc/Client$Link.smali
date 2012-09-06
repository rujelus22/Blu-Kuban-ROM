.class public final Lcom/google/feedreader/extrpc/Client$Link;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$Link$Builder;,
        Lcom/google/feedreader/extrpc/Client$Link$Relation;
    }
.end annotation


# static fields
.field public static final LANGUAGE_FIELD_NUMBER:I = 0x5

.field public static final LENGTH_FIELD_NUMBER:I = 0x4

.field public static final RELATION_FIELD_NUMBER:I = 0x1

.field public static final TITLE_FIELD_NUMBER:I = 0x6

.field public static final TITLE_LANGUAGE_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$Link;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private language_:Ljava/lang/Object;

.field private length_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

.field private titleLanguage_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3041
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Link;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$Link;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Link;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Link;

    .line 3042
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Link;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Link;->initFields()V

    .line 3043
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$Link$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2209
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2462
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->memoizedIsInitialized:B

    .line 2501
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->memoizedSerializedSize:I

    .line 2210
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$Link$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2204
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$Link;-><init>(Lcom/google/feedreader/extrpc/Client$Link$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2211
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2462
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->memoizedIsInitialized:B

    .line 2501
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->memoizedSerializedSize:I

    .line 2211
    return-void
.end method

.method static synthetic access$3002(Lcom/google/feedreader/extrpc/Client$Link;Lcom/google/feedreader/extrpc/Client$Link$Relation;)Lcom/google/feedreader/extrpc/Client$Link$Relation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/feedreader/extrpc/Client$Link;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/feedreader/extrpc/Client$Link;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/feedreader/extrpc/Client$Link;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2204
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$Link;->length_:J

    return-wide p1
.end method

.method static synthetic access$3402(Lcom/google/feedreader/extrpc/Client$Link;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/feedreader/extrpc/Client$Link;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/feedreader/extrpc/Client$Link;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link;->titleLanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/feedreader/extrpc/Client$Link;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2204
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Link;
    .registers 1

    .prologue
    .line 2215
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Link;

    return-object v0
.end method

.method private getLanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2378
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Link;->language_:Ljava/lang/Object;

    .line 2379
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2380
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2382
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->language_:Ljava/lang/Object;

    move-object v2, v0

    .line 2385
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
    .line 2410
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Link;->title_:Ljava/lang/Object;

    .line 2411
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2412
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2414
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 2417
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

.method private getTitleLanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2442
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Link;->titleLanguage_:Ljava/lang/Object;

    .line 2443
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2444
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2446
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->titleLanguage_:Ljava/lang/Object;

    move-object v2, v0

    .line 2449
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

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2336
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Link;->type_:Ljava/lang/Object;

    .line 2337
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2338
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2340
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->type_:Ljava/lang/Object;

    move-object v2, v0

    .line 2343
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2304
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Link;->url_:Ljava/lang/Object;

    .line 2305
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2306
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2308
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->url_:Ljava/lang/Object;

    move-object v2, v0

    .line 2311
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
    .line 2454
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->ALTERNATE:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->url_:Ljava/lang/Object;

    .line 2456
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->type_:Ljava/lang/Object;

    .line 2457
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->length_:J

    .line 2458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->language_:Ljava/lang/Object;

    .line 2459
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->title_:Ljava/lang/Object;

    .line 2460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->titleLanguage_:Ljava/lang/Object;

    .line 2461
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 1

    .prologue
    .line 2613
    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->create()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2800()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2616
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2582
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    .line 2583
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Link$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2584
    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    .line 2586
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2593
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    .line 2594
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Link$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2595
    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    .line 2597
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2549
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2555
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2603
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2609
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2571
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2577
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2560
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2566
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Link;
    .registers 2

    .prologue
    .line 2219
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Link;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2364
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->language_:Ljava/lang/Object;

    .line 2365
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2366
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2374
    :goto_9
    return-object v4

    .line 2368
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2370
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2371
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2372
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link;->language_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 2374
    goto :goto_9
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 2354
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->length_:J

    return-wide v0
.end method

.method public getRelation()Lcom/google/feedreader/extrpc/Client$Link$Relation;
    .registers 2

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2503
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->memoizedSerializedSize:I

    .line 2504
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 2536
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 2506
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 2507
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 2508
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Link$Relation;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2511
    :cond_1c
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 2512
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2515
    :cond_2b
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 2516
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2519
    :cond_3b
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 2520
    iget-wide v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->length_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2523
    :cond_4a
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5c

    .line 2524
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2527
    :cond_5c
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6e

    .line 2528
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2531
    :cond_6e
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_80

    .line 2532
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getTitleLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2535
    :cond_80
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->memoizedSerializedSize:I

    move v1, v0

    .line 2536
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2396
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->title_:Ljava/lang/Object;

    .line 2397
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2398
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2406
    :goto_9
    return-object v4

    .line 2400
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2402
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2403
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2404
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 2406
    goto :goto_9
.end method

.method public getTitleLanguage()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2428
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->titleLanguage_:Ljava/lang/Object;

    .line 2429
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2430
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2438
    :goto_9
    return-object v4

    .line 2432
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2434
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2435
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2436
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link;->titleLanguage_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 2438
    goto :goto_9
.end method

.method public getType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2322
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->type_:Ljava/lang/Object;

    .line 2323
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2324
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2332
    :goto_9
    return-object v4

    .line 2326
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2328
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2329
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2330
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link;->type_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 2332
    goto :goto_9
.end method

.method public getUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2290
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->url_:Ljava/lang/Object;

    .line 2291
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2292
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2300
    :goto_9
    return-object v4

    .line 2294
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2296
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2297
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2298
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link;->url_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 2300
    goto :goto_9
.end method

.method public hasLanguage()Z
    .registers 3

    .prologue
    .line 2361
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

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

.method public hasLength()Z
    .registers 3

    .prologue
    .line 2351
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

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

.method public hasRelation()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2277
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 2393
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

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

.method public hasTitleLanguage()Z
    .registers 3

    .prologue
    .line 2425
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 2319
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 2287
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2464
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->memoizedIsInitialized:B

    .line 2465
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 2472
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 2465
    goto :goto_a

    .line 2467
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link;->hasUrl()Z

    move-result v1

    if-nez v1, :cond_17

    .line 2468
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Link;->memoizedIsInitialized:B

    move v1, v3

    .line 2469
    goto :goto_a

    .line 2471
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Link;->memoizedIsInitialized:B

    move v1, v2

    .line 2472
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 2

    .prologue
    .line 2614
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 2

    .prologue
    .line 2618
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder(Lcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link;->toBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

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
    .line 2543
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2477
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getSerializedSize()I

    .line 2478
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 2479
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Link$Relation;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2481
    :cond_15
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 2482
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2484
    :cond_22
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 2485
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2487
    :cond_30
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 2488
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->length_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2490
    :cond_3d
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4d

    .line 2491
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2493
    :cond_4d
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5d

    .line 2494
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2496
    :cond_5d
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6d

    .line 2497
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link;->getTitleLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2499
    :cond_6d
    return-void
.end method
