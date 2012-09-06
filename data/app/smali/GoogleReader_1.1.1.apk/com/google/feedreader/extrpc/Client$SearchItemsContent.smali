.class public final Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$SearchItemsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchItemsContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;,
        Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;,
        Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemIdOrBuilder;
    }
.end annotation


# static fields
.field public static final RESULTS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23797
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    .line 23798
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->initFields()V

    .line 23799
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23145
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23473
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->memoizedIsInitialized:B

    .line 23496
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->memoizedSerializedSize:I

    .line 23146
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23140
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;-><init>(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23147
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23473
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->memoizedIsInitialized:B

    .line 23496
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->memoizedSerializedSize:I

    .line 23147
    return-void
.end method

.method static synthetic access$29500(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23140
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$29502(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23140
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 1

    .prologue
    .line 23151
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 23471
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    .line 23472
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 1

    .prologue
    .line 23584
    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29300()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 23587
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23553
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    .line 23554
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 23555
    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v1

    .line 23557
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23564
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    .line 23565
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 23566
    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v1

    .line 23568
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23520
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23526
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23574
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23580
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23542
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23548
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23531
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23537
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 2

    .prologue
    .line 23155
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23140
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public getResults(I)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 3
    .parameter "index"

    .prologue
    .line 23463
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    return-object p0
.end method

.method public getResultsCount()I
    .registers 2

    .prologue
    .line 23460
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23453
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    return-object v0
.end method

.method public getResultsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemIdOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 23467
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemIdOrBuilder;

    return-object p0
.end method

.method public getResultsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemIdOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23457
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 23498
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->memoizedSerializedSize:I

    .line 23499
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 23507
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 23501
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 23502
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 23503
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 23502
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 23506
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->memoizedSerializedSize:I

    move v2, v1

    .line 23507
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 23475
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->memoizedIsInitialized:B

    .line 23476
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 23485
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 23476
    goto :goto_a

    .line 23478
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->getResultsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 23479
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->getResults(I)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 23480
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->memoizedIsInitialized:B

    move v2, v4

    .line 23481
    goto :goto_a

    .line 23478
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 23484
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->memoizedIsInitialized:B

    move v2, v3

    .line 23485
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 2

    .prologue
    .line 23585
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23140
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 2

    .prologue
    .line 23589
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23140
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

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
    .line 23514
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
    .line 23490
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->getSerializedSize()I

    .line 23491
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 23492
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23491
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 23494
    :cond_1d
    return-void
.end method
