.class public final Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$FriendsFeedsListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FriendsFeedsList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    }
.end annotation


# static fields
.field public static final FRIENDSFEEDS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

.field private static final serialVersionUID:J


# instance fields
.field private friendsFeeds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$FriendFeeds;",
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
    .line 15754
    new-instance v0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    .line 15755
    sget-object v0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->initFields()V

    .line 15756
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15393
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15430
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->memoizedIsInitialized:B

    .line 15453
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->memoizedSerializedSize:I

    .line 15394
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15388
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;-><init>(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15395
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15430
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->memoizedIsInitialized:B

    .line 15453
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->memoizedSerializedSize:I

    .line 15395
    return-void
.end method

.method static synthetic access$19400(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15388
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19402(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15388
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 1

    .prologue
    .line 15399
    sget-object v0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 15428
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    .line 15429
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 1

    .prologue
    .line 15541
    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->create()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19200()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 15544
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15510
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    .line 15511
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 15512
    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v1

    .line 15514
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15521
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    .line 15522
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 15523
    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v1

    .line 15525
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15477
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15483
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15531
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15537
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15499
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15505
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15488
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15494
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 2

    .prologue
    .line 15403
    sget-object v0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15388
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsFeeds(I)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 3
    .parameter "index"

    .prologue
    .line 15420
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    return-object p0
.end method

.method public getFriendsFeedsCount()I
    .registers 2

    .prologue
    .line 15417
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFriendsFeedsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$FriendFeeds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15410
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    return-object v0
.end method

.method public getFriendsFeedsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$FriendFeedsOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 15424
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendFeedsOrBuilder;

    return-object p0
.end method

.method public getFriendsFeedsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$FriendFeedsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15414
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 15455
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->memoizedSerializedSize:I

    .line 15456
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 15464
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 15458
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 15459
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 15460
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15459
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 15463
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->memoizedSerializedSize:I

    move v2, v1

    .line 15464
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 15432
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->memoizedIsInitialized:B

    .line 15433
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 15442
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 15433
    goto :goto_a

    .line 15435
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->getFriendsFeedsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 15436
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->getFriendsFeeds(I)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 15437
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->memoizedIsInitialized:B

    move v2, v4

    .line 15438
    goto :goto_a

    .line 15435
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 15441
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->memoizedIsInitialized:B

    move v2, v3

    .line 15442
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 2

    .prologue
    .line 15542
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15388
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 2

    .prologue
    .line 15546
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->newBuilder(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15388
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->toBuilder()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

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
    .line 15471
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
    .line 15447
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->getSerializedSize()I

    .line 15448
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 15449
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15448
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 15451
    :cond_1d
    return-void
.end method
