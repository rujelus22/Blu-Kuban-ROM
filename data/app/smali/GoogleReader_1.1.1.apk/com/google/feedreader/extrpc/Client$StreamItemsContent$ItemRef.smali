.class public final Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRefOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemRef"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    }
.end annotation


# static fields
.field public static final DIRECTSTREAMIDS_FIELD_NUMBER:I = 0x2

.field public static final EXTERNALID_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final RANKINGDEBUG_FIELD_NUMBER:I = 0x3

.field public static final TIMESTAMPUSEC_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private directStreamIds_:Lcom/google/protobuf/LazyStringList;

.field private externalId_:Ljava/lang/Object;

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rankingDebug_:Ljava/lang/Object;

.field private timestampUsec_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24471
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    .line 24472
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->initFields()V

    .line 24473
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23860
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23979
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->memoizedIsInitialized:B

    .line 24012
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->memoizedSerializedSize:I

    .line 23861
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23855
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;-><init>(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23862
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23979
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->memoizedIsInitialized:B

    .line 24012
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->memoizedSerializedSize:I

    .line 23862
    return-void
.end method

.method static synthetic access$29902(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23855
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->id_:J

    return-wide p1
.end method

.method static synthetic access$30000(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23855
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$30002(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23855
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$30102(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23855
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->rankingDebug_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30202(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23855
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->externalId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30302(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23855
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->timestampUsec_:J

    return-wide p1
.end method

.method static synthetic access$30402(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23855
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 1

    .prologue
    .line 23866
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    return-object v0
.end method

.method private getExternalIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23951
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->externalId_:Ljava/lang/Object;

    .line 23952
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 23953
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23955
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->externalId_:Ljava/lang/Object;

    move-object v2, v0

    .line 23958
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

.method private getRankingDebugBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23919
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->rankingDebug_:Ljava/lang/Object;

    .line 23920
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 23921
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23923
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->rankingDebug_:Ljava/lang/Object;

    move-object v2, v0

    .line 23926
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
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 23973
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->id_:J

    .line 23974
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    .line 23975
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->rankingDebug_:Ljava/lang/Object;

    .line 23976
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->externalId_:Ljava/lang/Object;

    .line 23977
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->timestampUsec_:J

    .line 23978
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 1

    .prologue
    .line 24121
    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29700()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 24124
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24090
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    .line 24091
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 24092
    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v1

    .line 24094
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24101
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    .line 24102
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 24103
    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v1

    .line 24105
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24057
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24063
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24111
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24117
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24079
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24085
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24068
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24074
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 2

    .prologue
    .line 23870
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23855
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public getDirectStreamIds(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 23895
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDirectStreamIdsCount()I
    .registers 2

    .prologue
    .line 23892
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDirectStreamIdsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23889
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 23937
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->externalId_:Ljava/lang/Object;

    .line 23938
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 23939
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 23947
    :goto_9
    return-object v4

    .line 23941
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 23943
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 23944
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 23945
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->externalId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 23947
    goto :goto_9
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 23881
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->id_:J

    return-wide v0
.end method

.method public getRankingDebug()Ljava/lang/String;
    .registers 6

    .prologue
    .line 23905
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->rankingDebug_:Ljava/lang/Object;

    .line 23906
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 23907
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 23915
    :goto_9
    return-object v4

    .line 23909
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 23911
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 23912
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 23913
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->rankingDebug_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 23915
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 24014
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->memoizedSerializedSize:I

    .line 24015
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 24044
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 24017
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 24018
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_17

    .line 24019
    iget-wide v4, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->id_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 24023
    :cond_17
    const/4 v0, 0x0

    .line 24024
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2f

    .line 24025
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 24024
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 24028
    :cond_2f
    add-int/2addr v2, v0

    .line 24029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getDirectStreamIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 24031
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4c

    .line 24032
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getRankingDebugBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 24035
    :cond_4c
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_5b

    .line 24036
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getExternalIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 24039
    :cond_5b
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6b

    .line 24040
    const/4 v4, 0x5

    iget-wide v5, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->timestampUsec_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 24043
    :cond_6b
    iput v2, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->memoizedSerializedSize:I

    move v3, v2

    .line 24044
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public getTimestampUsec()J
    .registers 3

    .prologue
    .line 23969
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->timestampUsec_:J

    return-wide v0
.end method

.method public hasExternalId()Z
    .registers 3

    .prologue
    .line 23934
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

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

    .line 23878
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasRankingDebug()Z
    .registers 3

    .prologue
    .line 23902
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

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

.method public hasTimestampUsec()Z
    .registers 3

    .prologue
    .line 23966
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23981
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->memoizedIsInitialized:B

    .line 23982
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 23989
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 23982
    goto :goto_a

    .line 23984
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 23985
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->memoizedIsInitialized:B

    move v1, v3

    .line 23986
    goto :goto_a

    .line 23988
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->memoizedIsInitialized:B

    move v1, v2

    .line 23989
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 2

    .prologue
    .line 24122
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23855
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 2

    .prologue
    .line 24126
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23855
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->toBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

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
    .line 24051
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

    .line 23994
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getSerializedSize()I

    .line 23995
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 23996
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 23998
    :cond_11
    const/4 v0, 0x0

    :goto_12
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 23999
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23998
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 24001
    :cond_26
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_34

    .line 24002
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getRankingDebugBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24004
    :cond_34
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_41

    .line 24005
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getExternalIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24007
    :cond_41
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4f

    .line 24008
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->timestampUsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 24010
    :cond_4f
    return-void
.end method
