.class public final Lcom/google/feedreader/extrpc/Client$SubscriptionList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$SubscriptionListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    }
.end annotation


# static fields
.field public static final SUBSCRIPTIONS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private subscriptions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$SubscriptionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1650
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    .line 1651
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->initFields()V

    .line 1652
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1289
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1326
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->memoizedIsInitialized:B

    .line 1349
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->memoizedSerializedSize:I

    .line 1290
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1284
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;-><init>(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1291
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1326
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->memoizedIsInitialized:B

    .line 1349
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->memoizedSerializedSize:I

    .line 1291
    return-void
.end method

.method static synthetic access$1900(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/feedreader/extrpc/Client$SubscriptionList;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 1

    .prologue
    .line 1295
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    .line 1325
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 1

    .prologue
    .line 1437
    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->create()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1700()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1440
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1406
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    .line 1407
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1408
    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v1

    .line 1410
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1417
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    .line 1418
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1419
    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v1

    .line 1421
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1373
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1427
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1433
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1395
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1401
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1384
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1390
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 2

    .prologue
    .line 1299
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 1351
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->memoizedSerializedSize:I

    .line 1352
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 1360
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 1354
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 1355
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 1356
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1355
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1359
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->memoizedSerializedSize:I

    move v2, v1

    .line 1360
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public getSubscriptions(I)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 3
    .parameter "index"

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    return-object p0
.end method

.method public getSubscriptionsCount()I
    .registers 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubscriptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$SubscriptionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    return-object v0
.end method

.method public getSubscriptionsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$SubscriptionDataOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionDataOrBuilder;

    return-object p0
.end method

.method public getSubscriptionsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$SubscriptionDataOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1328
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->memoizedIsInitialized:B

    .line 1329
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 1338
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 1329
    goto :goto_a

    .line 1331
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getSubscriptionsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 1332
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getSubscriptions(I)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1333
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->memoizedIsInitialized:B

    move v2, v4

    .line 1334
    goto :goto_a

    .line 1331
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1337
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->memoizedIsInitialized:B

    move v2, v3

    .line 1338
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 2

    .prologue
    .line 1438
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 2

    .prologue
    .line 1442
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->newBuilder(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->toBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

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
    .line 1367
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
    .line 1343
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getSerializedSize()I

    .line 1344
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 1345
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1344
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1347
    :cond_1d
    return-void
.end method
