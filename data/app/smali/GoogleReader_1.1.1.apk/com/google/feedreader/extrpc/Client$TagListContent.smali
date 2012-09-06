.class public final Lcom/google/feedreader/extrpc/Client$TagListContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$TagListContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagListContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;,
        Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;,
        Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntryOrBuilder;
    }
.end annotation


# static fields
.field public static final TAGS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$TagListContent;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private tags_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20227
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TagListContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$TagListContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$TagListContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TagListContent;

    .line 20228
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TagListContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TagListContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent;->initFields()V

    .line 20229
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19199
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19903
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->memoizedIsInitialized:B

    .line 19926
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->memoizedSerializedSize:I

    .line 19200
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19194
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent;-><init>(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19201
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19903
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->memoizedIsInitialized:B

    .line 19926
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->memoizedSerializedSize:I

    .line 19201
    return-void
.end method

.method static synthetic access$24900(Lcom/google/feedreader/extrpc/Client$TagListContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19194
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$24902(Lcom/google/feedreader/extrpc/Client$TagListContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19194
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 1

    .prologue
    .line 19205
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TagListContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TagListContent;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 19901
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    .line 19902
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 1

    .prologue
    .line 20014
    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24700()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$TagListContent;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 20017
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TagListContent;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19983
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    .line 19984
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 19985
    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v1

    .line 19987
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19994
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    .line 19995
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 19996
    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v1

    .line 19998
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19950
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19956
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20004
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20010
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19972
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19978
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19961
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19967
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 2

    .prologue
    .line 19209
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TagListContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TagListContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19194
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 19928
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->memoizedSerializedSize:I

    .line 19929
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 19937
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 19931
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 19932
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 19933
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19932
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 19936
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->memoizedSerializedSize:I

    move v2, v1

    .line 19937
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public getTags(I)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 19893
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    return-object p0
.end method

.method public getTagsCount()I
    .registers 2

    .prologue
    .line 19890
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTagsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19883
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    return-object v0
.end method

.method public getTagsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntryOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 19897
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntryOrBuilder;

    return-object p0
.end method

.method public getTagsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19887
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 19905
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->memoizedIsInitialized:B

    .line 19906
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 19915
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 19906
    goto :goto_a

    .line 19908
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent;->getTagsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 19909
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TagListContent;->getTags(I)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 19910
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->memoizedIsInitialized:B

    move v2, v4

    .line 19911
    goto :goto_a

    .line 19908
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 19914
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->memoizedIsInitialized:B

    move v2, v3

    .line 19915
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 2

    .prologue
    .line 20015
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19194
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 2

    .prologue
    .line 20019
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$TagListContent;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19194
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

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
    .line 19944
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
    .line 19920
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent;->getSerializedSize()I

    .line 19921
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 19922
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19921
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 19924
    :cond_1d
    return-void
.end method
