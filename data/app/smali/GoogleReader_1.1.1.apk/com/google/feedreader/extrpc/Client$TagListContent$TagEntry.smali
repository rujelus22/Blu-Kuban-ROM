.class public final Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$TagListContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final SHARED_FIELD_NUMBER:I = 0x3

.field public static final SORTID_FIELD_NUMBER:I = 0x5

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final UNREADCOUNT_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private shared_:Ljava/lang/Object;

.field private sortid_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private unreadCount_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19872
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    .line 19873
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->initFields()V

    .line 19874
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19240
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19399
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->memoizedIsInitialized:B

    .line 19432
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->memoizedSerializedSize:I

    .line 19241
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19235
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;-><init>(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19242
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19399
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->memoizedIsInitialized:B

    .line 19432
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->memoizedSerializedSize:I

    .line 19242
    return-void
.end method

.method static synthetic access$24002(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19235
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24102(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19235
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24202(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19235
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->shared_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24302(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19235
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->unreadCount_:I

    return p1
.end method

.method static synthetic access$24402(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19235
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->sortid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24502(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19235
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 1

    .prologue
    .line 19246
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19275
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->id_:Ljava/lang/Object;

    .line 19276
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 19277
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19279
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 19282
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

.method private getSharedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19339
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->shared_:Ljava/lang/Object;

    .line 19340
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 19341
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19343
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->shared_:Ljava/lang/Object;

    move-object v2, v0

    .line 19346
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

.method private getSortidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19381
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->sortid_:Ljava/lang/Object;

    .line 19382
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 19383
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19385
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->sortid_:Ljava/lang/Object;

    move-object v2, v0

    .line 19388
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
    .line 19307
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->title_:Ljava/lang/Object;

    .line 19308
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 19309
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19311
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 19314
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
    .line 19393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->id_:Ljava/lang/Object;

    .line 19394
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->title_:Ljava/lang/Object;

    .line 19395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->shared_:Ljava/lang/Object;

    .line 19396
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->unreadCount_:I

    .line 19397
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->sortid_:Ljava/lang/Object;

    .line 19398
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 1

    .prologue
    .line 19536
    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23800()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 19539
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19505
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    .line 19506
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 19507
    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v1

    .line 19509
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19516
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    .line 19517
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 19518
    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v1

    .line 19520
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19472
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19478
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19526
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19532
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19494
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19500
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19483
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19489
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 2

    .prologue
    .line 19250
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19235
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 19261
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->id_:Ljava/lang/Object;

    .line 19262
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 19263
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 19271
    :goto_9
    return-object v4

    .line 19265
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 19267
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 19268
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 19269
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 19271
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 19434
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->memoizedSerializedSize:I

    .line 19435
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 19459
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 19437
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 19438
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 19439
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19442
    :cond_1a
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 19443
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19446
    :cond_29
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 19447
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getSharedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19450
    :cond_39
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 19451
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->unreadCount_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 19454
    :cond_48
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 19455
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getSortidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19458
    :cond_5a
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->memoizedSerializedSize:I

    move v1, v0

    .line 19459
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getShared()Ljava/lang/String;
    .registers 6

    .prologue
    .line 19325
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->shared_:Ljava/lang/Object;

    .line 19326
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 19327
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 19335
    :goto_9
    return-object v4

    .line 19329
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 19331
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 19332
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 19333
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->shared_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 19335
    goto :goto_9
.end method

.method public getSortid()Ljava/lang/String;
    .registers 6

    .prologue
    .line 19367
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->sortid_:Ljava/lang/Object;

    .line 19368
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 19369
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 19377
    :goto_9
    return-object v4

    .line 19371
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 19373
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 19374
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 19375
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->sortid_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 19377
    goto :goto_9
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 19293
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->title_:Ljava/lang/Object;

    .line 19294
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 19295
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 19303
    :goto_9
    return-object v4

    .line 19297
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 19299
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 19300
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 19301
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 19303
    goto :goto_9
.end method

.method public getUnreadCount()I
    .registers 2

    .prologue
    .line 19357
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->unreadCount_:I

    return v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 19258
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasShared()Z
    .registers 3

    .prologue
    .line 19322
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

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

.method public hasSortid()Z
    .registers 3

    .prologue
    .line 19364
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 19290
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

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

.method public hasUnreadCount()Z
    .registers 3

    .prologue
    .line 19354
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 19401
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->memoizedIsInitialized:B

    .line 19402
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 19409
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 19402
    goto :goto_a

    .line 19404
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 19405
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->memoizedIsInitialized:B

    move v1, v3

    .line 19406
    goto :goto_a

    .line 19408
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->memoizedIsInitialized:B

    move v1, v2

    .line 19409
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 2

    .prologue
    .line 19537
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19235
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 2

    .prologue
    .line 19541
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19235
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->toBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

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
    .line 19466
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

    .line 19414
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getSerializedSize()I

    .line 19415
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 19416
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19418
    :cond_13
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 19419
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19421
    :cond_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 19422
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getSharedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19424
    :cond_2e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 19425
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->unreadCount_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 19427
    :cond_3b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 19428
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getSortidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19430
    :cond_4b
    return-void
.end method
