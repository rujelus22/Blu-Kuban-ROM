.class public final Lcom/google/feedreader/extrpc/Client$BundleList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$BundleListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BundleList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$BundleList$Builder;,
        Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;,
        Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntryOrBuilder;,
        Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;,
        Lcom/google/feedreader/extrpc/Client$BundleList$BundleOrBuilder;
    }
.end annotation


# static fields
.field public static final BUNDLES_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList;

.field private static final serialVersionUID:J


# instance fields
.field private bundles_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;",
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
    .line 22153
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$BundleList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList;

    .line 22154
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$BundleList;->initFields()V

    .line 22155
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20248
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21829
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->memoizedIsInitialized:B

    .line 21852
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->memoizedSerializedSize:I

    .line 20249
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20243
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList;-><init>(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21829
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->memoizedIsInitialized:B

    .line 21852
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->memoizedSerializedSize:I

    .line 20250
    return-void
.end method

.method static synthetic access$27400(Lcom/google/feedreader/extrpc/Client$BundleList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20243
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$27402(Lcom/google/feedreader/extrpc/Client$BundleList;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20243
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 1

    .prologue
    .line 20254
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 21827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    .line 21828
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 1

    .prologue
    .line 21940
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27200()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$BundleList;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 21943
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21909
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    .line 21910
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 21911
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v1

    .line 21913
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21920
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    .line 21921
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 21922
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v1

    .line 21924
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21876
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21882
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21930
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21936
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21898
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21904
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21887
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21893
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBundles(I)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 21819
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    return-object p0
.end method

.method public getBundlesCount()I
    .registers 2

    .prologue
    .line 21816
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

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
            "Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21809
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    return-object v0
.end method

.method public getBundlesOrBuilder(I)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntryOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 21823
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntryOrBuilder;

    return-object p0
.end method

.method public getBundlesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21813
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 2

    .prologue
    .line 20258
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20243
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 21854
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->memoizedSerializedSize:I

    .line 21855
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 21863
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 21857
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 21858
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 21859
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 21858
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 21862
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->memoizedSerializedSize:I

    move v2, v1

    .line 21863
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 21831
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->memoizedIsInitialized:B

    .line 21832
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 21841
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 21832
    goto :goto_a

    .line 21834
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList;->getBundlesCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 21835
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList;->getBundles(I)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 21836
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->memoizedIsInitialized:B

    move v2, v4

    .line 21837
    goto :goto_a

    .line 21834
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 21840
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->memoizedIsInitialized:B

    move v2, v3

    .line 21841
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 2

    .prologue
    .line 21941
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20243
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 2

    .prologue
    .line 21945
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList;->newBuilder(Lcom/google/feedreader/extrpc/Client$BundleList;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20243
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList;->toBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

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
    .line 21870
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
    .line 21846
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList;->getSerializedSize()I

    .line 21847
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 21848
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21847
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 21850
    :cond_1d
    return-void
.end method
