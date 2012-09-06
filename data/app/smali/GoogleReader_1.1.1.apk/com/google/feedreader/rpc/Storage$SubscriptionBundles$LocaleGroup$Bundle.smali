.class public final Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$BundleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bundle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;,
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;,
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$DataOrBuilder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2847
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    .line 2848
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->initFields()V

    .line 2849
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1476
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2438
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedIsInitialized:B

    .line 2477
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedSerializedSize:I

    .line 1477
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;Lcom/google/feedreader/rpc/Storage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1471
    invoke-direct {p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;-><init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1478
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2438
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedIsInitialized:B

    .line 2477
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedSerializedSize:I

    .line 1478
    return-void
.end method

.method static synthetic access$3202(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->data_:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1471
    iput p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 1

    .prologue
    .line 1482
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2380
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->id_:Ljava/lang/Object;

    .line 2381
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2382
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2384
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 2387
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
    .line 2412
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->title_:Ljava/lang/Object;

    .line 2413
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2414
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2416
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 2419
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
    .registers 2

    .prologue
    .line 2434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->id_:Ljava/lang/Object;

    .line 2435
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->title_:Ljava/lang/Object;

    .line 2436
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->data_:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    .line 2437
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;
    .registers 1

    .prologue
    .line 2573
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$3000()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2576
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2542
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    .line 2543
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2544
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$2900(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v1

    .line 2546
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2553
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    .line 2554
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2555
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$2900(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v1

    .line 2557
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2509
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$2900(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2515
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$2900(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2563
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$2900(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2569
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$2900(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2531
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$2900(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2537
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$2900(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2520
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$2900(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2526
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->access$2900(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
    .registers 2

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->data_:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 2

    .prologue
    .line 1486
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2366
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->id_:Ljava/lang/Object;

    .line 2367
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2368
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2376
    :goto_9
    return-object v4

    .line 2370
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2372
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2373
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2374
    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 2376
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 2479
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedSerializedSize:I

    .line 2480
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 2496
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 2482
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 2483
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 2484
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2487
    :cond_19
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 2488
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2491
    :cond_2a
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v4, :cond_38

    .line 2492
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->data_:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2495
    :cond_38
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedSerializedSize:I

    move v1, v0

    .line 2496
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2398
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->title_:Ljava/lang/Object;

    .line 2399
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2400
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2408
    :goto_9
    return-object v4

    .line 2402
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2404
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2405
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2406
    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 2408
    goto :goto_9
.end method

.method public hasData()Z
    .registers 3

    .prologue
    .line 2427
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2363
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->bitField0_:I

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
    .line 2395
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->bitField0_:I

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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2440
    iget-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedIsInitialized:B

    .line 2441
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 2460
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 2441
    goto :goto_a

    .line 2443
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 2444
    iput-byte v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedIsInitialized:B

    move v1, v2

    .line 2445
    goto :goto_a

    .line 2447
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->hasTitle()Z

    move-result v1

    if-nez v1, :cond_21

    .line 2448
    iput-byte v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedIsInitialized:B

    move v1, v2

    .line 2449
    goto :goto_a

    .line 2451
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->hasData()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 2452
    iput-byte v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedIsInitialized:B

    move v1, v2

    .line 2453
    goto :goto_a

    .line 2455
    :cond_2b
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getData()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_39

    .line 2456
    iput-byte v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedIsInitialized:B

    move v1, v2

    .line 2457
    goto :goto_a

    .line 2459
    :cond_39
    iput-byte v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->memoizedIsInitialized:B

    move v1, v3

    .line 2460
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;
    .registers 2

    .prologue
    .line 2574
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilderForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;
    .registers 2

    .prologue
    .line 2578
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->toBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

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
    .line 2503
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
    const/4 v2, 0x4

    .line 2465
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getSerializedSize()I

    .line 2466
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 2467
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2469
    :cond_12
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 2470
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2472
    :cond_21
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_2d

    .line 2473
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->data_:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 2475
    :cond_2d
    return-void
.end method
