.class public final Lcom/google/feedreader/extrpc/Client$FriendFeeds;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$FriendFeedsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FriendFeeds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    }
.end annotation


# static fields
.field public static final FEEDS_FIELD_NUMBER:I = 0x2

.field public static final FRIENDUSERID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendFeeds;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private feeds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Feed;",
            ">;"
        }
    .end annotation
.end field

.field private friendUserId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15372
    new-instance v0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    .line 15373
    sget-object v0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->initFields()V

    .line 15374
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14910
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14981
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->memoizedIsInitialized:B

    .line 15011
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->memoizedSerializedSize:I

    .line 14911
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14905
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;-><init>(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14912
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14981
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->memoizedIsInitialized:B

    .line 15011
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->memoizedSerializedSize:I

    .line 14912
    return-void
.end method

.method static synthetic access$18802(Lcom/google/feedreader/extrpc/Client$FriendFeeds;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14905
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->friendUserId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18900(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14905
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18902(Lcom/google/feedreader/extrpc/Client$FriendFeeds;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14905
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19002(Lcom/google/feedreader/extrpc/Client$FriendFeeds;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14905
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 1

    .prologue
    .line 14916
    sget-object v0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    return-object v0
.end method

.method private getFriendUserIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14945
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->friendUserId_:Ljava/lang/Object;

    .line 14946
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 14947
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14949
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->friendUserId_:Ljava/lang/Object;

    move-object v2, v0

    .line 14952
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
    .line 14978
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->friendUserId_:Ljava/lang/Object;

    .line 14979
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    .line 14980
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 1

    .prologue
    .line 15103
    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->create()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18600()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 15106
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15072
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    .line 15073
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 15074
    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v1

    .line 15076
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15083
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    .line 15084
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 15085
    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v1

    .line 15087
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15039
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15045
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15093
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15099
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15061
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15067
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15050
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15056
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 2

    .prologue
    .line 14920
    sget-object v0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14905
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public getFeeds(I)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 3
    .parameter "index"

    .prologue
    .line 14970
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Feed;

    return-object p0
.end method

.method public getFeedsCount()I
    .registers 2

    .prologue
    .line 14967
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFeedsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Feed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14960
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    return-object v0
.end method

.method public getFeedsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$FeedOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 14974
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FeedOrBuilder;

    return-object p0
.end method

.method public getFeedsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$FeedOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14964
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    return-object v0
.end method

.method public getFriendUserId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 14931
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->friendUserId_:Ljava/lang/Object;

    .line 14932
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 14933
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 14941
    :goto_9
    return-object v4

    .line 14935
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 14937
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 14938
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 14939
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->friendUserId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 14941
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 15013
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->memoizedSerializedSize:I

    .line 15014
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 15026
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 15016
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 15017
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 15018
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getFriendUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15021
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 15022
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15021
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 15025
    :cond_32
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->memoizedSerializedSize:I

    move v2, v1

    .line 15026
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasFriendUserId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 14928
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

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

    .line 14983
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->memoizedIsInitialized:B

    .line 14984
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 14997
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 14984
    goto :goto_a

    .line 14986
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->hasFriendUserId()Z

    move-result v2

    if-nez v2, :cond_17

    .line 14987
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->memoizedIsInitialized:B

    move v2, v3

    .line 14988
    goto :goto_a

    .line 14990
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getFeedsCount()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 14991
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getFeeds(I)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Feed;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 14992
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->memoizedIsInitialized:B

    move v2, v3

    .line 14993
    goto :goto_a

    .line 14990
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 14996
    :cond_2f
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->memoizedIsInitialized:B

    move v2, v4

    .line 14997
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 2

    .prologue
    .line 15104
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14905
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 2

    .prologue
    .line 15108
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14905
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->toBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

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
    .line 15033
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
    const/4 v1, 0x1

    .line 15002
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getSerializedSize()I

    .line 15003
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 15004
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getFriendUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15006
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 15007
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15006
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 15009
    :cond_2b
    return-void
.end method
