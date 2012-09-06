.class public final Lcom/google/feedreader/extrpc/Client$UserBundleList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UserBundleListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserBundleList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    }
.end annotation


# static fields
.field public static final BUNDLES_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundleList;

.field private static final serialVersionUID:J


# instance fields
.field private bundles_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UserBundle;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9603
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserBundleList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundleList;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundleList;

    .line 9604
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundleList;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->initFields()V

    .line 9605
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9242
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9279
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->memoizedIsInitialized:B

    .line 9302
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->memoizedSerializedSize:I

    .line 9243
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9237
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundleList;-><init>(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9244
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9279
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->memoizedIsInitialized:B

    .line 9302
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->memoizedSerializedSize:I

    .line 9244
    return-void
.end method

.method static synthetic access$11600(Lcom/google/feedreader/extrpc/Client$UserBundleList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9237
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11602(Lcom/google/feedreader/extrpc/Client$UserBundleList;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9237
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 1

    .prologue
    .line 9248
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundleList;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 9277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    .line 9278
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 1

    .prologue
    .line 9390
    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11400()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$UserBundleList;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 9393
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundleList;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9359
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    .line 9360
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9361
    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v1

    .line 9363
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9370
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    .line 9371
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9372
    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v1

    .line 9374
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9326
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9332
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9380
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9386
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9348
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9354
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9337
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9343
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBundles(I)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 3
    .parameter "index"

    .prologue
    .line 9269
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle;

    return-object p0
.end method

.method public getBundlesCount()I
    .registers 2

    .prologue
    .line 9266
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBundlesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UserBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9259
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    return-object v0
.end method

.method public getBundlesOrBuilder(I)Lcom/google/feedreader/extrpc/Client$UserBundleOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 9273
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundleOrBuilder;

    return-object p0
.end method

.method public getBundlesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$UserBundleOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9263
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 2

    .prologue
    .line 9252
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundleList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9237
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 9304
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->memoizedSerializedSize:I

    .line 9305
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 9313
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 9307
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 9308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 9309
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 9308
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 9312
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->memoizedSerializedSize:I

    move v2, v1

    .line 9313
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 9281
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->memoizedIsInitialized:B

    .line 9282
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 9291
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 9282
    goto :goto_a

    .line 9284
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->getBundlesCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 9285
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->getBundles(I)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$UserBundle;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 9286
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->memoizedIsInitialized:B

    move v2, v4

    .line 9287
    goto :goto_a

    .line 9284
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 9290
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->memoizedIsInitialized:B

    move v2, v3

    .line 9291
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 2

    .prologue
    .line 9391
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9237
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 2

    .prologue
    .line 9395
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->newBuilder(Lcom/google/feedreader/extrpc/Client$UserBundleList;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9237
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->toBuilder()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

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
    .line 9320
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
    .line 9296
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->getSerializedSize()I

    .line 9297
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 9298
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9297
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 9300
    :cond_1d
    return-void
.end method
