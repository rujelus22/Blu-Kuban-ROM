.class public final Lcom/google/feedreader/extrpc/Client$RecommendationList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$RecommendationListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecommendationList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;,
        Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;,
        Lcom/google/feedreader/extrpc/Client$RecommendationList$RecommendationOrBuilder;
    }
.end annotation


# static fields
.field public static final RECS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$RecommendationList;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23124
    new-instance v0, Lcom/google/feedreader/extrpc/Client$RecommendationList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$RecommendationList;

    .line 23125
    sget-object v0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$RecommendationList;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->initFields()V

    .line 23126
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22174
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22800
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->memoizedIsInitialized:B

    .line 22823
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->memoizedSerializedSize:I

    .line 22175
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22169
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList;-><init>(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22176
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22800
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->memoizedIsInitialized:B

    .line 22823
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->memoizedSerializedSize:I

    .line 22176
    return-void
.end method

.method static synthetic access$28600(Lcom/google/feedreader/extrpc/Client$RecommendationList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22169
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$28602(Lcom/google/feedreader/extrpc/Client$RecommendationList;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22169
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 1

    .prologue
    .line 22180
    sget-object v0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$RecommendationList;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 22798
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    .line 22799
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 1

    .prologue
    .line 22911
    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->create()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28400()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$RecommendationList;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 22914
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$RecommendationList;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22880
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    .line 22881
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 22882
    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v1

    .line 22884
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22891
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    .line 22892
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 22893
    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v1

    .line 22895
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22847
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22853
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22901
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22907
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22869
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22875
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22858
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22864
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 2

    .prologue
    .line 22184
    sget-object v0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$RecommendationList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22169
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public getRecs(I)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 3
    .parameter "index"

    .prologue
    .line 22790
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    return-object p0
.end method

.method public getRecsCount()I
    .registers 2

    .prologue
    .line 22787
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22780
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    return-object v0
.end method

.method public getRecsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$RecommendationList$RecommendationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 22794
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$RecommendationOrBuilder;

    return-object p0
.end method

.method public getRecsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$RecommendationList$RecommendationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22784
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 22825
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->memoizedSerializedSize:I

    .line 22826
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 22834
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 22828
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 22829
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 22830
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 22829
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 22833
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->memoizedSerializedSize:I

    move v2, v1

    .line 22834
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 22802
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->memoizedIsInitialized:B

    .line 22803
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 22812
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 22803
    goto :goto_a

    .line 22805
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->getRecsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 22806
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->getRecs(I)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 22807
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->memoizedIsInitialized:B

    move v2, v4

    .line 22808
    goto :goto_a

    .line 22805
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 22811
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->memoizedIsInitialized:B

    move v2, v3

    .line 22812
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 2

    .prologue
    .line 22912
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22169
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 2

    .prologue
    .line 22916
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->newBuilder(Lcom/google/feedreader/extrpc/Client$RecommendationList;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22169
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->toBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

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
    .line 22841
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
    .line 22817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->getSerializedSize()I

    .line 22818
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 22819
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 22818
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 22821
    :cond_1d
    return-void
.end method
