.class public final Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$OverviewContent$StreamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$OverviewContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;,
        Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;,
        Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$ImageOrBuilder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IMAGE_FIELD_NUMBER:I = 0x4

.field public static final ITEMS_FIELD_NUMBER:I = 0x3

.field public static final TITLETEXT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

.field private items_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private titleText_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29412
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29413
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->initFields()V

    .line 29414
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28225
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28876
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedIsInitialized:B

    .line 28922
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedSerializedSize:I

    .line 28226
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28220
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;-><init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28227
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28876
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedIsInitialized:B

    .line 28922
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedSerializedSize:I

    .line 28227
    return-void
.end method

.method static synthetic access$36502(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28220
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36602(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28220
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->titleText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28220
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$36702(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28220
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$36802(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28220
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    return-object p1
.end method

.method static synthetic access$36902(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28220
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 1

    .prologue
    .line 28231
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28796
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->id_:Ljava/lang/Object;

    .line 28797
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 28798
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28800
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 28803
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

.method private getTitleTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28828
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->titleText_:Ljava/lang/Object;

    .line 28829
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 28830
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28832
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->titleText_:Ljava/lang/Object;

    move-object v2, v0

    .line 28835
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
    .line 28871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->id_:Ljava/lang/Object;

    .line 28872
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->titleText_:Ljava/lang/Object;

    .line 28873
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    .line 28874
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    .line 28875
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 1

    .prologue
    .line 29022
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36300()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 29025
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28991
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    .line 28992
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 28993
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    .line 28995
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29002
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    .line 29003
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 29004
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    .line 29006
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28958
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28964
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29012
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29018
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28980
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28986
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28969
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28975
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 28235
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28220
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 28782
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->id_:Ljava/lang/Object;

    .line 28783
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 28784
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 28792
    :goto_9
    return-object v4

    .line 28786
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 28788
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 28789
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 28790
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 28792
    goto :goto_9
.end method

.method public getImage()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 2

    .prologue
    .line 28867
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    return-object v0
.end method

.method public getItems(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 3
    .parameter "index"

    .prologue
    .line 28853
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    return-object p0
.end method

.method public getItemsCount()I
    .registers 2

    .prologue
    .line 28850
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28843
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    return-object v0
.end method

.method public getItemsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$ItemOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 28857
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$ItemOrBuilder;

    return-object p0
.end method

.method public getItemsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$ItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28847
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 28924
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedSerializedSize:I

    .line 28925
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 28945
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 28927
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 28928
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 28929
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 28932
    :cond_1a
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 28933
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getTitleTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 28936
    :cond_29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 28937
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 28936
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 28940
    :cond_43
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 28941
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 28944
    :cond_50
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedSerializedSize:I

    move v2, v1

    .line 28945
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getTitleText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 28814
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->titleText_:Ljava/lang/Object;

    .line 28815
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 28816
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 28824
    :goto_9
    return-object v4

    .line 28818
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 28820
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 28821
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 28822
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->titleText_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 28824
    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 28779
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasImage()Z
    .registers 3

    .prologue
    .line 28864
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I

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

.method public hasTitleText()Z
    .registers 3

    .prologue
    .line 28811
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28878
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedIsInitialized:B

    .line 28879
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 28902
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 28879
    goto :goto_a

    .line 28881
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->hasId()Z

    move-result v2

    if-nez v2, :cond_17

    .line 28882
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedIsInitialized:B

    move v2, v3

    .line 28883
    goto :goto_a

    .line 28885
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->hasTitleText()Z

    move-result v2

    if-nez v2, :cond_21

    .line 28886
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedIsInitialized:B

    move v2, v3

    .line 28887
    goto :goto_a

    .line 28889
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getItemsCount()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 28890
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getItems(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_36

    .line 28891
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedIsInitialized:B

    move v2, v3

    .line 28892
    goto :goto_a

    .line 28889
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 28895
    :cond_39
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 28896
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getImage()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 28897
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedIsInitialized:B

    move v2, v3

    .line 28898
    goto :goto_a

    .line 28901
    :cond_4d
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->memoizedIsInitialized:B

    move v2, v4

    .line 28902
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 2

    .prologue
    .line 29023
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28220
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 2

    .prologue
    .line 29027
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28220
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->toBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

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
    .line 28952
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

    .line 28907
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getSerializedSize()I

    .line 28908
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 28909
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28911
    :cond_13
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 28912
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getTitleTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28914
    :cond_20
    const/4 v0, 0x0

    move v1, v0

    :goto_22
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 28915
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28914
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 28917
    :cond_3a
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_45

    .line 28918
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28920
    :cond_45
    return-void
.end method
