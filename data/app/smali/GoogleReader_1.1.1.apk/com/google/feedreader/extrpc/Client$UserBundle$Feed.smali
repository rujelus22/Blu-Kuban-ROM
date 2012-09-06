.class public final Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UserBundle$FeedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$UserBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Feed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8344
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    .line 8345
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->initFields()V

    .line 8346
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7937
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8019
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->memoizedIsInitialized:B

    .line 8047
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->memoizedSerializedSize:I

    .line 7938
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7932
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;-><init>(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7939
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8019
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->memoizedIsInitialized:B

    .line 8047
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->memoizedSerializedSize:I

    .line 7939
    return-void
.end method

.method static synthetic access$10002(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7932
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10102(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7932
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->bitField0_:I

    return p1
.end method

.method static synthetic access$9902(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7932
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 1

    .prologue
    .line 7943
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 7972
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->id_:Ljava/lang/Object;

    .line 7973
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 7974
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7976
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 7979
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

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8004
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->title_:Ljava/lang/Object;

    .line 8005
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 8006
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8008
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 8011
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
    .line 8016
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->id_:Ljava/lang/Object;

    .line 8017
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->title_:Ljava/lang/Object;

    .line 8018
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 1

    .prologue
    .line 8139
    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9700()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8142
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8108
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    .line 8109
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8110
    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v1

    .line 8112
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8119
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    .line 8120
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8121
    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v1

    .line 8123
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8075
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8081
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8129
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8135
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8097
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8103
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8086
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8092
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 2

    .prologue
    .line 7947
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7932
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 7958
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->id_:Ljava/lang/Object;

    .line 7959
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 7960
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 7968
    :goto_9
    return-object v4

    .line 7962
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 7964
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 7965
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7966
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 7968
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8049
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->memoizedSerializedSize:I

    .line 8050
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 8062
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 8052
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 8053
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 8054
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8057
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 8058
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8061
    :cond_28
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->memoizedSerializedSize:I

    move v1, v0

    .line 8062
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 7990
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->title_:Ljava/lang/Object;

    .line 7991
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 7992
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 8000
    :goto_9
    return-object v4

    .line 7994
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 7996
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 7997
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7998
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 8000
    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 7955
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 7987
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8021
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->memoizedIsInitialized:B

    .line 8022
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 8033
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 8022
    goto :goto_a

    .line 8024
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 8025
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->memoizedIsInitialized:B

    move v1, v2

    .line 8026
    goto :goto_a

    .line 8028
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->hasTitle()Z

    move-result v1

    if-nez v1, :cond_21

    .line 8029
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->memoizedIsInitialized:B

    move v1, v2

    .line 8030
    goto :goto_a

    .line 8032
    :cond_21
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->memoizedIsInitialized:B

    move v1, v3

    .line 8033
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 2

    .prologue
    .line 8140
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7932
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 2

    .prologue
    .line 8144
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7932
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->toBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

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
    .line 8069
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8038
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getSerializedSize()I

    .line 8039
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 8040
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8042
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 8043
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8045
    :cond_1f
    return-void
.end method
