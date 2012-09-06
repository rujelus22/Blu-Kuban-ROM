.class public final Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamItemsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamItemsContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;,
        Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;,
        Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRefOrBuilder;
    }
.end annotation


# static fields
.field public static final ITEMREFS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

.field private static final serialVersionUID:J


# instance fields
.field private itemRefs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;",
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
    .line 24826
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    .line 24827
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->initFields()V

    .line 24828
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23818
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24502
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->memoizedIsInitialized:B

    .line 24525
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->memoizedSerializedSize:I

    .line 23819
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23813
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;-><init>(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23820
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24502
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->memoizedIsInitialized:B

    .line 24525
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->memoizedSerializedSize:I

    .line 23820
    return-void
.end method

.method static synthetic access$30800(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23813
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$30802(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23813
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 1

    .prologue
    .line 23824
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 24500
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    .line 24501
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 1

    .prologue
    .line 24613
    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30600()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 24616
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24582
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    .line 24583
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 24584
    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v1

    .line 24586
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24593
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    .line 24594
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 24595
    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v1

    .line 24597
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24549
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24555
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24603
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24609
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24571
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24577
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24560
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24566
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 2

    .prologue
    .line 23828
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23813
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public getItemRefs(I)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 3
    .parameter "index"

    .prologue
    .line 24492
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    return-object p0
.end method

.method public getItemRefsCount()I
    .registers 2

    .prologue
    .line 24489
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemRefsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24482
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    return-object v0
.end method

.method public getItemRefsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRefOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 24496
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRefOrBuilder;

    return-object p0
.end method

.method public getItemRefsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRefOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24486
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 24527
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->memoizedSerializedSize:I

    .line 24528
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 24536
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 24530
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 24531
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 24532
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 24531
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 24535
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->memoizedSerializedSize:I

    move v2, v1

    .line 24536
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 24504
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->memoizedIsInitialized:B

    .line 24505
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 24514
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 24505
    goto :goto_a

    .line 24507
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->getItemRefsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 24508
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->getItemRefs(I)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 24509
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->memoizedIsInitialized:B

    move v2, v4

    .line 24510
    goto :goto_a

    .line 24507
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 24513
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->memoizedIsInitialized:B

    move v2, v3

    .line 24514
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 2

    .prologue
    .line 24614
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23813
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 2

    .prologue
    .line 24618
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23813
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

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
    .line 24543
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
    .line 24519
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->getSerializedSize()I

    .line 24520
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 24521
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 24520
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 24523
    :cond_1d
    return-void
.end method
