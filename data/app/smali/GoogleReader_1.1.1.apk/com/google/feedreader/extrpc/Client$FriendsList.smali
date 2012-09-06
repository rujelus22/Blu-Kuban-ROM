.class public final Lcom/google/feedreader/extrpc/Client$FriendsList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$FriendsListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FriendsList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    }
.end annotation


# static fields
.field public static final ENCODEDSHARERSLIST_FIELD_NUMBER:I = 0x3

.field public static final FRIENDSFEEDSCOUNT_FIELD_NUMBER:I = 0x2

.field public static final FRIENDS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendsList;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private encodedSharersList_:Ljava/lang/Object;

.field private friendsFeedsCount_:I

.field private friends_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Friend;",
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
    .line 13472
    new-instance v0, Lcom/google/feedreader/extrpc/Client$FriendsList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$FriendsList;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$FriendsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendsList;

    .line 13473
    sget-object v0, Lcom/google/feedreader/extrpc/Client$FriendsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendsList;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->initFields()V

    .line 13474
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12965
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13047
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->memoizedIsInitialized:B

    .line 13076
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->memoizedSerializedSize:I

    .line 12966
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12960
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsList;-><init>(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12967
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13047
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->memoizedIsInitialized:B

    .line 13076
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->memoizedSerializedSize:I

    .line 12967
    return-void
.end method

.method static synthetic access$16200(Lcom/google/feedreader/extrpc/Client$FriendsList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12960
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16202(Lcom/google/feedreader/extrpc/Client$FriendsList;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12960
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$16302(Lcom/google/feedreader/extrpc/Client$FriendsList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12960
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friendsFeedsCount_:I

    return p1
.end method

.method static synthetic access$16402(Lcom/google/feedreader/extrpc/Client$FriendsList;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12960
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->encodedSharersList_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16502(Lcom/google/feedreader/extrpc/Client$FriendsList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12960
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 1

    .prologue
    .line 12971
    sget-object v0, Lcom/google/feedreader/extrpc/Client$FriendsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendsList;

    return-object v0
.end method

.method private getEncodedSharersListBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13031
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->encodedSharersList_:Ljava/lang/Object;

    .line 13032
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 13033
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13035
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->encodedSharersList_:Ljava/lang/Object;

    move-object v2, v0

    .line 13038
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
    .line 13043
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    .line 13044
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friendsFeedsCount_:I

    .line 13045
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->encodedSharersList_:Ljava/lang/Object;

    .line 13046
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 1

    .prologue
    .line 13172
    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->create()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$16000()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13175
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13141
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    .line 13142
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 13143
    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v1

    .line 13145
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13152
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    .line 13153
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 13154
    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v1

    .line 13156
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13108
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13114
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13162
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13168
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13130
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13136
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13119
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13125
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 2

    .prologue
    .line 12975
    sget-object v0, Lcom/google/feedreader/extrpc/Client$FriendsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$FriendsList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12960
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSharersList()Ljava/lang/String;
    .registers 6

    .prologue
    .line 13017
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->encodedSharersList_:Ljava/lang/Object;

    .line 13018
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 13019
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 13027
    :goto_9
    return-object v4

    .line 13021
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 13023
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 13024
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 13025
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->encodedSharersList_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 13027
    goto :goto_9
.end method

.method public getFriends(I)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 3
    .parameter "index"

    .prologue
    .line 12993
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend;

    return-object p0
.end method

.method public getFriendsCount()I
    .registers 2

    .prologue
    .line 12990
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFriendsFeedsCount()I
    .registers 2

    .prologue
    .line 13007
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friendsFeedsCount_:I

    return v0
.end method

.method public getFriendsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12983
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    return-object v0
.end method

.method public getFriendsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$FriendOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 12997
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendOrBuilder;

    return-object p0
.end method

.method public getFriendsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$FriendOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12987
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 13078
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->memoizedSerializedSize:I

    .line 13079
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 13095
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 13081
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 13082
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 13083
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13082
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 13086
    :cond_23
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_30

    .line 13087
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friendsFeedsCount_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 13090
    :cond_30
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_40

    .line 13091
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getEncodedSharersListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13094
    :cond_40
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->memoizedSerializedSize:I

    move v2, v1

    .line 13095
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public hasEncodedSharersList()Z
    .registers 3

    .prologue
    .line 13014
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->bitField0_:I

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

.method public hasFriendsFeedsCount()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 13004
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->bitField0_:I

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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 13049
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->memoizedIsInitialized:B

    .line 13050
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 13059
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 13050
    goto :goto_a

    .line 13052
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getFriendsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 13053
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getFriends(I)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Friend;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 13054
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->memoizedIsInitialized:B

    move v2, v4

    .line 13055
    goto :goto_a

    .line 13052
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 13058
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->memoizedIsInitialized:B

    move v2, v3

    .line 13059
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 2

    .prologue
    .line 13173
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12960
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 2

    .prologue
    .line 13177
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->newBuilder(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12960
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->toBuilder()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

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
    .line 13102
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13064
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getSerializedSize()I

    .line 13065
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 13066
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13065
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 13068
    :cond_1e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_29

    .line 13069
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->friendsFeedsCount_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13071
    :cond_29
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_37

    .line 13072
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getEncodedSharersListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13074
    :cond_37
    return-void
.end method
