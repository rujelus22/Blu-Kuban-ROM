.class public final Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20719
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    .line 20720
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->initFields()V

    .line 20721
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20320
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20402
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->memoizedIsInitialized:B

    .line 20426
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->memoizedSerializedSize:I

    .line 20321
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20315
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;-><init>(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20322
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20402
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->memoizedIsInitialized:B

    .line 20426
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->memoizedSerializedSize:I

    .line 20322
    return-void
.end method

.method static synthetic access$25302(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20315
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25402(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20315
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25502(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20315
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 1

    .prologue
    .line 20326
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 20355
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->id_:Ljava/lang/Object;

    .line 20356
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 20357
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20359
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 20362
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
    .line 20387
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->title_:Ljava/lang/Object;

    .line 20388
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 20389
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20391
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 20394
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
    .line 20399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->id_:Ljava/lang/Object;

    .line 20400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->title_:Ljava/lang/Object;

    .line 20401
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 1

    .prologue
    .line 20518
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25100()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 20521
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20487
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    .line 20488
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 20489
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v1

    .line 20491
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20498
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    .line 20499
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 20500
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v1

    .line 20502
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20454
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20460
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20508
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20514
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20476
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20482
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20465
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20471
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 2

    .prologue
    .line 20330
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20315
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 20341
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->id_:Ljava/lang/Object;

    .line 20342
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 20343
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 20351
    :goto_9
    return-object v4

    .line 20345
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 20347
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 20348
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 20349
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 20351
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 20428
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->memoizedSerializedSize:I

    .line 20429
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 20441
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 20431
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 20432
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 20433
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20436
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 20437
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20440
    :cond_28
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->memoizedSerializedSize:I

    move v1, v0

    .line 20441
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 20373
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->title_:Ljava/lang/Object;

    .line 20374
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 20375
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 20383
    :goto_9
    return-object v4

    .line 20377
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 20379
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 20380
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 20381
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 20383
    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 20338
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->bitField0_:I

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
    .line 20370
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->bitField0_:I

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

    .line 20404
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->memoizedIsInitialized:B

    .line 20405
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 20412
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 20405
    goto :goto_a

    .line 20407
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 20408
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->memoizedIsInitialized:B

    move v1, v3

    .line 20409
    goto :goto_a

    .line 20411
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->memoizedIsInitialized:B

    move v1, v2

    .line 20412
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 2

    .prologue
    .line 20519
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20315
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 2

    .prologue
    .line 20523
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20315
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->toBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

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
    .line 20448
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

    .line 20417
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getSerializedSize()I

    .line 20418
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 20419
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 20421
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 20422
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 20424
    :cond_1f
    return-void
.end method
