.class public final Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamPrefsEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    }
.end annotation


# static fields
.field public static final PREFS_FIELD_NUMBER:I = 0x2

.field public static final STREAMID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private prefs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;"
        }
    .end annotation
.end field

.field private streamid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17621
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    .line 17622
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->initFields()V

    .line 17623
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 17159
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17230
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->memoizedIsInitialized:B

    .line 17260
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->memoizedSerializedSize:I

    .line 17160
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17154
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;-><init>(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 17161
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17230
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->memoizedIsInitialized:B

    .line 17260
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->memoizedSerializedSize:I

    .line 17161
    return-void
.end method

.method static synthetic access$21602(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17154
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->streamid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21700(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17154
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$21702(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17154
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21802(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17154
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 1

    .prologue
    .line 17165
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    return-object v0
.end method

.method private getStreamidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17194
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->streamid_:Ljava/lang/Object;

    .line 17195
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 17196
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17198
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->streamid_:Ljava/lang/Object;

    move-object v2, v0

    .line 17201
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
    .line 17227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->streamid_:Ljava/lang/Object;

    .line 17228
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    .line 17229
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 1

    .prologue
    .line 17352
    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21400()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 17355
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17321
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    .line 17322
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 17323
    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v1

    .line 17325
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17332
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    .line 17333
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 17334
    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v1

    .line 17336
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17288
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17294
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17342
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17348
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17310
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17316
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17299
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17305
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 2

    .prologue
    .line 17169
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17154
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public getPrefs(I)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3
    .parameter "index"

    .prologue
    .line 17219
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair;

    return-object p0
.end method

.method public getPrefsCount()I
    .registers 2

    .prologue
    .line 17216
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrefsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17209
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    return-object v0
.end method

.method public getPrefsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$PrefPairOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 17223
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPairOrBuilder;

    return-object p0
.end method

.method public getPrefsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$PrefPairOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17213
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 17262
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->memoizedSerializedSize:I

    .line 17263
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 17275
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 17265
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 17266
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 17267
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getStreamidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 17270
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 17271
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 17270
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 17274
    :cond_32
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->memoizedSerializedSize:I

    move v2, v1

    .line 17275
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getStreamid()Ljava/lang/String;
    .registers 6

    .prologue
    .line 17180
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->streamid_:Ljava/lang/Object;

    .line 17181
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 17182
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 17190
    :goto_9
    return-object v4

    .line 17184
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 17186
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 17187
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 17188
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->streamid_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 17190
    goto :goto_9
.end method

.method public hasStreamid()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 17177
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->bitField0_:I

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

    .line 17232
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->memoizedIsInitialized:B

    .line 17233
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 17246
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 17233
    goto :goto_a

    .line 17235
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->hasStreamid()Z

    move-result v2

    if-nez v2, :cond_17

    .line 17236
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->memoizedIsInitialized:B

    move v2, v3

    .line 17237
    goto :goto_a

    .line 17239
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getPrefsCount()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 17240
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getPrefs(I)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$PrefPair;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 17241
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->memoizedIsInitialized:B

    move v2, v3

    .line 17242
    goto :goto_a

    .line 17239
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 17245
    :cond_2f
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->memoizedIsInitialized:B

    move v2, v4

    .line 17246
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 2

    .prologue
    .line 17353
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17154
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 2

    .prologue
    .line 17357
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17154
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->toBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

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
    .line 17282
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

    .line 17251
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getSerializedSize()I

    .line 17252
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 17253
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getStreamidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17255
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 17256
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17255
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 17258
    :cond_2b
    return-void
.end method
