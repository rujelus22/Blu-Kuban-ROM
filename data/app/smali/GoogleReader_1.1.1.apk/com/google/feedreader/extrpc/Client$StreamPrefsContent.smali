.class public final Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamPrefsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamPrefsContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;,
        Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;,
        Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntryOrBuilder;
    }
.end annotation


# static fields
.field public static final STREAMPREFS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private streamprefs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17976
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    .line 17977
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->initFields()V

    .line 17978
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 17128
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17652
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->memoizedIsInitialized:B

    .line 17675
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->memoizedSerializedSize:I

    .line 17129
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17123
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;-><init>(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 17130
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17652
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->memoizedIsInitialized:B

    .line 17675
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->memoizedSerializedSize:I

    .line 17130
    return-void
.end method

.method static synthetic access$22200(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17123
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22202(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17123
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 1

    .prologue
    .line 17134
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 17650
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    .line 17651
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 1

    .prologue
    .line 17763
    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$22000()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 17766
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17732
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    .line 17733
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 17734
    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v1

    .line 17736
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17743
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    .line 17744
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 17745
    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v1

    .line 17747
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17699
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17705
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17753
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17759
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17721
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17727
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17710
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17716
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 2

    .prologue
    .line 17138
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17123
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 17677
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->memoizedSerializedSize:I

    .line 17678
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 17686
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 17680
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 17681
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 17682
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 17681
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 17685
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->memoizedSerializedSize:I

    move v2, v1

    .line 17686
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public getStreamprefs(I)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 17642
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    return-object p0
.end method

.method public getStreamprefsCount()I
    .registers 2

    .prologue
    .line 17639
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStreamprefsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17632
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    return-object v0
.end method

.method public getStreamprefsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntryOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 17646
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntryOrBuilder;

    return-object p0
.end method

.method public getStreamprefsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17636
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 17654
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->memoizedIsInitialized:B

    .line 17655
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 17664
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 17655
    goto :goto_a

    .line 17657
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getStreamprefsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 17658
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getStreamprefs(I)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 17659
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->memoizedIsInitialized:B

    move v2, v4

    .line 17660
    goto :goto_a

    .line 17657
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 17663
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->memoizedIsInitialized:B

    move v2, v3

    .line 17664
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 2

    .prologue
    .line 17764
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17123
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 2

    .prologue
    .line 17768
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17123
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

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
    .line 17693
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
    .line 17669
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getSerializedSize()I

    .line 17670
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 17671
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17670
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 17673
    :cond_1d
    return-void
.end method
